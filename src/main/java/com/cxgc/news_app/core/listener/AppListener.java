package com.cxgc.news_app.core.listener;

import com.cxgc.news_app.utility.DBUtil;
import com.cxgc.news_app.utility.idutil.UtilY;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author 上官炳强
 * @since 2018-03-31 / 03:30:44
 * @version 1.0
 *  <h5>
 * 用来统计应用程序请求的访问情况的简单的侦听器。通过 web.xml 设定的参数：{@code delay}
 * (侦听器启动后统计任务定时器执行的延迟时间) 和 {@code period} (任务定时器的执行周期)，
 * 记录下设定好的周期内的访问数量最多、最低的请求地址及其次数，并通过JDBC保存到数据库
 * </h5>
 */
@Slf4j
public class AppListener implements ServletRequestListener, ServletContextListener {

    @SuppressWarnings("Unckecked")
    private static final ConcurrentHashMap<String, Long> COUNT = new ConcurrentHashMap(200);
    private static final Map<String, Object> TEMP_INFO_CONTAINER = new HashMap<>();
    private static java.util.Date lastExecutorTime = null;
    private static String contextLogPath;
    private static Long delay;
    private static Long dbSendPeriod;
    private static String periodStr;

    private Long stringArray2Long(String[] param) {
        Long result = 1L;
        for (int i = 0; i < param.length; i++) {
            result *= Long.parseLong(param[i]);
        }
        return result;
    }

    private boolean checkValid(Long aLong) {
        return aLong > 0;
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        /* 获取应用上下文相关信息及参数**/
        ServletContext servletContext = servletContextEvent.getServletContext();
        String dbSendPeriodStr = servletContext.getInitParameter("period");
        String delayParam = servletContext.getInitParameter("delay");

        /* Web容器初始化参数验证以及转换 **/
        if (dbSendPeriodStr == null || delayParam == null) {
            NullPointerException exception = new NullPointerException("应用程序数据统计侦听器初始化异常 : delay 或 period 参数不能为空");
            log.error(exception.getMessage());
            throw exception;
        }
        String[] splitTime = dbSendPeriodStr.split("[*]");
        String[] delayTime = delayParam.split("[*]");
        Long period = 0L;
        Long delays = 0L;
        if (splitTime.length > 1) {
            period = stringArray2Long(splitTime);
        } else {
            period = parthString2Long(dbSendPeriodStr);
        }
        if (!checkValid(period)) {
            NullPointerException exception = new NullPointerException("应用程序数据统计侦听器初始化异常 : period = " + period);
            log.error(exception.getMessage());
            throw exception;
        }

        if (delayTime.length > 1) {
            delays = stringArray2Long(delayTime);
        } else {
            delays = parthString2Long(delayParam);
        }
        if (!checkValid(delays)) {
            NullPointerException exception = new NullPointerException("应用程序数据统计侦听器初始化异常 : delay = " + delays);
            log.error(exception.getMessage());
            throw exception;
        }

        /* 赋值给类变量 **/
        dbSendPeriod = period;
        periodStr = dbSendPeriod > 0 && dbSendPeriod <= 1000 * 60 ?
                "minutes" : (dbSendPeriod > 1000 * 60 && dbSendPeriod <= 1000 * 60 * 60 ?
                "hour" : (dbSendPeriod > 1000 * 60 * 60 && dbSendPeriod <= 1000 * 60 * 60 * 24 ?
                "day" : (dbSendPeriod > 1000 * 60 * 60 * 24 && dbSendPeriod <= 1000 * 60 * 60 * 24 * 7 ?
                "week" : (dbSendPeriod > 1000 * 60 * 60 * 24 * 7 && dbSendPeriod <= 1000 * 60 * 60 * 24 * 30 ?
                "month" : (dbSendPeriod > 1000 * 60 * 60 * 24 * 30 && dbSendPeriod <= 1000 * 60 * 60 * 24 * 30 * 3 ?
                "quarter" : "year")))));
        delay = delays;
        contextLogPath = servletContext.getContextPath();
        log.info("AppListener初始化完成,延迟{}秒后执行，任务周期:{}秒/次", delay / 1000, dbSendPeriod / 1000);
        timerTask();
    }

    private static Long parthString2Long(String target){
        Long result;
        try {
            result = Long.parseLong(target);
        } catch (Exception e) {
            log.error("应用程序数据统计侦听器初始化异常 : {}",target);
            throw new RuntimeException("应用程序数据统计侦听器初始化异常 : delay = " + target);
        }
        return result;
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        Map<String, Object> periodInfo = getPeriodInfo();
        save2DB(
                (String) periodInfo.get("highestURL")
                , (String) periodInfo.get("lowestURL")
                , (String) periodInfo.get("period")
                , (Long) periodInfo.get("highestCount")
                , (Long) periodInfo.get("lowestCount")
                , (Long) periodInfo.get("totalCount")
        );
        log.info("应用程序关闭，统计任务结束...");
    }

    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {
    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        HttpServletRequest request =
                (HttpServletRequest) servletRequestEvent.getServletRequest();
        String requestURI = request.getRequestURI();

        if (!requestURI.startsWith(contextLogPath + "/static")) {
            if (COUNT.get(requestURI) != null) {
                COUNT.put(requestURI, COUNT.get(requestURI) + 1);
            } else {
                COUNT.put(requestURI, 1L);
            }
        }
    }

    private static void timerTask() {
        //创建任务定时器
        Timer timer = new Timer();

        //开始任务
        timer.schedule(new TimerTask() {

            @Override
            public void run() {
                log.info("*****开始执行应用程序数据统计定时器*****");
                /* 统计出上次任务执行到现在时刻的数据 **/
                Map<String, Object> periodInfo = getPeriodInfo();
                String period = (String) periodInfo.get("period");
                String highestURL = (String) periodInfo.get("highestURL");
                String lowestURL = (String) periodInfo.get("lowestURL");
                Long highestCount = (Long) periodInfo.get("highestCount");
                Long lowestCount = (Long) periodInfo.get("lowestCount");
                Long totalCount = (Long) periodInfo.get("totalCount");

                /* 打印日志**/
                log.info("上次执行时间：{}，\n当前时间：{}。 \n{} 周期 访问次数最高的地址:{}, " +
                                "次数：{}；\n访问次数最低的地址：{}，次数：{}；\n周期总访问量：{}"
                        , lastExecutorTime != null ?
                                new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(lastExecutorTime)
                                : lastExecutorTime
                        , new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new java.util.Date())
                        , period, highestURL, highestCount, lowestURL,
                        lowestURL == null ? lowestCount = 0L : lowestCount,
                        totalCount);
                lastExecutorTime = new java.util.Date();

                /* 存入数据库**/
                save2DB(highestURL, lowestURL, period, highestCount, lowestCount, totalCount);

                /* 存入本地log文件**/
                //:TODO 存还是不存？不用了！
                /* 清除容器缓存**/
                for (Map.Entry<String, Long> e : COUNT.entrySet()) {
                    COUNT.remove(e.getKey());
                }
            }
        }, /*延迟 0 毫秒后开始执行*/delay, dbSendPeriod/* SEND PERIOD */);
    }

    private static void save2DB(String highestURL, String lowestURL, String period, Long highestCount, Long lowestCount,
                                Long totalCount) {
        Connection conn = DBUtil.getInstance().getConn();
        PreparedStatement ps = null;
        String dataSql =
                        "INSERT INTO app_data_count " +
                        "(id,highest_url,lowest_url," +
                        "period,highest_count" +
                        ",lowest_count,total_count,create_time)" +
                        "VALUES (?,?,?,?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(dataSql);
            ps.setString(1, UtilY.getId());
            ps.setString(2, highestURL);
            ps.setString(3, lowestURL);
            ps.setString(4, period);
            ps.setLong(5, highestCount);
            ps.setLong(6, lowestCount);
            ps.setLong(7, totalCount);
            ps.setTimestamp(8, new Timestamp(new java.util.Date().getTime()));
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeSourse(conn, ps, null);
        }
    }


    private static Map<String, Object> getPeriodInfo() {
        Long totalCount = 0L; //总访问量
        Long highestCount = 0L;//最高访问量
        Long lowestCount = 100L;//最低访问量
        String highestURL = null;//访问最多的URL
        String lowestURL = null;//访问最低的URL

                /* 遍历容器拿到数据**/
        for (Map.Entry<String, Long> e : COUNT.entrySet()) {

                    /* 最高相关**/
            if (highestCount < e.getValue()) {
                highestCount = e.getValue();
                highestURL = e.getKey();
            }

                    /* 最低相关**/
            if (lowestCount > e.getValue()) {
                lowestCount = e.getValue();
                lowestURL = e.getKey();
            }

                    /* 总量**/
            totalCount += e.getValue();

        }
        TEMP_INFO_CONTAINER.put("highestCount", highestCount);
        TEMP_INFO_CONTAINER.put("lowestCount", lowestCount);
        TEMP_INFO_CONTAINER.put("highestURL", highestURL);
        TEMP_INFO_CONTAINER.put("lowestURL", lowestURL);
        TEMP_INFO_CONTAINER.put("totalCount", totalCount);
        TEMP_INFO_CONTAINER.put("period", periodStr);
        return TEMP_INFO_CONTAINER;
    }

}

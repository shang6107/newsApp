package com.cxgc.news_app.core.mapper.commons_mapper;

import com.cxgc.news_app.core.listener.AppListener;

import java.util.List;
import java.util.Map;

/**
 * @author 上官炳强
 * @version 1.0
 * @see AppListener
 * @since 2018-03-31 / 09:02:18
 *
 *      应用程序数据的统计dao。主要利用sql的分组函数，借助时间字段，对 app_data_count 表中的数据记录做周期性统计
 *   统计内容包括周期内的：访问次数最高、最低的URL及次数等信息。详情可以参见
 *   {@link AppListener} 监听器。
 * </h5>
 */
public interface AppDao {
    List<Map<String, Object>> getHourTop10();//小时前十

    List<Map<String, Object>> getDailyTop10();//日榜前十

    List<Map<String, Object>> getWeekTop10(); //周榜前十

    List<Map<String, Object>> getMonthTop10();//月榜前十
}

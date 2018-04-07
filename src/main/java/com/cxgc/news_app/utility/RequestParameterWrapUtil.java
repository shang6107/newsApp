package com.cxgc.news_app.utility;

import com.cxgc.news_app.common.WorkType;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.User;
import com.github.pagehelper.PageInfo;

import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 上官炳强
 * @Date 2018-03-30 / 02:07:31
 * @Version
 * @Description
 */
public class RequestParameterWrapUtil {

    private static final String _Page_CODE = "code";
    private static final String _Page_LIMIT = "limit";
    private static final String _Page_MSG = "msg";
    private static final String _Page_COUNT = "count";
    private static final String _Page_DATA = "data";

    private static final String PERIOD_WEEK = "week";
    private static final String PERIOD_TODAY = "today";
    private static final String PERIOD_YESTERDAY = "yesterday";
    private static final String PERIOD_MONTH = "month";
    private static final String PERIOD_TOTAL = "total";

    public static Map<String, Object> $(Object result) throws ParseException, IllegalAccessException {
        Map<String, Object> map = new HashMap<>();
        map.put(_Page_MSG, "");
        map.put(_Page_CODE, 0);
        map.put(_Page_DATA, "无");
        if (result instanceof List) {
            map.put(_Page_DATA, result);
            transferNullValue2ParamValue((List<?>) result);
        } else if (result instanceof PageInfo) {
            transferNullValue2ParamValue(((PageInfo) result).getList());
            map.put(_Page_DATA, ((PageInfo) result).getList());
            map.put(_Page_LIMIT, 10);
            map.put(_Page_COUNT, ((PageInfo) result).getTotal());
        } else if (result instanceof Enum[]){
            if(result instanceof WorkType[]) {
                List<Map<String,Object>> list = new ArrayList<>();
                for(WorkType workType : (WorkType[]) result){
                    Map<String,Object> kv = new HashMap<>();
                    kv.put("name",workType.getName());
                    kv.put("workDetails",workType.getWorkDetails());
                    kv.put("no",workType.getNo());
                    list.add(kv);
                }
                map.put(_Page_DATA,list);
            }
        } else if (result != null && (result instanceof User || result instanceof News)) {
            map.put(_Page_DATA, result);
        } else if (result instanceof Map){
            map.put(_Page_DATA,result);
        }
        return map;
    }

    public static void transferNullValue2ParamValue(List<?> list) throws IllegalAccessException, ParseException {
        for (Object o : list) {
            Field[] fields = o.getClass().getDeclaredFields();
            for (Field field : fields) {
                field.setAccessible(true);
                if (field.get(o) == null) {
                    if (field.getType().equals(Integer.class)) {
                        field.set(o, 0);
                    } else if (field.getType().equals(String.class)) {
                        field.set(o, "无");
                    } else if (field.getType().equals(Date.class)) {
                        field.set(o, new SimpleDateFormat("yyyy-MM-dd").parse("2000-01-01"));
                    }
                }
            }
        }
    }




}

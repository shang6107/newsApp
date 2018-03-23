package com.cxgc.news_app.utility.idutil;

import java.util.UUID;

/**
 * ID 生成工具类
 */
public class IdUtil {
    /**
     * 生成ID
     * @return
     */
    public static String getId(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }
}

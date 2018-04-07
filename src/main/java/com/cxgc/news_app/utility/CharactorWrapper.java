package com.cxgc.news_app.utility;

import com.sun.org.apache.regexp.internal.RE;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 上官炳强
 * @description
 * @since 2018-04-07 / 11:17:06
 */
public class CharactorWrapper {

    private static String wrapCharactor(String s) {
        try {
            return new String(s.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    @SuppressWarnings("UnChecked")
    public static <T> T wrap(T t) {
        Object result = null;
        if (t instanceof List) {
            result = new ArrayList<String>();
            for (String str : (ArrayList<String>) t) {
                ((ArrayList<String>) result).add(wrapCharactor(str));
            }
            return (T) result;
        } else if (t instanceof String[]) {
            result = new String[((String[]) t).length];
            for (int i = 0; i < ((String[]) t).length; i++) {
                ((String[]) result)[i] = wrapCharactor(((String[]) t)[i]);
            }
            return (T) result;
        } else if (t instanceof Map) {
            for (Map.Entry<String, Object> e : ((Map<String, Object>) t).entrySet()) {
                if (e.getValue() instanceof String)
                    ((Map<String, Object>) t).put(e.getKey(), wrapCharactor((String) e.getValue()));
            }
            return t;
        }
        return null;
    }

}

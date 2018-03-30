package com.cxgc.news_app.utility.idutil;

import java.security.MessageDigest;
import java.util.UUID;

/**
 * ID 生成工具类
 */
public class UtilY {
    /**
     * 生成ID
     * @return
     */
    public static String getId(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }

    public static String MD5(String s) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] bytes = md.digest(s.getBytes("utf-8"));
            return toHex(bytes);
        }
        catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String toHex(byte[] bytes) {

        final char[] HEX_DIGITS = "0123456789ABCDEF".toCharArray();
        StringBuilder ret = new StringBuilder(bytes.length * 2);
        for (int i=0; i<bytes.length; i++) {
            ret.append(HEX_DIGITS[(bytes[i] >> 4) & 0x0f]);
            ret.append(HEX_DIGITS[bytes[i] & 0x0f]);
        }
        return ret.toString();
    }

}

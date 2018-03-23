package com.cxgc.news_app.utility.news;

import java.io.*;

/**
 * Created by jiang_hai on 2018/3/23.
 */
public class NewsIO {
    public static StringBuffer getStringFromFile(String url) throws IOException {
        File file=new File(url);
        StringBuffer stringBuffer=new StringBuffer();
        InputStream is=new FileInputStream(file);
        int len;
        byte[] b=new byte[1024];
        while((len=is.read(b))!=-1){
            stringBuffer.append(b.toString());
        }
        System.out.println("stringBuffer = " + stringBuffer);
        return stringBuffer;
    }
}

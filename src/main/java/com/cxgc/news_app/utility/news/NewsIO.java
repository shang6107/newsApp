package com.cxgc.news_app.utility.news;

import java.io.*;

/**
 * Created by jiang_hai on 2018/3/23.
 */
public class NewsIO {
    public static StringBuffer getStringFromFile(String url) throws IOException {
        File file=new File(url);
        StringBuffer stringBuffer=new StringBuffer();
        InputStreamReader is=new InputStreamReader(new FileInputStream(file),"GBK");
        BufferedReader br=new BufferedReader(is);
        String txtStr=null;
        while((txtStr=br.readLine())!=null){
            stringBuffer.append(txtStr);
        }
        return stringBuffer;
    }
}

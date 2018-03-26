package com.cxgc.news_app.utility.news;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.UUID;

/**
 * @author 徐瑜壮
 * @Date 2018-03-22 / 04:46:28
 * @Version
 * @Description
 */
public class NewsSpider {

    public static void main(String[] args) throws IOException {

        /*NewsSpider n = new NewsSpider();
        n.spider();*/
    }
    public String spider() throws IOException {

        URL url = new URL("http://v.juhe.cn/toutiao/index?type=top&key=b80b36a447829d713b84369e8d76b0ef");

        URLConnection urlConnection = url.openConnection();

        InputStream inputStream = urlConnection.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("utf-8")));

        StringBuffer sb = new StringBuffer();
        String l;

        while ((l=br.readLine())!=null){
            sb.append(l);
        }
        System.out.println(sb.toString());
        return null;
    }
}

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

        /*urlConnection.setRequestProperty("Content-Type","application/json");*/
        InputStream inputStream = urlConnection.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("utf-8")));

        StringBuffer sb = new StringBuffer();
        String l = null;

        while ((l=br.readLine())!=null){
            sb.append(l);
        }
        System.out.println(sb.toString());
        return null;
    }

   /* private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
        }
        return sb.toString();
    }

    public static JSONObject getRequestFromUrl(String url) throws IOException, JSONException {
        URL realUrl = new URL(url);
        URLConnection conn = realUrl.openConnection();
        conn.setRequestProperty("Content-type", "application/json");
        InputStream instream = conn.getInputStream();
        try {
            BufferedReader rd = new BufferedReader(new InputStreamReader(instream, Charset.forName("UTF-8")));
            String jsonText = readAll(rd);
            System.out.println(jsonText);
            JSONObject json = new JSONObject();
            json.getJSONObject(jsonText);
            return json;
        } finally {
            instream.close();
        }
    }
    public static void main(String[] args) throws IOException, JSONException {

// 请求示例 url 默认请求参数已经做URL编码
        String url = "http://120.76.205.241:8000/news/cctvplus?catid=10121&apikey=nsnWYSTqcyapnggHrpwHIhhmKtg2Z2nK4ZggjXHiWjWTiFPZyLGDeg7SjvOQAXps";

        JSONObject json = getRequestFromUrl(url);
        System.out.println(json.toString());
    }*/
}

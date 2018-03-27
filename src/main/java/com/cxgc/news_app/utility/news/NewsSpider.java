package com.cxgc.news_app.utility.news;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 徐瑜壮
 * @Date 2018-03-22 / 04:46:28
 * @Version
 * @Description
 */

public class NewsSpider{


    private static Map<Integer,String> newsApi = new HashMap<>();
    private static JSONArray objects;
    static {
        //1、科技
        newsApi.put(1,"http://120.76.205.241:8000/news/baijia?catid=1&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //2、娱乐
        newsApi.put(2,"http://120.76.205.241:8000/news/baijia?catid=2&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //3、财经
        newsApi.put(3,"http://120.76.205.241:8000/news/baijia?catid=3&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //4、文化
        newsApi.put(4,"http://120.76.205.241:8000/news/baijia?catid=5&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //、5体育
        newsApi.put(5,"http://120.76.205.241:8000/post/qqsport?baid=69&apikey=qZE91UwJqCivYsK6cJu1xpQMmi4QYbhJRJa1tf3erp8U7Tk3ydUyWIkIxct0J6Wq");

    }

    public static void main(String[] args) throws IOException {

        /*NewsSpider n = new NewsSpider();
        n.spider();*/

        //System.out.println(newsDate());
        responseAppIndex(1);
    }



    public static void spider(Integer apiNo) throws IOException {

        URL url = new URL(newsApi.get(apiNo));
        URLConnection urlConnection = url.openConnection();

        InputStream inputStream = urlConnection.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("utf-8")));
        StringBuffer sb = new StringBuffer();
        String l;
        while ((l=br.readLine())!=null){
            sb.append(l);
        }
        JSONObject jsonObject = JSON.parseObject(sb.toString());
        Object data = jsonObject.get("data");
        objects = JSON.parseArray(data.toString());
    }

    public static  List<News> responseAppIndex(Integer type) throws IOException {

        String path = newsPath(type);
        List<News> newsList = newsList(type);
        Thread t = new NewsSave(objects,type,path);
        t.start();
        return newsList;
    }
    //响应给前台的新闻集合
    public static List<News> newsList(Integer type) throws IOException {
        List<News> newsList = new ArrayList<>();
        News newsInstance = new News();
        JSONObject news;
        synchronized (objects){
            for (int i=0;i<objects.size();i++){
                news = objects.getJSONObject(i);
                newsInstance.setTitle(news.getString("title"));
                newsInstance.setId(news.getString("id"));
                /*newsInstance.setAuthor(news.getString("posterScreenName"));*/
                /*newsInstance.setCreateTime(news.getString("publishDateStr").replace("T"," "));*/
                newsList.add(newsInstance);
            }
        }
        return newsList;
    }


    //保存新闻到本地
    public static void newsSave(String content,Object id,Integer apiNo) throws IOException {

        File news = new File(newsPath(apiNo)+"\\"+id);
        FileWriter fw = new FileWriter(news);
        BufferedWriter bfw = new BufferedWriter(fw);
        bfw.write(content);
        bfw.close();
        fw.close();
    }

    public static String  newsDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        Date d = new Date();
        String format = dateFormat.format(d);
        return format;
    }

    public static String newsPath(Integer type){
        File path = new File("D:\\news\\"+newsDate()+"\\"+type);
        if (!path.exists()){
            path.mkdirs();
        }
        return path.getPath();
    }
}

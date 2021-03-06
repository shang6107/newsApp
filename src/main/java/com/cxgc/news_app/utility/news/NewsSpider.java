package com.cxgc.news_app.utility.news;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.model.News;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 徐瑜壮
 * @Date 2018-03-22 / 04:46:28
 * @Version 通过新闻接口抓取新闻
 * @Description
 */
public class NewsSpider{

    private static Map<Integer,String> newsApi = new HashMap<>();
    public JSONArray objects;
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
    private static Calendar d = Calendar.getInstance();
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    static {
        //1、科技
        newsApi.put(5,"http://120.76.205.241:8000/news/baijia?catid=1&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //2、娱乐
        newsApi.put(3,"http://120.76.205.241:8000/news/baijia?catid=2&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //3、财经
        newsApi.put(4,"http://120.76.205.241:8000/news/baijia?catid=3&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //4、文化
        newsApi.put(1,"http://120.76.205.241:8000/news/baijia?catid=5&apikey=Kf1yDYIZuZibdPyfkotd30ncmUYtD5XFvBMVJjWJI6xuuMCUBPgT2zf00f8QEwJ5");
        //、5体育
        newsApi.put(2,"http://120.76.205.241:8000/post/qqsport?baid=69&apikey=qZE91UwJqCivYsK6cJu1xpQMmi4QYbhJRJa1tf3erp8U7Tk3ydUyWIkIxct0J6Wq");

    }
    /*public   List<News> responseAppIndex(Integer type) throws IOException, ParseException {
        String path = newsPath(type);
        List<News> newsList = newsList(type);
        ns.newsSaveAsync(objects,type,path);
        return newsList;
    }*/
    public static JSONArray spider(Integer type) throws IOException {
        URL url = new URL(newsApi.get(type));
        URLConnection urlConnection = url.openConnection();
        urlConnection.setConnectTimeout(5000);
        InputStream inputStream = urlConnection.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("utf-8")));
        StringBuffer sb = new StringBuffer();
        String l;
        while ((l=br.readLine())!=null){
            sb.append(l);
        }
        JSONObject jsonObject = JSON.parseObject(sb.toString());
        Object data = jsonObject.get("data");
        return JSON.parseArray(data.toString());
    }

    //响应给前台的新闻集合
    public   List<News> newsList(Integer type) throws IOException, ParseException {
        List<News> newsList = new ArrayList<>();

        JSONObject news;
        if(objects==null){
            objects=spider(type);
        }
            int size = objects.size();

                for (int i=0;i<size;i++){
                    News newsInstance = new News();
                    List<String> img;
                    news = objects.getJSONObject(i);
                    newsInstance.setTitle(news.getString("title"));
                    newsInstance.setId(newsDate()+news.getString("id"));
                    newsInstance.setAuthor(news.getString("posterScreenName"));
                    newsInstance.setCreateTime(sdf.parse(news.getString("publishDateStr").replace("T"," ")));
                    img = JSONArray.parseArray(news.getJSONArray("imageUrls").toString(), String.class);
                    List<String> img1 = new ArrayList<>();
                    if(img.size()>3){
                        for (int j =0;j<3;j++){
                            img1.add(img.get(j));
                        }
                        newsInstance.setImgPath(img1);
                    }else {
                        newsInstance.setImgPath(img);
                    }

                    newsList.add(newsInstance);

                }

        return newsList;
    }

    //保存新闻到本地
    public  void newsSave(String content,Object id,Integer apiNo) throws IOException {
        File news = new File(newsPath(apiNo)+"\\"+id);
        FileWriter fw = new FileWriter(news);
        BufferedWriter bfw = new BufferedWriter(fw);
        bfw.write(content);
        bfw.close();
        fw.close();
    }
    public  String  newsDate(){
        String format = dateFormat.format(d.getTime());
        return format;
    }

    public  String newsPath(Integer type){
        File path = new File("D:\\news\\"+newsDate()+"\\"+type);
        if (!path.exists()){
            path.mkdirs();
        }
        return path.getPath();
    }
}

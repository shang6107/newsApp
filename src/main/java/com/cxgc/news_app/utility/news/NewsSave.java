package com.cxgc.news_app.utility.news;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class NewsSave extends Thread{
    @Autowired
    NewsIndexDao nid;
    private  JSONArray objects;
    private  Integer type;
    private String path;

    public NewsSave(JSONArray objects,Integer type,String path){
        this.objects=objects;
        this.type=type;
        this.path = path;

    }
    @Override
    public void run() {
        try {
            newsHandle();
            nid.insertNews(saveNewsToDatabase());
            objects=null;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public  void newsHandle() throws IOException {
        JSONObject news;
        List<String> strings = null;
        File newsList = new File(path);
        if(newsList.exists()){
          String[]  list = newsList.list();
          strings = Arrays.asList(list);
        }
     a:  for(int i=0;i<objects.size();i++){
            news = objects.getJSONObject(i);
            String id = news.getString("id");
            if(strings!=null){
                for (int j=0;i<strings.size();i++){
                    if(strings.get(j).equals(id)){
                        objects.remove(i);
                        strings.remove(j);
                        i--;
                        break a;
                    }
                }

            }
         String content= (String) news.get("content");
         NewsSpider.newsSave(content,id,type);
        }
    }

    public List<News> saveNewsToDatabase() throws IOException {
        News n;
        List<News> newsList = NewsSpider.newsList(type);
        NewsType nt = new NewsType();
        nt.setId(type);
        for (int i=0;i<newsList.size();i++){
            n = newsList.get(i);
            n.setType(nt);
            n.setUrl(path+"\\"+n.getId());
        }
        return newsList;
    }

}

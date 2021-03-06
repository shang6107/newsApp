package com.cxgc.news_app.core.services.news_service.imple;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.services.news_service.NewsSave;
import com.cxgc.news_app.utility.news.NewsSpider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.*;

@Service
@EnableAsync
public  class NewsSaveImpl implements NewsSave {
    @Autowired
    private NewsIndexDao nid;

    @Async
    @Override
    public void newsSaveAsync(NewsSpider ns, Integer type){
        String path = ns.newsPath(type);
        try {
            newsHandle(ns,type,path);
            List<News> newsList = saveNewsToDatabase(ns,type,path);
            if(newsList!=null&&newsList.size()>0){
                nid.insertNews(newsList);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void newsHandle(NewsSpider ns,Integer type,String path) throws IOException {
        Map<String,Object[]> imgMap = new HashMap<>();
        JSONArray objects = ns.objects;
        JSONObject news;
        List<String> strings = null;
        File newsList = new File(path);
        if(newsList.exists()){
            String[]  list = newsList.list();
            strings = new ArrayList<>(Arrays.asList(list));
        }
        a:  for(int i=0;i<objects.size();i++){
            news = objects.getJSONObject(i);
            String id =ns.newsDate()+news.getString("id");
            if(strings!=null){
                for (int j=0;j<strings.size();j++){
                    if(strings.get(j).equals(id)){
                        objects.remove(i);
                        strings.remove(j);
                        i--;
                        j--;
                        continue a;
                    }
                }

            }
            String content= news.getString("content");
            JSONArray imageUrls = news.getJSONArray("imageUrls");
            Object[] imgs = imageUrls.toArray();
            imgMap.put(id,imgs);
            ns.newsSave(content,id,type);
        }
        if(!imgMap.isEmpty())
        nid.insertNewsImg(imgMap);
    }
    @Override
    public List<News> saveNewsToDatabase(NewsSpider ns,Integer type,String path) throws IOException, ParseException {
        News n;
        List<News> newsList = ns.newsList(type);
        NewsType nt = new NewsType();
        nt.setId(type);
        for (int i=0;i<newsList.size();i++){
            n = newsList.get(i);
            n.setType(nt);
            n.setUrl(path+"\\"+n.getId());
            n.setCreateTime(new Date());
        }
        return newsList;
    }

}

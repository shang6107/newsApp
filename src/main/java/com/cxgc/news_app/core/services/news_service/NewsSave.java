package com.cxgc.news_app.core.services.news_service;

import com.alibaba.fastjson.JSONArray;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.utility.news.NewsSpider;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
public interface NewsSave{
     void newsSaveAsync(NewsSpider ns, Integer type, String path);
    void newsHandle(JSONArray objects,Integer type,String path) throws IOException;
    List<News> saveNewsToDatabase(Integer type,String path) throws IOException, ParseException;

}

package com.cxgc.news_app.core.services.news_service;

import com.cxgc.news_app.core.model.News;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
public interface NewsSave extends Runnable{
    @Override
    void run();
    void newsHandle() throws IOException;

    List<News> saveNewsToDatabase() throws IOException, ParseException;
}

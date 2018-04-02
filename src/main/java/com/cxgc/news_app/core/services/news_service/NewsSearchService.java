package com.cxgc.news_app.core.services.news_service;

import com.cxgc.news_app.core.model.News;

import java.util.List;

public interface NewsSearchService {

    List<News> newsSearch(String str);
}

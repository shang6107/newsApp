package com.cxgc.news_app.core.services.news_service;

import com.cxgc.news_app.core.model.News;

import java.util.List;
import java.util.Map;

public interface NewsSearchService {

    List<News> newsSearch(String str);

    List<String> searchInit();
}

package com.cxgc.news_app.core.mapper.news_mapper;

import com.cxgc.news_app.core.model.News;


import java.util.List;

public interface NewsSearchDao {

    List<News> newsSearch(List<String> list);


}

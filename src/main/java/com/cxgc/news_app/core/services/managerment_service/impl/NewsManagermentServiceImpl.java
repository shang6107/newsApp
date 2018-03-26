package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.NewsManagermentDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
@Service
public class NewsManagermentServiceImpl implements NewsManagermentService {
    @Autowired
    private NewsManagermentDao newsManDao;

    @Override
    public int addNews(News news) {
        return newsManDao.addNews(news);
    }

    @Override
    public Map<String, Object> deleteNewsById(String id) {
        return null;
    }

    @Override
    public List<News> selectAllNews() {
        return newsManDao.selectAllNews();
    }


}

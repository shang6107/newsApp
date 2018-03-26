package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.News;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
public interface NewsManagermentService {
    /**
     * 添加新闻
     *
     * @param news
     * @return
     */
    public int addNews(News news);

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    public Map<String, Object> deleteNewsById(String id);

    /**
     * 查询所有新闻
     *
     * @return
     */
    public List<News> selectAllNews();
}

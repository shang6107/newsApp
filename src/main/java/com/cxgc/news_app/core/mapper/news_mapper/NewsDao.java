package com.cxgc.news_app.core.mapper.news_mapper;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsDao {
    /**
     * 通过新闻id获得新闻的网络地址
     */
    String getNewsById(String id);
}

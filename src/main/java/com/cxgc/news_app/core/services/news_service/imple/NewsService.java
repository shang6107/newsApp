package com.cxgc.news_app.core.services.news_service.imple;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsService {
    /**
     * 通过新闻id获得新闻的网络地址
     */
    String getNewsById(String id);
}

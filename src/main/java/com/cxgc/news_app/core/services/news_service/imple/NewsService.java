package com.cxgc.news_app.core.services.news_service.imple;

import com.cxgc.news_app.core.model.Comment;

import java.util.Collection;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsService {
    /**
     * 通过新闻id获得新闻的本地地址
     */
    String getNewsById(String id);
    /**
     * 通过新闻id获得新闻对象，包括评论等信息
     */
    Collection<Comment> getAllCommentByNewsId(String id);
}

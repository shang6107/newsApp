package com.cxgc.news_app.core.services.news_service.imple;

import com.cxgc.news_app.core.model.Collections;
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
    /**
     * 将用户的评论保存在评论表中
     */
    int putIntoComment(Comment comment);
    /**
     * 记录用户收藏数据
     */
    int inputCollection(Collections collection);
    /**
     * 取消用户收藏记录
     */
    int outPutCollection(Collections collection);
}

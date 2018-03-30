package com.cxgc.news_app.core.services.news_service;
import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.model.Comment;

import java.util.Collection;
import java.util.List;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsService {
    /**
     * 通过新闻id获得新闻的本地地址
     */
    String getNewsById(String id);
    /**
     * 通过新闻id获得新闻对象，包括评论，收藏等信息
     */
     List<Comment> getAllCommentByNewsId(String id);

    /**
     * 通过新闻id和用户id获得该用户对该新闻的所有评论
     */
    //Collection<Comment> getCommentByNewIdAndUserId(Comment comment);

    /**
     * 获得用户对该新闻的收藏情况
     */
    Collections checkCollection(Collections collection);
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

    /**
     * 保存用户的点赞
     */
    void putonGood(Comment comment);

}

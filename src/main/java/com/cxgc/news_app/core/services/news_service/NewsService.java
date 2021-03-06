package com.cxgc.news_app.core.services.news_service;
import com.cxgc.news_app.core.model.*;

import java.util.Collection;
import java.util.List;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsService {
    /**
     * 通过新闻id获得新闻
     */
    News getNewsById(String id);
    /**
     * 通过新闻id获得新闻对象，包括评论，收藏等信息
     */
     List<Comment> getAllCommentByNewsId(String id,int startNo,int size);

    /**
     * 通过新闻id获得所有新闻评论数
     */
    int getCommentNum(String id);

    /**
     * 通过新闻id和用户id获得该用户对该新闻的所有评论
     */
    List<Comment> getCommentByNewIdAndUserId(Comment comment);

    /**
     * 获得用户对该新闻的收藏情况
     */
    Collections checkCollection(Collections collection);
    /**
     * 将用户的评论保存在评论表中
     */
    int putIntoComment(Comment comment,int disscussNum);
    /**
     * 删除用户评论
     */
    void outPutComment(Comment comment);
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
    /**
     * 获得用户历史浏览记录
     */
    List<History> getUserNewsHistory(String userId);
    /**
     * 保存举报信息
     */
    void putonReport(Report report);
    /**
     * 取消举报
     */
    void putoutReport(String reportId);
    /**
     * 核对举报信息
     */
    String checkReport(Report report);
    /**
     * 获得用户对象
     */
    User getUserById(String id);

}

package com.cxgc.news_app.core.mapper.news_mapper;

import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.model.History;
import com.cxgc.news_app.core.model.News;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsDao {
    /**
     * 通过新闻id获得当前的新闻评论
     */
    List<Comment> getAllCommentByNewsId(@Param("id") String id,@Param("startNo") int startNo,@Param("size") int size);
    /**
     * 通过新闻id获得所有新闻评论数
     */
    int getCommentNum(String id);
    /**
     * 通过用户id和新闻id获得该用户对该新闻的所有评论记录
     */
    List<Comment> getCommentByNewIdAndUserId(Comment comment);
    /**
     * 通过新闻id和用户id获得用户对该新闻的收藏情况
     */
    Collections checkCollection(Collections collection);

    /**
     * 通过新闻id获得新闻对象
     * @param id
     * @return
     */
    News getNews(String id);

    /**
     * 保存用户评论
     * @param comment
     * @return
     */
    int putIntoComment(Comment comment);
    /**
     * 修改用户评论
     */
    void updateComment(Comment comment);
    /**
     * 删除用户评论
     */
    void outPutComment(Comment comment);
    /**
     * 添加用户收藏记录
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
     * 通过用户id获得历史浏览记录
     */
    List<History> userNewsHistory(String id);

}

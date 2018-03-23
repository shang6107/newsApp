package com.cxgc.news_app.core.mapper.news_mapper;

import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.model.News;

import java.util.Collection;

/**
 * Created by 唐倩 on 2018/3/21.
 */
public interface NewsDao {
    /**
     * 通过新闻id获得新闻的本地地址
     */
    String getNewsById(String id);
    /**
     * 通过新闻id获得所有的新闻评论
     */
    Collection<Comment> getAllCommentByNewsId(String newsId);

    /**
     * 通过新闻id获得新闻对象
     * @param id
     * @return
     */
    News getNews(String id);
}

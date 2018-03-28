package com.cxgc.news_app.core.services.news_service.imple.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsDao;
import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * Created by 唐倩 on 2018/3/21.
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsDao newsDao;

    /**
     * 通过新闻id获得新闻的本地地址
     * @param id 新闻id
     * @return 新闻本地地址url
     */
    @Override
    public String getNewsById(String id) {
        return newsDao.getNewsById(id);
    }

    /**
     * 通过新闻id获得所有的评论对象
     * @param id 新闻id
     * @return 该新闻的所有评论
     */
    @Override
    public Collection<Comment> getAllCommentByNewsId(String id) {
        return newsDao.getAllCommentByNewsId(id);
    }

    /**
     * 保存用户评论记录
     * @param comment 评论对象
     * @return
     */

    public int putIntoComment(Comment comment) {
        return newsDao.putIntoComment(comment);
    }

    /**
     * 添加用户收藏记录
     */
    @Override
    public int inputCollection(Collections collection) {
        System.out.println("collection = " + collection);
        return newsDao.inputCollection(collection);
    }

    /**
     * 取消用户收藏记录
     */
    @Override
    public int outPutCollection(Collections collection) {
        return newsDao.outPutCollection(collection);
    }
}

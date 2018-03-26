package com.cxgc.news_app.core.handlers.news_handler;

import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
import com.cxgc.news_app.utility.news.NewsIO;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

/**
 *  @author 唐倩
 *  @Version
 *  @Description
 */
@Controller
@RequestMapping("/app")
public class InfoNewsHandler {

    @Autowired
    private NewsService newsService;
    /**
     * 通过新闻id获得新闻及所有评论
     * @return
     */
    @CrossOrigin
    @RequestMapping("getOneNews")
    public @ResponseBody Map<String,Object> test(String id) throws IOException {
        Map<String,Object> map=new HashedMap();
        String url = newsService.getNewsById(id);
        if(url==null){
            return null;
        }
            StringBuffer stringFromFile = NewsIO.getStringFromFile(url);
            //获得该新闻的所有评论
            Collection<Comment> commentCollection = newsService.getAllCommentByNewsId(id);
            map.put("news",stringFromFile);
            map.put("comments",commentCollection);
            return map;
    }

    /**
     * 记录用户评论（判断用户是否登录）
     */
    /**
     * 前提是登录状态下
     * 每条每人最多发送2条评论，每条最多50字，
     * 评论可以点赞，热度越高评论越靠前。
     * 用户还可以删除自己发送过的评论。
     */
    @CrossOrigin
    @RequestMapping("putDiscuss")
    public void putDiscuss(Comment comment){
        System.out.println("comment = " + comment);
        String content=comment.getContent();
        comment.setCreateTime(new Date());
        comment.setId("cre"+System.currentTimeMillis());
        int result=newsService.putIntoComment(comment);

    }

}

package com.cxgc.news_app.core.handlers.news_handler;

import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.services.news_service.NewsService;
import com.cxgc.news_app.utility.news.NewsIO;
import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.annotations.Param;
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
    public @ResponseBody String putDiscuss(Comment comment){
        comment.setCreateTime(new Date());
        comment.setId("cre"+System.currentTimeMillis());
        int result=newsService.putIntoComment(comment);
        if(result>0){
            return "发布成功！";
        }
        return "发布失败！";
    }

    /**
     * 用户收藏与取消收藏
     */
   // @CrossOrigin
    @RequestMapping("putCollection")
    public @ResponseBody String insertCollections(String newsId,String userId,@Param("c") int c){
        Collections collection=new Collections();
        collection.setCreateTime(new Date());
        collection.setNewsId(newsId);
        collection.setUserId(userId);
        System.out.println("collection = " + collection);
        System.out.println("c = " + c);
        String result=null;
        //判断是取消收藏还是收藏
        if(c==1){//收藏
            collection.setId("coll"+System.currentTimeMillis());
            System.out.println("collection = " + collection);
            int result1=newsService.inputCollection(collection);
            if(result1>0){
                result="收藏成功！";
            }
        }
        if(c==0){//取消收藏
            int result2=newsService.outPutCollection(collection);
            if(result2>0){
                result="取消收藏！";
            }
        }
        return result;
  }

}

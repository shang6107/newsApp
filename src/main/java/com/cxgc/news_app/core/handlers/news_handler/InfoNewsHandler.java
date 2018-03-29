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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
     * 通过新闻id获得新闻及所有评论,收藏
     * @return
     */
    @CrossOrigin
    @RequestMapping("/getOneNews")
    public @ResponseBody Map<String,Object> test(String id,@Param("userId") String userId) throws IOException {
        Map<String,Object> map=new HashedMap();
        //获得该新闻的所有评论
        List<Comment> commentCollection = newsService.getAllCommentByNewsId(id);
        //获得新闻对象
        String url = newsService.getNewsById(id);
        if(url==null){return null;}
        StringBuffer stringFromFile = NewsIO.getStringFromFile(url);
        System.out.println("stringFromFile"+stringFromFile);
        map.put("news",stringFromFile);

        //获得用户对该新闻的收藏情况
        Collections collection=new Collections();
        collection.setUserId(userId);
        collection.setNewsId(id);
        Collections checkCollection=newsService.checkCollection(collection);
        map.put("checkCollection",checkCollection);

        //所有的评论数
        int commentsNum=commentCollection.size();
        map.put("commentsNum",commentsNum);

        //获得每次请求的前5条数据
        List<Comment> eachComment=new ArrayList<>();
        //5*num
        int num=1;
            for (int i = 2 * (num - 1); i < 2 * num; i++) {
                eachComment.add(commentCollection.get(i));
            }
        map.put("comments",eachComment);
        return map;
    }

    /**
     * 每次刷新获得即时评论
     */
    @CrossOrigin
    @RequestMapping("/getEachComment")
    public @ResponseBody Map<String,Object> getEachComment(String id,@Param("count") int num){
        System.out.println("id"+id);
        //获得该新闻的所有评论
        List<Comment> commentCollection = newsService.getAllCommentByNewsId(id);
        System.out.println("num = " + num);
        Map<String,Object> map=new HashedMap();
        System.out.println("评论中----》commentCollection"+commentCollection);
        //获得每次请求的前5条数据
        List<Comment> eachComment=new ArrayList<>();
        for (int i = 2 * (num-1); i < 2 * num; i++) {
            eachComment.add(commentCollection.get(i));
        }
        map.put("comments",eachComment);
        return map;
    }

    /**
     * 前提是登录状态下
     * 每条每人最多发送2条评论，每条最多50字，
     * 评论可以点赞，热度越高评论越靠前。
     * 用户还可以删除自己发送过的评论。
     */
    @CrossOrigin
    @RequestMapping("/putDiscuss")
    public @ResponseBody String putDiscuss(Comment comment){
        comment.setCreateTime(new Date());
        comment.setId("cre"+System.currentTimeMillis());

        int result=newsService.putIntoComment(comment);
        if(result>1){
            return "评论更改成功！";
        }
       return "评论发布成功！";
    }

    /**
     * 用户收藏与取消收藏
     */
    @CrossOrigin
    @RequestMapping("/putCollection")
    public @ResponseBody String insertCollections(String newsId, String userId, @Param("c") int c){
        Collections collection=new Collections();
        collection.setCreateTime(new Date());
        collection.setNewsId(newsId);
        collection.setUserId(userId);
        String result=null;
        //判断是取消收藏还是收藏
        if(c==1){//收藏
            collection.setId("coll"+System.currentTimeMillis());
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

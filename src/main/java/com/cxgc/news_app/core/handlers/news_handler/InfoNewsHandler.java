package com.cxgc.news_app.core.handlers.news_handler;

import com.cxgc.news_app.core.model.Collections;
import com.cxgc.news_app.core.model.Comment;
import com.cxgc.news_app.core.model.News;
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
    public static int size=2;
    public static int num=0;
    public static int dissCount=0;
    /**
     * 通过新闻id获得新闻及所有评论,收藏
     * @return
     */
    @CrossOrigin
    @RequestMapping("/getOneNews")
    public @ResponseBody Map<String,Object> test(String id,String userId) throws IOException {

        Map<String,Object> map=new HashedMap();

        //获得新闻对象
        News oneNew = newsService.getNewsById(id);
        if(oneNew.getUrl()==null){return null;}
        StringBuffer stringFromFile = NewsIO.getStringFromFile(oneNew.getUrl());
        map.put("newsFile",stringFromFile);//新闻内容
        map.put("news",oneNew);//新闻对象

        //获得用户对该新闻的收藏情况
        if(userId!=null){
            Collections collection=new Collections();
            collection.setUserId(userId);
            News n=new News();
            n.setId(id);
            collection.setNewsId(n);
            Collections checkCollection=newsService.checkCollection(collection);
            map.put("checkCollection",checkCollection);
        }
        //所有的评论数
        int commentsNum = newsService.getCommentNum(id);
        map.put("commentsNum",commentsNum);
        //获得每次请求的前5条数据
        int num=1;
        int startNo=size * (num - 1);
        List<Comment> eachComment=newsService.getAllCommentByNewsId(id,startNo,size);
        map.put("comments",eachComment);
        return map;
}

    /**
     * 每次刷新获得即时评论
     */
    @CrossOrigin
    @RequestMapping("/getEachComment")
    public @ResponseBody Map<String,Object> getEachComment(@Param("id") String id,@Param("reCount") String reCount){
        Map<String,Object> map=new HashedMap();

        //所有的评论数
        int commentsNum = newsService.getCommentNum(id);
        map.put("commentsNum",commentsNum);

        int count=Integer.parseInt(reCount);
        System.out.println("count = " + count);
        if(count<1){
            count=1;
        }
        int startNo=size * count;
        List<Comment> eachComment = newsService.getAllCommentByNewsId(id, startNo, size);

        if(eachComment.size()<=2&&count==1){
            num++;
            System.out.println("num = " + num);
            if(num%2==0){
                eachComment.remove(0);
              num=0;
            }
        }
        map.put("eachComment",eachComment);
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
    public @ResponseBody String putDiscuss(@Param("userId") String userId,@Param("newsId") String newsId,@Param("content") String content,@Param("disscussNum") int disscussNum){
        Comment comment=new Comment();
        comment.setNewsId(newsId);
        comment.setUserId(userId);
        comment.setContent(content);
        comment.setCreateTime(new Date());
        comment.setId("cre"+System.currentTimeMillis());
        comment.setGoodCount(0);
        dissCount=disscussNum;
        int result=newsService.putIntoComment(comment,dissCount);
        if(result>1){
            return "评论成功！";
        }
       return "评论失败！";
    }

    /**
     * 删除评论
     * @param comment
     * @return
     */
    @CrossOrigin
    @RequestMapping("/outMyselfDiscuss")
    public @ResponseBody String outDiscuss(Comment comment){
        newsService.outPutComment(comment);
        dissCount--;
        return "yes";
    }


    /**
     * 用户收藏与取消收藏
     */
    @CrossOrigin
    @RequestMapping("/putCollection")
    public @ResponseBody String insertCollections(@Param("newsId") String newsId,@Param("userId") String userId, @Param("c") int c){
        Collections collection=new Collections();
        collection.setCreateTime(new Date());
        News n=new News();
        n.setId(newsId);
        collection.setNewsId(n);
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

    /**
     * 点赞数更新
     * @return
     */
    @CrossOrigin
    @RequestMapping("/putonGood")
      public @ResponseBody String putonGood(Comment comment){
        newsService.putonGood(comment);
        return "true";
      }

}

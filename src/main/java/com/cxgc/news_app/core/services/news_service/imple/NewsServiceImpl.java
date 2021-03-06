package com.cxgc.news_app.core.services.news_service.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsDao;
import com.cxgc.news_app.core.model.*;
import com.cxgc.news_app.core.services.news_service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import static sun.plugin2.os.windows.OSVERSIONINFOA.size;

/**
 * Created by 唐倩 on 2018/3/21.
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsDao newsDao;

    /**
     * 通过新闻id得到新闻对象
     * @param id
     * @return
     */
    @Override
    public News getNewsById(String id) {
        return newsDao.getNews(id);
    }

    /**
     * 通过新闻id获得当前评论对象
     * @param id 新闻id
     * @return 该新闻的所有评论
     */

    @Override
    public  List<Comment> getAllCommentByNewsId(String id,int startNo,int size) {
        return newsDao.getAllCommentByNewsId(id,startNo,size);
    }

    /**
     * 通过新闻id获得该新闻的所有评论数
     * @param id
     * @return
     */
    @Override
    public int getCommentNum(String id) {
        return newsDao.getCommentNum(id);
    }

    /**
     * 通过新闻id和用户id获得该用户对该新闻的所有评论
     */
    @Override
    public List<Comment> getCommentByNewIdAndUserId(Comment comment) {
        return newsDao.getCommentByNewIdAndUserId(comment);
    }

    /**
     * 获得用户对该新闻的收藏情况
     * @param collection
     * @return 收藏对象
     */
    @Override
    public Collections checkCollection(Collections collection) {
        return newsDao.checkCollection(collection);
    }

    /**
     * 保存用户评论记录
     * @param comment 评论对象
     * @return
     */
    int num=1;
    public int putIntoComment(Comment comment,int disscussNum) {

        if(disscussNum==2){
            //获得该用户对该新闻的所有评论
            List<Comment> commentByNewIdAndUserId = newsDao.getCommentByNewIdAndUserId(comment);
            if(num%2==1){
                commentByNewIdAndUserId.get(commentByNewIdAndUserId.size()-1).setContent(comment.getContent());
                newsDao.updateComment(commentByNewIdAndUserId.get(commentByNewIdAndUserId.size()-1));
                num++;
            }else if(num%2==0){
                commentByNewIdAndUserId.get(commentByNewIdAndUserId.size()-2).setContent(comment.getContent());
                newsDao.updateComment(commentByNewIdAndUserId.get(commentByNewIdAndUserId.size()-2));
                num++;
            }
            return 2;
        }
        newsDao.putIntoComment(comment);
        return 1;
    }

    /**
     * 删除当前用户评论
     * @param comment
     */
    @Override
    public void outPutComment(Comment comment) {
        newsDao.outPutComment(comment);
    }

    /**
     * 添加用户收藏记录
     */
    @Override
    public int inputCollection(Collections collection) {
        return newsDao.inputCollection(collection);
    }

    /**
     * 取消用户收藏记录
     */
    @Override
    public int outPutCollection(Collections collection) {
        return newsDao.outPutCollection(collection);
    }

    /**
     * 保存用户的评论点赞
     * @param comment
     * @return
     */
    List<Comment> list;
    @Override
    public void putonGood(Comment comment) {
//        if(list==null){
//            list=new ArrayList<>();
//        }
//        if(list!=null&&list.size()==100){
//            List<Comment> add;
//            add = list;
//            list=null;
//            addBath(add);
//        }
//        list.add(comment);
        newsDao.putonGood(comment);
    }
    //    public void addBath(List<Comment> comment){
//        newsDao.putonGood(comment);
//    }

    /**
     * 通过用户id获得所有新闻记录
     * @param userId 用户id
     * @return 得到历史浏览集合
     */
    @Override
    public List<History> getUserNewsHistory(String userId) {
        return newsDao.userNewsHistory(userId);
    }

    /**
     * 保存用户举报信息
     * @param report
     */
    @Override
    public void putonReport(Report report) {
        newsDao.putonReport(report);
    }

    /**
     * 取消巨擘啊
     * @param reportId
     */
    @Override
    public void putoutReport(String reportId) {
        newsDao.putoutReport(reportId);
    }

    /**
     * 核对举报信息
     * @param report
     * @return
     */
    @Override
    public String checkReport(Report report) {
        return newsDao.checkReport(report);
    }

    /**
     * 获得用户对象
     * @param id
     * @return
     */
    @Override
    public User getUserById(String id) {
        return newsDao.getUserById(id);
    }

}

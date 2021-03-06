package com.cxgc.news_app.core.services.news_service.imple;


import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.services.news_service.NewsIndexService;
import com.cxgc.news_app.core.services.news_service.NewsSave;
import com.cxgc.news_app.utility.idutil.UtilY;
import com.cxgc.news_app.utility.news.NewsSpider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.ParseException;
import java.util.*;

/**
 * @author 徐瑜壮
 * @Date 2018-03-23 / 10:15:05
 * @Version
 * @Description
 */
@Service
public class NewsIndexServiceImpl implements NewsIndexService{
    @Autowired
    private NewsIndexDao nd;
    /*@Autowired
    private NewsSpider ns;*/
    @Autowired
    NewsSave newsSave;

    /**
     *
     *
     * @return 首页需要的所有数据的map集合
     */
    @Override
    public Map<String, Object> index() {
        Map<String,Object> map = new HashMap<>();
        map.put("newsType", selectNewsType());
        map.put("newsList",selectNewsList());

        return map;
    }

    /**
     *
     * @return 新闻类型集合
     */
    @Override
    public List<NewsType> selectNewsType() {
      return   nd.selectNewsType();

    }



    /**
     *
     * @return 查询新闻集合
     */
    @Override
    public List<News> selectNewsList() {
        List<News> list = new ArrayList<>();
        List<News> newsList = nd.selectNewsList();
        Random r = new Random();
        if (newsList.isEmpty())
            return null;
        for (int i =0;i<10;i++){
         int index= r.nextInt(newsList.size());
         list.add(newsList.get(index));
         newsList.remove(index);
       }
        return   list;
    }

    /**
     * 按类型查询新闻
     * @param type 新闻类型
     * @return 新闻集合
     */
    @Override
    public List<News> newsListByType(Integer type){
    NewsSpider ns = new NewsSpider();
        try {
            List<News> newsList = ns.newsList(type);
            if(ns.objects!=null){
                newsSave.newsSaveAsync(ns,type);
            }
            return newsList;
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addUserRecords(String userId, String newsId) {
        Integer integer = nd.updateUserRecords(userId, newsId);
        if(integer >0){
            nd.insertUserRecords(UtilY.getId(),userId,newsId);
        }
    }
    Map<String,Integer> map = new HashMap<>();
    @Override
    public void addNewsRecords(String newsId) {
        if(map.get(newsId)==null){
            map.put(newsId,1);
        }else {
            map.put(newsId,map.get(newsId)+1);
            if(map.get(newsId)==2){
                nd.addNewsRecords(newsId);
            }
        }
    }


}

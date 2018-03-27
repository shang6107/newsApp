package com.cxgc.news_app.core.services.news_service.imple.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.news_service.imple.NewsIndexService;
import com.cxgc.news_app.utility.news.NewsSpider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    /**
     *
     * @param id 用户id
     * @return 首页需要的所有数据的map集合
     */
    @Override
    public Map<String, Object> index(String id) {
        Map<String,Object> map = new HashMap<>();

        map.put("newsType", selectNewsType());
        System.out.println(selectNewsList());
        map.put("newsList",selectNewsList());

        return map;
    }

    /**
     *
     * @return 新闻类型集合
     */
    @Override
    public List<String> selectNewsType() {
      return   nd.selectNewsType();

    }



    /**
     *
     * @return 查询新闻集合
     */
    @Override
    public List<News> selectNewsList() {
       return   nd.selectNewsList();
    }

    @Override
    public List<News> newsListByType(Integer type){
        try {
          return   NewsSpider.responseAppIndex(type);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

}

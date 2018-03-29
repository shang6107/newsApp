package com.cxgc.news_app.core.services.news_service;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Date 2018-03-23 / 10:13:05
 * @Version
 * @Description
 */
public interface NewsIndexService{

    /**
     *
     * @return 首页所需要的所有数据
     */
    Map<String,Object> index();
    /**
     *
     * @return 新闻类型
     */
    List<NewsType> selectNewsType();

    /**
     *
     * @return 新闻集合
     */
    List<News> selectNewsList();

    List<News> newsListByType(Integer type);
    /*List<News> responseAppIndex(Integer type) throws IOException, ParseException;*/

}

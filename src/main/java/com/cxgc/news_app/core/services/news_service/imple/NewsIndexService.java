package com.cxgc.news_app.core.services.news_service.imple;

import com.cxgc.news_app.core.model.News;

import java.util.List;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Date 2018-03-23 / 10:13:05
 * @Version
 * @Description
 */
public interface NewsIndexService {

    /**
     *
     * @return 首页所需要的所有数据
     */
    Map<String,Object> index(String id);
    /**
     *
     * @return 新闻类型
     */
    List<String> selectNewsType();

    /**
     *
     * @return 新闻集合
     */
    List<News> selectNewsList();
}

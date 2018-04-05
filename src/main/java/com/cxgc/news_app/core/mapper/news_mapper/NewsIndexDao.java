package com.cxgc.news_app.core.mapper.news_mapper;


import com.cxgc.news_app.core.model.Imgs;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import org.apache.ibatis.annotations.Param;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Date 2018-03-23 / 09:13:05
 * @Version
 * @Description
 */
public interface NewsIndexDao {
    /**
     * 查询所有的新闻类型
     * @return 所有新闻类型
     */
    List<NewsType> selectNewsType();



    /**
     *
     * @return 新闻集合
     */
    List<News> selectNewsList();

    void insertNews( @Param("news") List<News> newsList);

    void addNewsRecords(String newsId);
    Integer updateUserRecords(String userId,String newsId);
    void insertUserRecords(String id,String userId,String newsId);
    void insertNewsImg(@Param("imgs") Map<String,Object[]> imgList);
}

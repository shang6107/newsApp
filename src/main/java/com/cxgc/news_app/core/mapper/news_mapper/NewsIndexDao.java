package com.cxgc.news_app.core.mapper.news_mapper;


import com.cxgc.news_app.core.model.News;

import java.util.List;

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
    List<String> selectNewsType();

    /**
     *
     * @param id 用户id
     * @return 头像路径
     */
    String selectUserHeadImg(String id);

    /**
     *
     * @return 新闻集合
     */
    List<News> selectNewsList();
}

package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.core.model.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
public interface NewsManagermentDao {
    /**
     * 添加新闻
     *
     * @param news
     * @return
     */
    public int addNews(@Param("News") News news);

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    public Map<String, Object> deleteNewsById(@Param("id") String id);

    /**
     * 查询所有新闻
     *
     * @return
     */
    public List<News> selectAllNews();

}

package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.Release;
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

    /**
     * 修改发布新闻状态
     *
     * @return
     */
    public Release updateReleaseByStauts();

    /**
     * 查询所有发布新闻
     *
     * @param id
     * @return
     */
    public Release selectRelease(String id);
}

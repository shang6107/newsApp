package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
public interface NewsManagermentDao {
    /**
     * 发布新闻
     *
     * @param release
     * @return
     */
    public int addRelease(@Param("Release") Release release);

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
     * @return
     */
    public List<Release> selectRelease();

    /**
     * 新闻类型查询
     * @param id
     * @return
     */
    NewsType getNewsTypeById(Integer id);

}

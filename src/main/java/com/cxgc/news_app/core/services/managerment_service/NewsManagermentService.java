package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
public interface NewsManagermentService {
    /**
     * 发布新闻
     *
     * @param release
     * @return
     */
    public int addRelease(Release release);

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    public Map<String, Object> deleteNewsById(String id);

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
     public NewsType getNewsTypeById(Integer id);
}

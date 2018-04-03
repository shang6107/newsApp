package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;

import java.util.List;

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
    public String addRelease(Release release);

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    public String deleteNewsById(String id);

    /**
     * 查询所有新闻
     *
     * @return
     */
    public List<News> selectAllNews();
    /**
     * 发布新闻
     *
     * @param release
     * @return
     */
    public String insertRelease(Release release);
    /**
     * 删除发布的新闻
     *
     * @param id
     * @return
     */
    public String deleteReleaseById(String id);

    /**
     * 修改发布新闻状态
     *
     * @return
     */
    public Release updateReleaseById(Release release);

    /**
     * 通过Id获取新闻
     * @param id
     * @return
     */
    Release selectReleaseById(String id);

    /**
     * 查询所有发布新闻
     *
     * @return
     */
    public List<Release> selectRelease();


    /**
     * 新闻类型查询
     *
     * @param id
     * @return
     */
    public NewsType getNewsTypeById(Integer id);


}

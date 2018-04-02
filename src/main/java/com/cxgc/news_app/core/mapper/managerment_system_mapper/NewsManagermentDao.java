package com.cxgc.news_app.core.mapper.managerment_system_mapper;


import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;

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
    public int updateReleaseById(Release release);



    /**
     * 查询所有发布新闻
     *
     * @return
     */
    public List<Release> selectRelease();

    /**
     * 根据id查询发布新闻
     *
     * @param id
     * @return
     */
    public Release selectReleaseById(String id);

    /**
     * 新闻类型查询
     *
     * @param id
     * @return
     */
    NewsType getNewsTypeById(Integer id);


    /* **********************************************************/
    /* *************        新闻数据统计      ********************/
    /* **********************************************************/

    /**
     * 根据请求内容返回相关数据
     * @return
     */
    Map<String,Object> getMinCountOfNewsType();//访问量最小的新闻类型
    Map<String,Object> getMaxCountOfNewsType();//访问量最大的新闻类型
    List<News> getTop10News();//访问量前十的新闻
    List<Release> getTop10Release();//访问量前十的新闻(后台发布)



}

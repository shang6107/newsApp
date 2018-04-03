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
     * 查询所有新闻
     *
     * @return
     */
    List<News> selectAllNews();

    /**
     * 删除发布的新闻
     *
     * @param id
     * @return
     */
    String deleteReleaseById(String id);

    /**
     * 修改发布新闻状态
     *
     * @return
     */
    int updateReleaseById(Release release);

    /**
     * 发布新闻
     *
     * @param release
     * @return
     */
    String insertRelease(Release release);

    /**
     * 查询所有发布新闻
     *
     * @return
     */
    List<Release> selectRelease();

    /**
     * 审核发布的新闻
     *
     * @return
     */
    List<Release> updateRelease();

    /**
     * 根据id查询发布新闻
     *
     * @param id
     * @return
     */
    Release selectReleaseById(String id);

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
     *
     * @return
     */
    Map<String, Object> getMinCountOfNewsType();//访问量最小的新闻类型

    Map<String, Object> getMaxCountOfNewsType();//访问量最大的新闻类型

    List<News> getTop10News();//访问量前十的新闻

    List<Release> getTop10Release();//访问量前十的新闻(后台发布)


}

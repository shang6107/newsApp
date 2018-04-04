package com.cxgc.news_app.core.services.managerment_service;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;

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
    String addRelease(Release release);

    /**
     * 根据id删除新闻
     *
     * @param id
     * @return
     */
    String deleteNewsById(String id);

    /**
     * 查询所有新闻
     *
     * @return
     */
    List<News> selectAllNews();

    /**
     * 发布新闻
     *
     * @param release
     * @return
     */
    String insertRelease(Release release);

    /**
     * 删除发布的新闻
     *
     * @param id
     * @return
     */
    String deleteReleaseById(String id);

    List<Release> updateRelease();

    /**
     * 修改发布新闻状态
     *
     * @return
     */
    Boolean updateReleaseById(Release release);

    /**
     * 通过Id获取新闻
     *
     * @param id
     * @return
     */
    Release selectReleaseById(String id);

    /**
     * 查询所有发布新闻
     *
     * @return
     */
    List<Release> selectRelease();


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
     * 统计新闻总条数
     *
     * @return
     */
    Map<String, Object> NewsCount();

    /**
     * 统计发布的新闻总条数
     *
     * @return
     */
    Map<String, Object> ReleaseCount();

    /**
     * 查询社会类新闻
     *
     * @return
     */

    Map<String, Object> sociology();

    /**
     * 查询体育类新闻
     *
     * @return
     */
    Map<String, Object> sport();

    /**
     * 查询娱乐类新闻
     *
     * @return
     */
    Map<String, Object> entertainment();

    /**
     * 查询财经类新闻
     *
     * @return
     */
    Map<String, Object> finance();

    /**
     * 查询科技类新闻
     *
     * @return
     */
    Map<String, Object> technology();

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

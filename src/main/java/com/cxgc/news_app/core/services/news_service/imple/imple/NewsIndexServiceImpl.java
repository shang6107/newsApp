package com.cxgc.news_app.core.services.news_service.imple.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsIndexDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.news_service.imple.NewsIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Date 2018-03-23 / 10:15:05
 * @Version
 * @Description
 */
@Service
public class NewsIndexServiceImpl implements NewsIndexService{
    @Autowired
    private NewsIndexDao nd;

    /**
     *
     * @param id 用户id
     * @return 首页需要的所有数据的map集合
     */
    @Override
    public Map<String, Object> index(String id) {
        Map<String,Object> map = new HashMap<>();

        map.put("newType", selectNewsType());
        map.put("userHeadImg",selectUserHeadImg(id));
        map.put("newsList",selectNewsList());

        return map;
    }

    /**
     *
     * @return 新闻类型集合
     */
    @Override
    public List<String> selectNewsType() {
      return   nd.selectNewsType();

    }

    /**
     *
     * @param id 用户id
     * @return 头像路径
     */
    @Override
    public String selectUserHeadImg(String id) {
        return nd.selectUserHeadImg(id);
    }

    /**
     *
     * @return 查询新闻集合
     */
    @Override
    public List<News> selectNewsList() {
       return   nd.selectNewsList();
    }



}

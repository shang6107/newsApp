package com.cxgc.news_app.core.services.news_service.imple.imple;

import com.cxgc.news_app.core.mapper.news_mapper.NewsDao;
import com.cxgc.news_app.core.services.news_service.imple.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 唐倩 on 2018/3/21.
 */
@Service
public class NewsServiceImpl implements NewsService{

    @Autowired
    private NewsDao newsDao;

    /**
     * 通过新闻id获得新闻的本地地址
     * @param id 新闻id
     * @return 新闻本地地址url
     */
    @Override
    public String getNewsById(String id) {
        return newsDao.getNewsById(id);
    }
}

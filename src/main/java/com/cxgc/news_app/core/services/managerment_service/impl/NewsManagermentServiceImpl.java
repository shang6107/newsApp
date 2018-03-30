package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.NewsManagermentDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * pjl
 */
@Service
public class NewsManagermentServiceImpl implements NewsManagermentService {
    @Autowired
    private NewsManagermentDao nmd;

    @Override
    public String addRelease(Release release) {
        return nmd.addRelease(release);
    }

    @Override
    public String deleteNewsById(String id) {
        return nmd.deleteNewsById(id);
    }

    @Override
    public List<News> selectAllNews() {
        return nmd.selectAllNews();
    }

    @Override
    public String deleteReleaseById(String id) {
        return nmd.deleteReleaseById(id);
    }

    @Override
    public String updateReleaseById(Release release) {
        return nmd.updateReleaseById(release);
    }

    @Override
    public List<Release> selectRelease() {
        return nmd.selectRelease();
    }

    @Override
    public String selectReleaseById(String id) {
        return nmd.selectReleaseById(id);
    }

    @Override
    public NewsType getNewsTypeById(Integer id) {
        return nmd.getNewsTypeById(id);
    }


}

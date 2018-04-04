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
    public String insertRelease(Release release) {
        return nmd.insertRelease(release);
    }

    @Override
    public String deleteReleaseById(String id) {
        return nmd.deleteReleaseById(id);
    }

    @Override
    public List<Release> updateRelease() {
        return nmd.updateRelease();
    }

    @Override
    public Boolean updateReleaseById(Release release) {
        return nmd.updateReleaseById(release);
    }

    @Override
    public Release selectReleaseById(String id) {
        return nmd.selectReleaseById(id);
    }

    @Override
    public List<Release> selectRelease() {
        return nmd.selectRelease();
    }

    @Override
    public NewsType getNewsTypeById(Integer id) {
        return nmd.getNewsTypeById(id);
    }

    @Override
    public Map<String, Object> NewsCount() {
        return nmd.NewsCount();
    }

    @Override
    public Map<String, Object> ReleaseCount() {
        return nmd.ReleaseCount();
    }

    @Override
    public Map<String, Object> sociology() {
        return nmd.sociology();
    }

    @Override
    public Map<String, Object> sport() {
        return nmd.sport();
    }

    @Override
    public Map<String, Object> entertainment() {
        return nmd.entertainment();
    }

    @Override
    public Map<String, Object> finance() {
        return nmd.finance();
    }

    @Override
    public Map<String, Object> technology() {
        return nmd.technology();
    }

    @Override
    public Map<String, Object> getMinCountOfNewsType() {
        return nmd.getMinCountOfNewsType();
    }

    @Override
    public Map<String, Object> getMaxCountOfNewsType() {
        return nmd.getMaxCountOfNewsType();
    }

    @Override
    public List<News> getTop10News() {
        return nmd.getTop10News();
    }

    @Override
    public List<Release> getTop10Release() {
        return nmd.getTop10Release();
    }


}

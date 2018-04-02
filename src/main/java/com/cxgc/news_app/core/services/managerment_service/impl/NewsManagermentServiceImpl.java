package com.cxgc.news_app.core.services.managerment_service.impl;

import com.cxgc.news_app.core.mapper.managerment_system_mapper.NewsManagermentDao;
import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public Release updateReleaseById(Release release) {

        int i= nmd.updateReleaseById(release);

        if(i>0){
            return nmd.selectReleaseById(release.getId());
        }
        return null;
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


}

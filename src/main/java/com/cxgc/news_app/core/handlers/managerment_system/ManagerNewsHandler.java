package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.common.ReleaseStatus;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.Map;

@Controller
@RequestMapping("/management")
public class ManagerNewsHandler {
    @Autowired
    private NewsManagermentService nms;

    @RequestMapping("/news_release_list")
    public String selectRelease(Map<String, Object> map) {
        map.put("release", nms.selectRelease());
        return "news_release_list";
    }

    @RequestMapping("/news_list")
    public String selectAllNews(Map<String, Object> map) {
        map.put("news", nms.selectAllNews());
        return "news_list";
    }

    @RequestMapping("/news_updateRelease")
    public String updateReleaseById(Release release, String id, Integer typeName, Integer statusReason) {

        NewsType newsType = new NewsType();
        newsType  .setId(typeName);
          release.setNewTypeId(newsType);
        ReleaseStatus releaseStatusByStatus = ReleaseStatus.getReleaseStatusByStatus(statusReason);
        release.setStatus(releaseStatusByStatus);

        nms.updateReleaseById(release);

        return "redirect:news_release_list";

    }

    @RequestMapping("/updateReleaseById")
    public String selectReleaseById(String id, Map<String, Object> map) {
        Release release = nms.selectReleaseById(id);
        map.put("release", release);
        return "news_update";
    }

    @RequestMapping("/insertRelease")
    public String insertRelease(Release release) {
        /* nms.insertRelease(release);*/
        return "news_release_list";
    }

    @RequestMapping("/addRelease")
    public String addRelease(Release release) {
        nms.addRelease(release);
        return "news_addRelease";
    }

    @RequestMapping("/deleteNewsById")
    public String deleteNewsById(String id) {
        nms.deleteNewsById(id);
        return "news_list";
    }


    /* *************************新闻数据统计***********************************/
    @RequestMapping("/search-page")
    public String searchPage() {

        return "";
    }
}

package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.common.ReleaseStatus;
import com.cxgc.news_app.core.model.NewsType;
import com.cxgc.news_app.core.model.Release;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/management")
public class ManagerNewsHandler {
    @Autowired
    private NewsManagermentService nms;

    @RequestMapping("/news_list")
    public String selectAllNews(Map<String, Object> map) {
        map.put("news", nms.selectAllNews());
        return "news_list";
    }

    @RequestMapping("/news_release_list")
    public String selectRelease(Map<String, Object> map) {
        map.put("release", nms.selectRelease());
        return "news_release_list";
    }

    @RequestMapping("/news_updateRelease_list")
    public String updateRelease(Map<String, Object> map) {
        map.put("release", nms.updateRelease());
        return "news_updateRelease_list";
    }

    @RequestMapping("/news_updateRelease")
    public String updateReleaseById(Release release, Integer typeName, String ids, Integer statusReason) {

        NewsType newsType = new NewsType();
        newsType.setId(typeName);
        release.setNewTypeId(newsType);
        ReleaseStatus releaseStatusByStatus = ReleaseStatus.getReleaseStatusByStatus(statusReason);
        release.setStatus(releaseStatusByStatus);

        nms.updateReleaseById(release);

        return "redirect:news_updateRelease_list";

    }

    @RequestMapping("/updateReleaseById")
    public String selectReleaseById(String id, Map<String, Object> map) {
        Release release = nms.selectReleaseById(id);

        map.put("release", release);
        return "news_update";
    }


    /* *************************新闻数据统计***********************************/
    @RequestMapping("/search-page")
    public String searchPage(Map<String, Object> map) {
     /*   map.put("getMaxCountOfNewsType", nms.getMaxCountOfNewsType());
        map.put("getMinCountOfNewsType", nms.getMaxCountOfNewsType());
        map.put("getTop10News", nms.getTop10News());
        map.put("getTop10Release", nms.getTop10News());*/
        map.put("NewsCount", nms.NewsCount());
        map.put("ReleaseCount", nms.ReleaseCount());
        map.put("sociology", nms.sociology());
        map.put("sport", nms.sport());
        map.put("entertainment", nms.entertainment());
        map.put("finance", nms.finance());
        map.put("technology", nms.technology());

        return "news_index";
    }

}

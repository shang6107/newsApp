package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class ManagerNewsHandler {
    @Autowired
    private NewsManagermentService nms;

    @RequestMapping("/news_test")
    public String selectAllNews(Map<String,Object> map){
        map.put("news",nms.selectAllNews() );
        return "news_test";
    }

}
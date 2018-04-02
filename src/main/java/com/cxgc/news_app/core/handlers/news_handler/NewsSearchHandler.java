package com.cxgc.news_app.core.handlers.news_handler;

import com.cxgc.news_app.core.model.News;
import com.cxgc.news_app.core.services.news_service.NewsSearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 徐瑜壮
 * @Date 2018-04-01 / 04:46:28
 */
@Controller
@RequestMapping("/app")
public class NewsSearchHandler {
    @Autowired
    private NewsSearchService nss;

    @RequestMapping("newsSearch")
    @ResponseBody
    public Map<String, List<News>> newsSearch(String search) {
        System.out.println(search);
        Map<String, List<News>> map = new HashMap<>();
        map.put("newsSearch", nss.newsSearch(search));
        return map;
    }

    @RequestMapping("searchInit")
    @ResponseBody
    public Map<String,List<Object>> searchInit(String userId){


        return null;
    }
}

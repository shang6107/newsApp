package com.cxgc.news_app.core.handlers.news_controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 徐瑜壮
 * @Data 2018-03-21 / 11:17:41
 * @Version
 * @Description
 */
@Controller
public class IndexNewsListHandler {
    /**
     * 首页新闻数据
     * @return 新闻json数据
     */
    @RequestMapping("/newsList")
    @ResponseBody
    public Object indexNewsList(){
        return "username";
    }

}

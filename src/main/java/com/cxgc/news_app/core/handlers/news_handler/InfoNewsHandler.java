package com.cxgc.news_app.core.handlers.news_handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *  @author 唐倩
 *  @Version
 *  @Description
 */
@Controller
public class InfoNewsHandler {

    @RequestMapping("")
    public String test(){

        return "";
    }
}

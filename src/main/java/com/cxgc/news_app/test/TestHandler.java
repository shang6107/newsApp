package com.cxgc.news_app.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 上官炳强
 * @Date 2018-03-21 / 10:26:34
 * @Version
 * @Description
 */
@Controller
public class TestHandler {

    @RequestMapping("/test-static")
    public String test(){
        return "index";
    }

}

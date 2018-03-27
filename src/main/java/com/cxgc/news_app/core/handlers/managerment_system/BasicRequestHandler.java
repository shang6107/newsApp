package com.cxgc.news_app.core.handlers.managerment_system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 04:46:28
 * @Version
 * @Description
 */
@Controller
//@RequestMapping("/management")
public class BasicRequestHandler {

    @RequestMapping("/{pageName}.html")
    public String base(@PathVariable String pageName){
        return pageName;
    }
}

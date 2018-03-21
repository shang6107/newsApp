package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.Manager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description
 */
@Controller
public class ManagerLoginHandler {

    @RequestMapping("/logon")
    public String login(@ModelAttribute("manager") Manager manager,Map<String,Object> map){

        return "index";
    }

}

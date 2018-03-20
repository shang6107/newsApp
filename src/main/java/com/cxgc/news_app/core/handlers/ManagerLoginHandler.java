package com.cxgc.news_app.core.handlers;

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
        if(manager != null){
            if(manager.getPassword() != null && !manager.getPassword().equals("123456")){
                map.put("error","密码不正确");
                return "login";
            }
        }
        System.out.println("manager = " + manager);
        return "index";
    }

}

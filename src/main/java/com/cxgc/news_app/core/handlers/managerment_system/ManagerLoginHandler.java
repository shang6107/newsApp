package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description
 */
@Controller
public class ManagerLoginHandler {

    @Autowired
    private ManagerService service;

    @RequestMapping(value = "/logon",method = RequestMethod.POST)
    @ResponseBody
    public Object login(Manager manager){
        return service.ManagerLogin(manager.getMgrNo(),manager.getPassword());
    }

    @RequestMapping("/selectAllManager")
    public  String selectAllManager(Map<String,Object> map){
        List<Manager> manager = service.getManager();
        System.out.println("manager = " + manager);
        map.put("admins" , manager);
        return "admin_index";
    }
    @RequestMapping("/addManager")
    public String addManager(Map<String,Object> map){
        map.put("admin",new Manager());
        return "add";
    }

}

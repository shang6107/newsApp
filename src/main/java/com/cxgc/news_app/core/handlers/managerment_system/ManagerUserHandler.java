package com.cxgc.news_app.core.handlers.managerment_system;


import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

@Controller
public class ManagerUserHandler {
    @Autowired
    private UserManagementService ums;
@RequestMapping("/list")
    public String selectAllUser(Map<String,Object> map){
    for(User user : ums.selectAllUser()){
        System.out.println("user = " + user);
    }
    map.put("users",ums.selectAllUser() );
    return "list";
}



@RequestMapping("/update")
    public String updateUser(Map<String,Object> map,String id){
        map.put("user",ums.updateUser(id));
        return "update";

}
@RequestMapping("/getUserById")
    public String getUserById(String id){
    User userById = ums.getUserById(id);
        return "";
}
}

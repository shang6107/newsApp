package com.cxgc.news_app.core.handlers.managerment_system;


import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String selectAllUser(Map<String, Object> map) {
        map.put("users", ums.selectAllUser());
        return "list";
    }


    @RequestMapping("/user-management-update")
    public String editUserInfo(@RequestParam(value = "phoneNum", required = false) String phoneNum,
                               Map<String,Object> map) {

        User user = ums.getUserById(phoneNum);

        if(user == null){
            return "redirect:/list?error";
        }else{
            map.put("user",user);
        }

        return "user_management_update";

    }

    @RequestMapping("/getUserById")
    public String getUserById(String id) {
        User user = ums.getUserById(id);
        return "";
    }
}

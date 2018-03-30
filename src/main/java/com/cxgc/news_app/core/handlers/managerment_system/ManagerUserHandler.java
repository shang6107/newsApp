package com.cxgc.news_app.core.handlers.managerment_system;


import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 何其勇
 * @Date
 * @Version
 * @Description
 */

@Controller
@RequestMapping("/management")
public class ManagerUserHandler {
    @Autowired
    private UserManagementService ums;

    @RequestMapping("/user-list")
    public String selectAllUser(Integer pageNum,Integer pageSize,Map<String, Object> map) {
        map.put("users", ums.selectAllUser(pageNum,pageSize));
        return "user_list";
    }

    @RequestMapping("/ajax-user-list")
    @ResponseBody
    public Object selectAllUserAjax(Integer pageNum,Integer pageSize) {
        HashMap<String, Object> objectObjectHashMap = new HashMap<>();
        objectObjectHashMap.put("msg","");
        objectObjectHashMap.put("code",0);
        objectObjectHashMap.put("data",ums.selectAllUser(pageNum,pageSize));
        return objectObjectHashMap;
    }

    @RequestMapping("/user-management-update")
    public String editUserInfo(@RequestParam(value = "phoneNum", required = false) String phoneNum,
                               Map<String,Object> map) {

        User user = ums.getUserByPhoneNum(phoneNum);
        System.out.println(user);
        if(user == null){
            return "redirect:/list?error";
        }else{
            map.put("user",user);
        }

        return "";

    }

    @RequestMapping("/user-getUserByPhoneNum")
    public String getUserByPhoneNum(@RequestParam(value = "phoneNum", required = false) String phoneNum,Map<String,Object> map) {
        User user = ums.getUserByPhoneNum(phoneNum);
        System.out.println(user);
              map.put("user",user);
        return "user_management_update";
    }

    @RequestMapping("/user-statistical")
    public String countNum(Map<String ,Object> map){
        map.put("countMen",ums.countMen());
        map.put("test",ums.test());
        map.put("countAll",ums.countAll());
        map.put("countFreeze",ums.countFreeze());
        map.put("countFailure",ums.countFailure());
        map.put("reports",ums.report());
        map.put("typename",ums.typeName());
        map.put("abnormals",ums.abnormal());

       return "user_index";
    }



}

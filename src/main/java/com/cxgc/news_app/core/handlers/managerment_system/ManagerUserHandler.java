package com.cxgc.news_app.core.handlers.managerment_system;


import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.common.UserType;
import com.cxgc.news_app.core.model.User;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

    @RequestMapping(value = "/user-list")
    public String selectAllUser(Integer pageNum, Integer pageSize, Map<String, Object> map) {
        map.put("users", ums.selectAllUser(pageNum, pageSize));
        return "user_list";
    }

    @RequestMapping(value = "/user-management-update")
    public String editUserInfo(User user, Integer statusReason, String userTypes) throws UnsupportedEncodingException {
        UserStatus userStatusByStatus = UserStatus.getUserStatusByStatus(statusReason);
        user.setNickName(new String(user.getNickName().getBytes("ISO-8859-1"), "UTF-8"));
        user.setAddress(new String(user.getAddress().getBytes("ISO-8859-1"), "UTF-8"));
        user.setIntroduce(new String(user.getIntroduce().getBytes("ISO-8859-1"), "UTF-8"));
        user.setHobby(new String(user.getHobby().getBytes("ISO-8859-1"), "UTF-8"));
        user.setStatus(userStatusByStatus);
        user.setTypeName(UserType.getUserTypeByType(new String(userTypes.getBytes("ISO-8859-1"), "UTF-8")));
        ums.editUserInfo(user);
        System.out.println(user);
        return "user_list";

    }

    @RequestMapping("/user-getUserByPhoneNum")
    public String getUserByPhoneNum(@RequestParam(value = "phoneNum", required = false) String phoneNum, Map<String, Object> map) {
        User user = ums.getUserByPhoneNum(phoneNum);

        map.put("user", user);

        return "test";
    }

    @RequestMapping("/ajax-user-list")
    @ResponseBody
    public Object allUser(Integer pageSize,Integer pageNum){
        return ums.selectAllUser(pageSize, pageNum);
    }

    @RequestMapping("/user-statistical")
    public String countNum(Map<String, Object> map) {
        map.put("countMen", ums.countMen());
        map.put("test", ums.test());
        map.put("countAll", ums.countAll());
        map.put("countFreeze", ums.countFreeze());
        map.put("countFailure", ums.countFailure());
        map.put("reports", ums.report());
        map.put("typename", ums.typeName());
        map.put("abnormals", ums.abnormal());

        return "user_index";
    }

    @RequestMapping("/userawwa")

    public String getAllReport(Map<String,Object> map) {
    map.put("report",ums.getAllReport());

        return "user_index";
    }


}

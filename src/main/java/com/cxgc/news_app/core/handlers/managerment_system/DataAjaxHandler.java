package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.common.WorkType;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import static com.cxgc.news_app.utility.RequestParameterWrapUtil.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;

/**
 * @author 上官炳强
 * @Date 2018-03-31 / 11:23:24
 * @Version
 * @Description ajax 数据请求专用接口
 */
@Controller
@RequestMapping("/ajax")
public class DataAjaxHandler {
    private UserManagementService userManagementService;
    private NewsManagermentService newsManagermentService;
    private ManagerService managerService;

    @Autowired
    public void setManagerService(ManagerService managerService) {
        this.managerService = managerService;
    }

    @Autowired
    public void setUserManagementService(UserManagementService userManagementService) {
        this.userManagementService = userManagementService;
    }
    @Autowired
    public void setNewsManagermentService(NewsManagermentService newsManagermentService) {
        this.newsManagermentService = newsManagermentService;
    }

    @RequestMapping("/user-list")
    @ResponseBody
    public Object userList(Integer pageNum , Integer pageSize) throws ParseException, IllegalAccessException {
        return $(userManagementService.selectAllUser(pageNum,pageSize));
    }

    @RequestMapping("/user-info/{phoneNum}")
    @ResponseBody
    public Object getUserByPhone(@PathVariable("phoneNum") String phoneNum) throws ParseException, IllegalAccessException {
        return $(userManagementService.getUserByPhoneNum(phoneNum));
    }

    @RequestMapping("/manager-list")
    @ResponseBody
    public Object managerList(Integer pageNum , Integer pageSize) throws ParseException, IllegalAccessException {
        return $(managerService.getManager(pageNum, pageSize));
    }

    @RequestMapping("/workType-list")
    @ResponseBody
    public Object allOfWorkType() throws ParseException, IllegalAccessException {
        return $(WorkType.values());
    }

}

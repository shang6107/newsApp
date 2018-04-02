package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.core.config.security.MyManagerDetails;
import com.cxgc.news_app.core.model.Authorities;
import com.cxgc.news_app.core.model.Groups;
import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Path;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 上官炳强
 * @Date 2018-03-20 / 03:36:41
 * @Version
 * @Description 管理员后台操作Controller
 */
@Controller
@RequestMapping("/management")
public class ManagerBaseHandler {
    @Autowired
    private UserManagementService ums;

    /**
     * 管理员登录
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/news_index")
    public String newsPage(ModelMap map){
        map.put("mgr",getPrincipal());
        return "news_index";
    }

    /**
     * 用户管理员主页。登录成功根据重定向策略自动跳转到该 View
     * @param map
     * @return
     */
    @RequestMapping("/user_index")
    public String userPage(ModelMap map){
        map.put("mgr",getPrincipal());
        map.put("countMen",ums.countMen());
        map.put("test",ums.test());
        map.put("countAll",ums.countAll());
        map.put("countFreeze",ums.countFreeze());
        map.put("countFailure",ums.countFailure());
        map.put("reports",ums.report());
        map.put("typename",ums.typeName());
        map.put("abnormals",ums.abnormal());
        map.put("report",ums.getAllReport());
        return "user_index";
    }

    /**
     * 新闻管理员主页。登录成功根据重定向策略自动跳转到该 View
     * @return
     */
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    /**
     * 管理员安全退出系统(注销)的处理方法
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/management/login?logout";
    }


    private String saveManagerHeadImg(MultipartFile file, Manager manager,HttpServletRequest request) throws IOException {
        String realPath = request.getServletContext().getRealPath("/static/img/user/head");
        File headPath = new File(realPath);
        if(!headPath.exists()){
            headPath.mkdirs();
        }
        if(file.getSize() == 0){
            return null;
        }
        String fileName = System.currentTimeMillis()
                + "-" + manager.getMgrNo()
                + "-" + file.getOriginalFilename();
        realPath = headPath + "\\" + fileName;
        headPath = new File(realPath);
        file.transferTo(headPath);
        return realPath;
    }


    @Autowired
    private ManagerService managerService;
    @RequestMapping("/root/manager-freeze")
    @ResponseBody
    public Object managerFreeze(String status , String mgrNo){
        if(status != null && mgrNo != null){
            String reasonChinese = status.equals("NORMAL") ?
                    "正常" : (status.equals("FREEZE") ?
                    "冻结" : (status.equals("ABNORMAL") ?
                    "异常" : "失效"));
            Manager manager = new Manager();
            manager.setMgrNo(mgrNo);
            manager.setStatus(UserStatus.getUserStatusByReason(reasonChinese));
            managerService.updateManagerStatus(manager);
            Map<String,Object> map = new HashMap<>(1);
            map.put("result","ok");
            return map;
        }
        return null;
    }


    private void setManagerResultMap(Map<String,Object> map){
        List<Groups> allGroups = managerService.getAllGroups();
        for(Groups g : allGroups){
            if(g.getGroupName().equals("超级管理员")){
                allGroups.remove(g);
            }
        }
        map.put("allStatus",UserStatus.values());
        map.put("allGroups",allGroups);
    }

    @Autowired
    private UserDetailsService userDetailsService;
    @RequestMapping("/root/manager-edit/{mgrNo}")
    public String updateManagerInfo(@PathVariable("mgrNo")String mgrNo, Map<String,Object> map,HttpServletRequest request){
        if(mgrNo != null && !mgrNo.equals("")){
            setManagerResultMap(map);
            MyManagerDetails managerDetails =(MyManagerDetails) userDetailsService.loadUserByUsername(mgrNo);
            Manager manager = managerDetails.getDomain();
            if(manager != null){
                String headImg = manager.getHeadImg();
                //:TODO 管理员头像！！
            }
            map.put("manager",manager);
        }
        return "root_management_edit";
    }

    @RequestMapping("/root/manager-update")
    public String updateManager(@Validated Manager manager,
                                BindingResult result,
                                String password1,
                                @RequestParam("file") MultipartFile file,
                                Map<String,Object> map,
                                HttpServletRequest request,
                                String stat) throws IOException {
        if(result.hasFieldErrors() || password1 != null && !password1.equals(manager.getPassword())){
            if(result.hasFieldErrors()){
                setManagerResultMap(map);
                return "root_management_edit";
            }
            result.rejectValue("password","两次密码不一致");
            return "root_management_edit";
        }
        setManagerResultMap(map);
        String path = saveManagerHeadImg(file, manager, request);

        manager.setHeadImg(path);
        manager.setStatus(UserStatus.getUserStatusByReason(stat));
//        manager.setGroups(managerService.getGroupByName(manager.getGroups().getGroupName()));
        managerService.updateManager(manager);
        return "redirect:/management/root_management.html";
    }

}

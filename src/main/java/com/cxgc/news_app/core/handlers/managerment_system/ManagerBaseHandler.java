package com.cxgc.news_app.core.handlers.managerment_system;

import com.cxgc.news_app.common.UserStatus;
import com.cxgc.news_app.core.config.security.MyManagerDetails;
import com.cxgc.news_app.core.model.Authorities;
import com.cxgc.news_app.core.model.Groups;
import com.cxgc.news_app.core.model.Manager;
import com.cxgc.news_app.core.services.managerment_service.ManagerService;
import com.cxgc.news_app.core.services.managerment_service.NewsManagermentService;
import com.cxgc.news_app.core.services.managerment_service.UserManagementService;
import com.cxgc.news_app.utility.idutil.UtilY;
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
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Path;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private ManagerService managerService;
    @Autowired
    private NewsManagermentService nms;

    @ModelAttribute
    public void getModel(@RequestParam(value = "id", required = false) String id, Map<String, Object> map) {
        if (id != null) {
            Manager manager1 = managerService.getManagerById(id);
            map.put("manager", manager1);
        }
    }

    /**
     * 管理员登录
     *
     * @return
     */
    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    /**
     * 新闻管理员主页
     *
     * @param map
     * @return
     */
    @RequestMapping("/news_index")
    public String newsPage(ModelMap map) {
        map.put("mgr", getPrincipal());
        map.put("NewsCount", nms.NewsCount());
        map.put("ReleaseCount", nms.ReleaseCount());
        map.put("sociology",nms.sociology());
        map.put("sport",nms.sport());
        map.put("entertainment",nms.entertainment());
        map.put("finance",nms.finance());
        map.put("technology",nms.technology());

        return "news_index";
    }

    /**
     * 用户管理员主页。登录成功根据重定向策略自动跳转到该 View
     *
     * @param map
     * @return
     */
    @RequestMapping("/user_index")
    public String userPage(ModelMap map) {
        map.put("mgr", getPrincipal());
        map.put("countMen", ums.countMen());
        map.put("test", ums.test());
        map.put("countAll", ums.countAll());
        map.put("countFreeze", ums.countFreeze());
        map.put("countFailure", ums.countFailure());
        map.put("reports", ums.report());
        map.put("typename", ums.typeName());
        map.put("abnormals", ums.abnormal());
        map.put("report", ums.getAllReport());
        return "user_index";
    }

    /**
     * 新闻管理员主页。登录成功根据重定向策略自动跳转到该 View
     *
     * @return
     */
    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication();
        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    /**
     * 管理员安全退出系统(注销)的处理方法
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/management/login?logout";
    }


    /**
     * 处理管理员上传的头像图片路径，并保存到服务器指定路径
     *
     * @param file
     * @param manager
     * @param request
     * @return
     * @throws IOException
     */
    private String saveManagerHeadImg(MultipartFile file, Manager manager, HttpServletRequest request) throws IOException {
        String realPath = request.getServletContext().getRealPath("/static/img/user/head");
        File headPath = new File(realPath);
        if (!headPath.exists()) {
            headPath.mkdirs();
        }
        if (file.getSize() == 0) {
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


    /**
     * 超级管理员对普通管理员信息查看的ajax
     *
     * @param status
     * @param mgrNo
     * @return
     */
    @RequestMapping("/root/manager-freeze")
    @ResponseBody
    public Object managerFreeze(String status, String mgrNo) {
        if (status != null && mgrNo != null) {
            String reasonChinese = status.equals("NORMAL") ?
                    "正常" : (status.equals("FREEZE") ?
                    "冻结" : (status.equals("ABNORMAL") ?
                    "异常" : "失效"));
            Manager manager = new Manager();
            manager.setMgrNo(mgrNo);
            manager.setStatus(UserStatus.getUserStatusByReason(reasonChinese));
            managerService.updateManagerStatus(manager);
            Map<String, Object> map = new HashMap<>(1);
            map.put("result", "ok");
            return map;
        }
        return null;
    }

    /**
     * 跳转普通管理员的资料编辑页面的所有管理员角色信息和状态信息的值回显处理方法
     *
     * @param map
     */
    private void setManagerResultMap(Map<String, Object> map) {
        List<Groups> allGroups = managerService.getAllGroups();
        for (Groups g : allGroups) {
            if (g.getGroupName().equals("超级管理员")) {
                allGroups.remove(g);
            }
        }
        //modelMap中放入两个值
        map.put("allStatus", UserStatus.values());
        map.put("allGroups", allGroups);
    }


    /**
     * 跳转普通管理员的资料编辑页面的值回显处理方法
     *
     * @param mgrNo
     * @param map
     * @param request
     * @return
     */
    @RequestMapping("/root/manager-edit/{mgrNo}")
    public String updateManagerInfo(@PathVariable("mgrNo") String mgrNo, Map<String, Object> map, HttpServletRequest request) {
        if (mgrNo != null && !mgrNo.equals("")) {
            setManagerResultMap(map);
            MyManagerDetails managerDetails = (MyManagerDetails) userDetailsService.loadUserByUsername(mgrNo);
            Manager manager = managerDetails.getDomain();
            if (manager != null) {
                //处理管理员头像图片路径
                String headImg = manager.getHeadImg();
                if (headImg != null && !headImg.equals("") && headImg.contains("\\static")) {
                    String headImgPath = headImg.substring(headImg.indexOf("\\static") + 1);
                    manager.setHeadImg(headImgPath);
                }
            }
            map.put("manager", manager);
        }
        return "root_management_edit";
    }

    /**
     * 超级管理员对普通管理员的资料编辑处理方法
     *
     * @param manager
     * @param result
     * @param password1
     * @param file
     * @param map
     * @param request
     * @param stat
     * @return
     * @throws IOException
     */
    @RequestMapping("/root/manager-update")
    public String updateManager(
            @ModelAttribute @Validated Manager manager,
            BindingResult result,
            String password1,
            @RequestParam("file") MultipartFile file,
            Map<String, Object> map,
            HttpServletRequest request,
            String stat) throws IOException {
        setManagerResultMap(map);

        //判断验证结果
        if (result.hasFieldErrors()) {
            //如果前台页面修改了密码字段，且两次密码输入不相同，则注入该错误消息，并转发回编辑页面
            if (password1 != null && manager.getPassword() != null && !password1.equals(manager.getPassword())) {
                result.rejectValue("password", "manager.password.eq");
                return "root_management_edit";
            }

            //如果第二次密码输入框为空
            if (password1 == null && manager.getPassword() != null) {
                boolean flag = false;
                boolean hasOtherError = false;
                List<FieldError> fieldErrors = result.getFieldErrors();
                for (FieldError fieldError : fieldErrors) {
                    if (fieldError.getField().equals("password")) {
                        flag = true;
                    } else {
                        hasOtherError = true;
                    }
                }

                //判断是否只有密码字段出错。
                if (flag && hasOtherError) {
                    //如果还有其他错误，转发回输入页面
                    result.rejectValue("password", "manager.password.eq");
                    return "root_management_edit";
                }
            }
        }
        //保存管理员上传的头像图片到指定路径
        String path = saveManagerHeadImg(file, manager, request);

        //设置头像路径属性
        manager.setHeadImg(path);
        //设置管理员状态
        manager.setStatus(UserStatus.getUserStatusByReason(stat));
        //调用业务方法
        managerService.updateManager(manager);
        return "redirect:/management/root_management.html";
    }

    @RequestMapping("/backlog")
    public String backlog(String content, String work, String title, String mgrNo, String date) throws ParseException {
        Map<String, Object> backlog = new HashMap<>();
        Date[] range = new Date[2];
        if (date != null && date.split(" - ").length == 2) {
            String[] dates = date.split(" - ");
            range[0] = new SimpleDateFormat("yyyy-MM-dd").parse(dates[0].trim());
            range[1] = new SimpleDateFormat("yyyy-MM-dd").parse(dates[1].trim());
        }
        backlog.put("content", content);
        backlog.put("id", UtilY.getId());
        backlog.put("work", work);
        backlog.put("beginDate", range[0]);
        backlog.put("endDate", range[1]);
        backlog.put("title", title);
        backlog.put("mgrNo", mgrNo);
        managerService.backlog(backlog);
        return "redirect:/management/root_management.html";
    }

}

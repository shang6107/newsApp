package com.test.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.common.Prompt;
import com.test.model.Email;
import com.test.model.User;
import com.test.page.EmailPage;
import com.test.service.EmailService;
import com.test.service.UserService;

/**
 * 邮件控制器
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/admin/email")
public class EmailController {

	@Resource
	private EmailService emailService;

	@Resource
	private UserService userService;

	/**
	 * 收件箱列表
	 * 
	 * @return
	 */
	@RequestMapping("/list")
	public ModelAndView list(EmailPage page, HttpSession httpSession) {
		// session中查询用户数据
		User user = (User) httpSession.getAttribute("UserAdmin");
		page.setReceive(user.getAccount());
		return new ModelAndView("emailList").addObject("page", emailService.selectPage(page));
	}

	/**
	 * 写信页面
	 * 
	 * @return
	 */
	@RequestMapping("/addEmail")
	public String addEmail(HttpSession session , Model model) {
		// session中查询用户数据
		User user = (User) session.getAttribute("UserAdmin");
		model.addAttribute("list", userService.selectNoAccount(user));
		return "addEmail";
	}

	/**
	 * 发送短信
	 * 
	 * @param email
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/insertEmail")
	public String insertEmail(Email email, HttpSession session) {
		// 查詢是否存在,如果不存在就返回提示
		if (!userService.selectByAccount(email.getReceive())) {
			return Prompt.noexistent.getName();
		}
		User user = (User) session.getAttribute("UserAdmin");
		// 保存发送人账号
		email.setSender(user.getAccount());
		// 发送数据
		if (emailService.insertEmail(email))
			return Prompt.success.getName();
		return Prompt.fail.getName();
	}

	/**
	 * 移动到回收站
	 * 
	 * @param ids
	 * @param session
	 * @param show
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/recycle")
	public String recycle(int[] id, HttpSession session, int show) {
		User user = (User) session.getAttribute("UserAdmin");
		// 移动到回收站
		if (emailService.updateEmailShow(id, user.getAccount(), show))
			return Prompt.success.getName();
		return Prompt.deleterror.getName();
	}

	/**
	 * 详情页
	 * 
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/emailInfo")
	public ModelAndView emailInfo(int id, HttpSession session) {
		User user = (User) session.getAttribute("UserAdmin");
		Email email = emailService.selectByIdByTheAccount(id, user);
		// 如果还未读,则修改成已读
		if (email != null && email.getSee_state() == 0)
			emailService.updateEmailSeeState(id, user.getAccount());
		return new ModelAndView("emailInfo").addObject("email", email);
	}

	/**
	 * 删除
	 * 
	 * @param ids
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/deleteEmail")
	public String deleteEmail(int id, HttpSession session) {
		User user = (User) session.getAttribute("UserAdmin");
		// 删除
		if (emailService.deleteEmail(id, user.getAccount()))
			return Prompt.success.getName();
		return Prompt.deleterror.getName();
	}

	/**
	 * 回收站
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/litter")
	public ModelAndView litter(EmailPage page, HttpSession session) {
		// session中查询用户数据
		User user = (User) session.getAttribute("UserAdmin");
		page.setReceive(user.getAccount());
		// 查询不显示的
		page.setShow(0);
		return new ModelAndView("litter").addObject("page", emailService.selectPage(page));
	}
	
}

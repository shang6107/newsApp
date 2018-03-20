package com.test.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.service.UserService;

@Controller
@RequestMapping("/admin/user")
public class UserController {

	@Resource
	private UserService userService;
}

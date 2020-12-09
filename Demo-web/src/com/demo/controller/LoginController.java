package com.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.bean.User;
import com.demo.serviceimp.UserServiceImp;

@Controller
public class LoginController {
	@Autowired
	private UserServiceImp userserviceimp;

	public void setUserserviceimp(UserServiceImp userserviceimp) {
		this.userserviceimp = userserviceimp;
	}

	@RequestMapping("/LoginJudgment.do")
	public String LoginJudgment(@RequestParam("cellphone") String cellphone,
								@RequestParam("password") String password,
								HttpSession session) {
		User user = (User) userserviceimp.select(cellphone);
		if(user.getCellphone().equals(cellphone)&&user.getPassword().equals(password))
		{
			session.setAttribute("user", user);
			return "redirect:/index.do";
		}
		else {
			session.setAttribute("error","ÃÜÂë´íÎó£¬ÇëÖØÐÂµÇÂ¼£¡");
			return "redirect:/login.do";
		}
		
		
	}
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	@RequestMapping("/index.do")
	public String index(Model model,HttpSession session,Integer cellphone) {
		
			User user = (User) session.getAttribute("user");
			model.addAttribute("List",userserviceimp.selectAll(user.getCellphone()));
			return "index";
		
	}
}

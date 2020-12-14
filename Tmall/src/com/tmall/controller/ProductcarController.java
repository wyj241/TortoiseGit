package com.tmall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tmall.bean.Car;
import com.tmall.bean.Productcar;
import com.tmall.bean.User;
import com.tmall.serviceimp.ProductcarServiceimp;

@Controller
public class ProductcarController {
	@Autowired
	ProductcarServiceimp productCarServiceimp;
	//购物车页面显示
	@RequestMapping("/car.do")
	public String car(Model model,HttpSession session,Integer userid) {
		User user = (User) session.getAttribute("user");
		int user_id = user.getUserid();
		List<Productcar> sList = productCarServiceimp.findAll(user_id);	
		model.addAttribute("List",sList);		
		return "car";
	}
	
	
	
}

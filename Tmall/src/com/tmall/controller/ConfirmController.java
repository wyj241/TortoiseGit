package com.tmall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmall.bean.Address;
import com.tmall.bean.Productcar;
import com.tmall.bean.User;
import com.tmall.serviceimp.AddressServiceImp;
import com.tmall.serviceimp.ProductcarServiceimp;

@Controller
public class ConfirmController {
	@Autowired
	private AddressServiceImp imp;
	public void setImp(AddressServiceImp imp) {
		this.imp = imp;
	}
	@Autowired
	private ProductcarServiceimp productCarServiceimp;
	public void setProductCarServiceimp(ProductcarServiceimp productCarServiceimp) {
		this.productCarServiceimp = productCarServiceimp;
	}
	
	//≤È—Øµÿ÷∑
	@RequestMapping("/confirm.do")
	public String searchaddress(Model model,HttpSession session) {
		User user = (User) session.getAttribute("user");
		int userid = user.getUserid();
		List<Productcar> sList = productCarServiceimp.findAll(userid);	
		model.addAttribute("List",sList);	
		List<Address> dList = imp.selectAll(userid);
		model.addAttribute("addressList",dList);	
		return "confirm";
	}

}

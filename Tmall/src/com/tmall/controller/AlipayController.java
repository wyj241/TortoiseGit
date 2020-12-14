package com.tmall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmall.bean.Productcar;
import com.tmall.bean.User;
import com.tmall.serviceimp.CarServiceImp;
import com.tmall.serviceimp.ProductcarServiceimp;

@Controller
public class AlipayController {
@Autowired
ProductcarServiceimp productCarServiceimp;
@Autowired
CarServiceImp imp;
@RequestMapping("/return_url.do")
public String returnurl() {
	return "return_url";
}

@RequestMapping("/notify_url.do")
public String notifyurl() {
	return "notify_url";
}

@RequestMapping("/alipay.trade.refund.do")
public String alipaytraderefund() {
	return "alipay.trade.refund";
}

@RequestMapping("/alipay.trade.query.do")
public String alipaytradequery() {
	return "alipay.trade.query";
}

@RequestMapping("/alipay.trade.page.pay.do")
public String alipaytradepagepay() {
	
	return "alipay.trade.page.pay";
}

@RequestMapping("/alipay.trade.fastpay.refund.query.do")
public String alipaytradefastpayrefundquery() {
	return "alipay.trade.fastpay.refund.query";
}

@RequestMapping("/alipay.trade.close.do")
public String alipaytradeclose() {
	return "alipay.trade.close";
}

@RequestMapping("/pay.do")
public String indexpay(Model model,HttpSession session,Integer userid) {
	User user = (User) session.getAttribute("user");
    model.addAttribute("List", imp.selectmoney(user.getUserid()));
	return "pay";
}
@RequestMapping("/order.do")
public String order(Model model,HttpSession session,Integer userid) {
	User user = (User) session.getAttribute("user");
	int user_id = user.getUserid();
	List<Productcar> sList = productCarServiceimp.findAll(user_id);	
	model.addAttribute("List",sList);	
	return "order";
}
}

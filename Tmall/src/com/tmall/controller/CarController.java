package com.tmall.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tmall.bean.Car;
import com.tmall.bean.Productcar;
import com.tmall.bean.User;
import com.tmall.serviceimp.CarServiceImp;


@Controller
public class CarController {
	@Autowired
	private CarServiceImp imp;
	public void setImp(CarServiceImp imp) {
		this.imp = imp;
	}
	
	//添加购物车
	@RequestMapping(value="/addcar.do",method = RequestMethod.POST)
	public String addcar(Car car,Integer pid,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException {		
		request.setCharacterEncoding("UTF-8");		
		imp.insert(car);
		return "redirect:/index.do";
	}
	//删除
			@RequestMapping("/deletecar.do")
			public String deletecar(Model model,Integer pid,HttpSession session) {
				imp.delete(pid);
				return "redirect:/car.do";
			}
			//更新购物车数量价格
			@RequestMapping("/updatenum.do")
			@ResponseBody
			public String update(HttpServletRequest request,HttpSession session) {
				int num = Integer.parseInt(request.getParameter("num"));
				int money=Integer.parseInt(request.getParameter("money"));
				int pid = Integer.parseInt(request.getParameter("pid"));
				User user = (User)session.getAttribute("user");
				if(user != null) {
					int userid = user.getUserid();
					Car car = new Car();
					car.setPid(pid);
					car.setUserid(userid);
					car.setMoney(money);
					car.setNum(num);					
					imp.update(car);
					return "更新成功";
				}else {
					return "更新失败";
				}		
			}
			
}

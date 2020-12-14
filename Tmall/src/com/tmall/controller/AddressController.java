package com.tmall.controller;


import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmall.bean.Address;
import com.tmall.bean.User;
import com.tmall.serviceimp.AddressServiceImp;

@Controller
public class AddressController {
	@Autowired
	private AddressServiceImp imp;
	public void setImp(AddressServiceImp imp) {
		this.imp = imp;
	}
	//address.jspҳ��
	@RequestMapping(value="/address.do")
	public String address(Model model,HttpSession session,Integer userid) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("List",imp.selectAll(user.getUserid()));
		return "address";
	}
	//����ջ���ַ
	@RequestMapping("/addAddress.do")
	public String addAddress(Address address,HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		imp.insert(address);
		return "redirect:/address.do";
	}
	//��id
	@RequestMapping(value="/findById.do")
	public String findById(Integer id,Model model) {
		Address address = imp.findById(id);
		model.addAttribute("address",address);
		return "addressUpdate";
	}
	//�޸��ջ���ַ
	@RequestMapping(value="/addressUpdate.do")
	public String addressUpdate(Integer id,Address address) {
		imp.update(address);
		return "redirect:/address.do";
	}
	//ɾ����ַ
	@RequestMapping(value="/deleteAddress.do")
	public String deleteAddress(int id) {
		imp.delete(id);
		return "redirect:/address.do";
	}

}

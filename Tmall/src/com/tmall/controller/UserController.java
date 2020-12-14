package com.tmall.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.tmall.bean.User;
import com.tmall.serviceimp.UserServiceImp;
@Controller
public class UserController {
	@Autowired
	private UserServiceImp userserviceimp;

	public void setUserserviceimp(UserServiceImp userserviceimp) {
		this.userserviceimp = userserviceimp;
	}
	//��ѯ
	@RequestMapping(value="/userlist",method=RequestMethod.GET)
	public String selectAll(Model model,HttpSession session) {
		User user = (User)session.getAttribute("user");
		model.addAttribute("List",userserviceimp.selectAll(user.getUsername()));
		return "userlist";
	}
	
	@RequestMapping("/LoginJudgment.do")
	public String LoginJudgment(@RequestParam("username") String username,
								@RequestParam("password") String password,
								HttpSession session) {
		User user = (User) userserviceimp.select(username);
		if(user.getUsername().equals(username)&&user.getPassword().equals(password))
		{
			session.setAttribute("user", user);
			return "redirect:/index.do";
		}
		else {
			session.setAttribute("error","������������µ�¼��");
			return "redirect:/login.do";
		}
		
		
	}
	
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/index.do")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/register.do")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/insertUser.do")	
		public String fileUpload(MultipartFile file,User user, ModelMap map,HttpServletRequest request) throws IOException {
		request.setCharacterEncoding("UTF-8");    
		/**
	         * �ϴ�ͼƬ
	         */
	        //ͼƬ�ϴ��ɹ��󣬽�ͼƬ�ĵ�ַд�����ݿ�
	        String filePath = "D:\\image";//����ͼƬ��·��,tomcat��������
	        //��ȡԭʼͼƬ����չ��
	        String originalFilename = file.getOriginalFilename();
	        //�µ��ļ����֣�ʹ��uuid���������+ԭʼͼƬ���֣����������ظ�
	        String newFileName = UUID.randomUUID()+originalFilename;
	        //��װ�ϴ��ļ�λ�õ�ȫ·��������Ӳ��·��+�ļ���
	        File targetFile = new File(filePath,newFileName); 
	        //�ѱ����ļ��ϴ����Ѿ���װ�õ��ļ�λ�õ�ȫ·�����������targetFile
	        file.transferTo(targetFile);
	        user.setUserimage(newFileName);//�ļ������浽ʵ�����Ӧ������
	        
	        /**
	         * ������Ʒ
	         */
	        userserviceimp.insertUser(user);
			return "redirect:/login.do"; //�ض��򵽲�ѯ
	    }

		
	}



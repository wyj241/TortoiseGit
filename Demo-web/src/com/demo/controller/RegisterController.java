package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.demo.bean.User;
import com.demo.serviceimp.UserServiceImp;
@Controller
public class RegisterController {
	@Autowired
	private UserServiceImp userserviceimp;

	public void setUserserviceimp(UserServiceImp userserviceimp) {
		this.userserviceimp = userserviceimp;
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
        user.setImage(newFileName);//�ļ������浽ʵ�����Ӧ������
        
        /**
         * ������Ʒ
         */
        userserviceimp.insertUser(user);
		return "redirect:/login.do"; //�ض��򵽲�ѯ
    }

}

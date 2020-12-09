package com.demo.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.bean.User;
import com.demo.service.UserService;
import com.demo.dao.UserDao;
@Service
public class UserServiceImp implements UserService{
	@Autowired
	private UserDao dao;
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return dao.insertUser(user);
	}

	@Override
	public User select(String cellphone) {
		// TODO Auto-generated method stub
		return dao.select(cellphone);
	}

	@Override
	public List<User> selectAll(String cellphone) {
		// TODO Auto-generated method stub
		return dao.selectAll(cellphone);
	}

}

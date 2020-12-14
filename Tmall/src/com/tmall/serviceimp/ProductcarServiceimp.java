package com.tmall.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmall.bean.Productcar;
import com.tmall.dao.ProductcarDao;
import com.tmall.service.ProductcarService;
@Service
public class ProductcarServiceimp implements ProductcarService {
	@Autowired
	ProductcarDao productCarDao;
	
	public List<Productcar> findAll(int user_id){
		return productCarDao.findAll(user_id);
	}

	@Override
	public int update(Productcar productcar) {
		// TODO Auto-generated method stub
		return productCarDao.update(productcar);
	}

	
	
}

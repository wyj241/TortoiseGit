package com.tmall.service;

import java.util.List;

import com.tmall.bean.Productcar;

public interface ProductcarService {
	List<Productcar> findAll(int user_id);
	public int update(Productcar productcar);
}

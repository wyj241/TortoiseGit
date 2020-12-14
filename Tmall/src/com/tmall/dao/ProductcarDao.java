package com.tmall.dao;

import java.util.List;

import com.tmall.bean.Productcar;

public interface ProductcarDao {
	List<Productcar> findAll(int user_id);
	public int update(Productcar productcar);
}

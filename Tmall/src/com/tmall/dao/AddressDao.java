package com.tmall.dao;

import java.util.List;

import com.tmall.bean.Address;

public interface AddressDao {
	public int insert(Address address);
	public int delete(int id);
	public int update(Address address);
	public List<Address> selectAll(int userid);
	public Address findById(int id);
}

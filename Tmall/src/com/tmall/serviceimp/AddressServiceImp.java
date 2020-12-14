package com.tmall.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmall.bean.Address;
import com.tmall.dao.AddressDao;
import com.tmall.service.AddressService;

@Service
public class AddressServiceImp implements AddressService{
	@Autowired
    private AddressDao dao;
	public void setDao(AddressDao dao) {
		this.dao = dao;
	}
	@Override
	public int insert(Address address) {
		// TODO Auto-generated method stub
		return dao.insert(address);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public int update(Address address) {
		// TODO Auto-generated method stub
		return dao.update(address);
	}

	@Override
	public List<Address> selectAll(int userid) {
		// TODO Auto-generated method stub
		return dao.selectAll(userid);
	}
	@Override
	public Address findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

}

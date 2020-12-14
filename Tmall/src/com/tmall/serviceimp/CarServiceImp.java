package com.tmall.serviceimp;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmall.bean.Car;

import com.tmall.dao.CarDao;
import com.tmall.service.CarService;

@Service
public class CarServiceImp implements CarService{
    @Autowired
    private CarDao dao;
	@Override
	public int insert(Car car) {
		// TODO Auto-generated method stub
		return dao.insert(car);
	}

	@Override
	public int delete(int pid) {
		// TODO Auto-generated method stub
		return dao.delete(pid);
	}

	@Override
	public int update(Car car) {
		// TODO Auto-generated method stub
		return dao.update(car);
	}

	@Override
	public Car findByPid(int pid) {
		// TODO Auto-generated method stub
		return dao.findByPid(pid);
	}

	@Override
	public List<Car> selectmoney(int userid) {
		// TODO Auto-generated method stub
		return dao.selectmoney(userid);
	}

	

	
	

}

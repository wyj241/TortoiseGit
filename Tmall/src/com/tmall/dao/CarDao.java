package com.tmall.dao;

import java.util.List;

import com.tmall.bean.Car;

public interface CarDao {
	public int insert(Car car);
	public int delete(int pid);
	public int update(Car car);
	public Car findByPid(int pid);
	public List<Car> selectmoney(int userid);

}

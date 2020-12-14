package com.tmall.serviceimp;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tmall.bean.Product;
import com.tmall.dao.ProductDao;
import com.tmall.service.ProductService;

@Service
public class ProductServiceImp implements ProductService{
    @Autowired
    private ProductDao dao;
    public void setDao(ProductDao dao) {
		this.dao = dao;
	}
	@Override
	public int insert(Product product) {
		// TODO Auto-generated method stub
		return dao.insert(product);
	}
	@Override
	public Product findById(int pid) {
		// TODO Auto-generated method stub
		return dao.findById(pid);
	}
	@Override
	public List<Product> selectAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}
	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return dao.update(product);
	}
	@Override
	public List<Product> selectKind(String pkind) {
		// TODO Auto-generated method stub
		return dao.selectKind(pkind);
	}
	@Override
	public List<Product> selectHu() {
		// TODO Auto-generated method stub
		return dao.selectHu();
	}
	@Override
	public Product findByHuId(int pid) {
		// TODO Auto-generated method stub
		return dao.findByHuId(pid);
	}
	

}

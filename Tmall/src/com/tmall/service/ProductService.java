package com.tmall.service;



import java.util.List;

import com.tmall.bean.Product;

public interface ProductService {
	 public int insert(Product product);
	 public int update(Product product);
	 public Product findById(int pid);
	 public Product findByHuId(int pid);
	 public List<Product> selectAll();
	 public List<Product> selectHu();
	 public List<Product> selectKind(String pkind);
}

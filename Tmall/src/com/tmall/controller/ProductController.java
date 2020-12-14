package com.tmall.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.tmall.bean.Product;


import com.tmall.serviceimp.ProductServiceImp;

@Controller
public class ProductController {
	@Autowired
	private ProductServiceImp imp;
	
	public void setImp(ProductServiceImp imp) {
		this.imp = imp;
	}
	//童装商品页面
	@RequestMapping(value="/product.do")
	public String product(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		model.addAttribute("List", imp.selectAll());
		return "product";
	}
	//护肤商品页面
	@RequestMapping("/hufu.do")
	public String hufu(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		model.addAttribute("List", imp.selectHu());
		return "hufu";
	}
	//商品详情信息展示
	@RequestMapping("/productshow.do")
	public String productshow(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		return "productshow";
		
	}
	@RequestMapping("/hufushow.do")
	public String hufushow(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		return "hufushow";
		
	}
	//增加商品
//	@RequestMapping("/addProduct.do")
//	public String addProduct(Product product,HttpServletRequest request) throws UnsupportedEncodingException {
//		request.setCharacterEncoding("UTF-8");
//		imp.insert(product);
//		return " product";
//	}
	//根据id查询童装商品
	@RequestMapping(value="/findbyid.do")
	public String findById(Integer pid,Model model) {
		Product product = imp.findById(pid);
		model.addAttribute("product", product);
		return"productshow";
	}
	//搜索框根据商品种类(关键字查询)
	@RequestMapping("/selectKind.do")
	public String selectKind(String pkind,Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");
		model.addAttribute("List", imp.selectKind(pkind));
		return "productselect";
	}
	@RequestMapping("/productselect.do")
	public String productselect() {
		return "productselect.do";
	}
	//根据id查询护肤
	@RequestMapping(value="/findbyhuid.do")
	public String findByHuId(Integer pid,Model model) {
		Product product = imp.findByHuId(pid);
		model.addAttribute("product", product);
		return"hufushow";
	}
	
}

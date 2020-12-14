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
	//ͯװ��Ʒҳ��
	@RequestMapping(value="/product.do")
	public String product(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		model.addAttribute("List", imp.selectAll());
		return "product";
	}
	//������Ʒҳ��
	@RequestMapping("/hufu.do")
	public String hufu(Model model,HttpSession session) {
		Product product =(Product)session.getAttribute("product");	
		model.addAttribute("List", imp.selectHu());
		return "hufu";
	}
	//��Ʒ������Ϣչʾ
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
	//������Ʒ
//	@RequestMapping("/addProduct.do")
//	public String addProduct(Product product,HttpServletRequest request) throws UnsupportedEncodingException {
//		request.setCharacterEncoding("UTF-8");
//		imp.insert(product);
//		return " product";
//	}
	//����id��ѯͯװ��Ʒ
	@RequestMapping(value="/findbyid.do")
	public String findById(Integer pid,Model model) {
		Product product = imp.findById(pid);
		model.addAttribute("product", product);
		return"productshow";
	}
	//�����������Ʒ����(�ؼ��ֲ�ѯ)
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
	//����id��ѯ����
	@RequestMapping(value="/findbyhuid.do")
	public String findByHuId(Integer pid,Model model) {
		Product product = imp.findByHuId(pid);
		model.addAttribute("product", product);
		return"hufushow";
	}
	
}

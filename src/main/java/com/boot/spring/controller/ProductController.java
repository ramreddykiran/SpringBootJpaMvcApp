package com.boot.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.boot.spring.domain.Product;
import com.boot.spring.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/all")
	public ModelAndView getProducts() {
		ModelAndView mv = new ModelAndView();
		
		List<Product> products = productService.getProductDetails();
		
		mv.setViewName("products");
		mv.addObject("products", products);
		return mv;
	}
	
	@GetMapping("/{pid}")
	public ModelAndView getProduct(@PathVariable(value="pid") String pId) {
		ModelAndView mv = new ModelAndView("product-detail");
		Product product = productService.getProduct(pId);
		mv.addObject("product", product);
		return mv;
	}
	

}

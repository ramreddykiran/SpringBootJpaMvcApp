package com.boot.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.spring.domain.Product;
import com.boot.spring.repository.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	public List<Product> getProductDetails() {
		
		List<Product> products = (List<Product>) productRepository.findAll();
		
		return products;
	}

	public Product getProduct(String pId) {
		return productRepository.findById(pId).orElse(new Product());
	}

}

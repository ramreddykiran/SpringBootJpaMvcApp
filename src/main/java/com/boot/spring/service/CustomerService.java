package com.boot.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.spring.domain.Customer;
import com.boot.spring.repository.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerRepository customerRepository;

	public List<Customer> getCustomers() {
		return customerRepository.findAll();
	}

}

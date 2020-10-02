package com.boot.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.boot.spring.domain.Customer;
import com.boot.spring.service.CustomerService;

@Controller
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getCustomers() {
		ModelAndView mv = new ModelAndView("customers");
		List<Customer> customers = customerService.getCustomers();
		mv.addObject("customers", customers);
		return mv;
	}

}

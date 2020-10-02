package com.boot.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class WelcomeController {

	@RequestMapping(method = RequestMethod.GET)
	//@GetMapping("")
	
	//Comment the class level @RequestMapping annotation and uncomment the below line
	//	@RequestMapping(value = "home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		System.out.println("home page");
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

}

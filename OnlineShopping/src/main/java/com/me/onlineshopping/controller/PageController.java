package com.me.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController
{
	@RequestMapping(value={"/", "/index", "/home"})
	public ModelAndView index()
	{
		ModelAndView model = new ModelAndView("page");
		model.addObject("title", "Home");
		model.addObject("userClickHome", true);
		return model;
	}
	
	@RequestMapping(value={"/about"})
	public String about(Model model)
	{
		model.addAttribute("title", "About Us");
		model.addAttribute("userClickAbout", true);
		return "page";
	}
	@RequestMapping(value={"/contact"})
	public String contact(Model model)
	{
		model.addAttribute("title", "Contact Us");
		model.addAttribute("userClickContact", true);
		return "page";
	}
	@RequestMapping(value={"/listProducts"})
	public String listProducts(Model model)
	{
		model.addAttribute("title", "List Of Products");
		model.addAttribute("userClickListProducts", true);
		return "page";
	}
}

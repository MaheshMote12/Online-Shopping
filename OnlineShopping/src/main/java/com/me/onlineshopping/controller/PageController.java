package com.me.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.me.shoppingbackend.dao.CategoryDAO;
import com.me.shoppingbackend.dto.Category;

@Controller
public class PageController
{
	@Autowired
	private CategoryDAO categorydao;
	
	@RequestMapping(value={"/", "/index", "/home"})
	public ModelAndView index()
	{
		ModelAndView model = new ModelAndView("page");
		model.addObject("title", "Home");
		model.addObject("userClickHome", true);

//		passing the list of categories 
		model.addObject("categorylist", categorydao.list());
		
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
	@RequestMapping(value={"/show/all/products"})
	public String listProducts(Model model)
	{
		

//		passing the list of categories 
		model.addAttribute("categorylist", categorydao.list());

		model.addAttribute("title", "List Of Products");
		model.addAttribute("userClickListProducts", true);
		return "page";
	}
	
	@RequestMapping(value={"/show/category/{id}/products"})
	public String categoryProducts(@PathVariable("id") int id, Model model)
	{
		
		Category category = categorydao.getCategory(id);
		
//		passing one category
		model.addAttribute("category", category);

//		passing the list of categories 
		model.addAttribute("categorylist", categorydao.list());

		model.addAttribute("title", category.getName());
		model.addAttribute("userClickCategoryProducts", true);
		return "page";
	}

}

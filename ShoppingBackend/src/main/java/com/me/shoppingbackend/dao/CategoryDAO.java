package com.me.shoppingbackend.dao;

import java.util.List;

import com.me.shoppingbackend.dto.Category;

public interface CategoryDAO 
{
	public List<Category> list();
	public Category getCategory(int id);
}

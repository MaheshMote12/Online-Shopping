package com.me.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.me.shoppingbackend.dao.CategoryDAO;
import com.me.shoppingbackend.dto.Category;

@Repository("categorydao")
public class CategoryDAOImpl implements CategoryDAO 
{

	private static List<Category> l = new ArrayList<Category>();
	static
	{
		Category c = new Category();
		c.setActive(true);
		c.setDescription("des1");
		c.setId(1);
		c.setName("Iphone");
		l.add(c);
		
		Category c2 = new Category();
		c2.setActive(true);
		c2.setDescription("des2");
		c2.setId(2);
		c2.setName("Android");
		l.add(c2);
		
		
		Category c3 = new Category();
		c3.setActive(true);
		c3.setDescription("des3");
		c3.setId(3);
		c3.setName("Blackberry");
		l.add(c3);

	}
		
	@Override
	public List<Category> list() 
	{
		
		return l;
	}

	@Override
	public Category getCategory(int id)
	{
		for(Category category : l)
		{
			if(category.getId() == id) return category;
		}
		return null;
	}

}

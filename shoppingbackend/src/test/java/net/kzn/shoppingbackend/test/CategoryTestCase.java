package net.kzn.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.kzn.shoppingbackend.dao.CategoryDAO;
import net.kzn.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context = new AnnotationConfigApplicationContext();
		context.scan("net.kzn.shoppingbackend");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
/*	@Test
	public void testAddCategory() {
		
		category = new Category();
		
		category.setName("Television");
		category.setDescription("This is some TV.....");
		category.setImageURL("CAT_1.png");
		
		assertEquals("Successfully",true,categoryDAO.add(category));
	
	}*/
	
	/*@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(3);
		
		assertEquals("Successfully fetched a single","Television",category.getName());
	}*/
	
	/*@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(3);
		
		category.setName("TV");
		
		assertEquals("Successfully update a single",true,categoryDAO.update(category));
	}
	*/
	
	/*@Test
	public void testDeleteCategory() {
		
		category = categoryDAO.get(3);
		
		
		assertEquals("Successfully delete a single",true,categoryDAO.delete(category));
	}
	*/
	
	/*@Test
	public void testListCategory() {
		
		
		assertEquals("Successfully fetched a category",3,categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory() {
		
		category = new Category();
		
		category.setName("Notebook");
		category.setDescription("This is some Notebook.....");
		category.setImageURL("CAT_1.png");
		
		assertEquals("Successfully",true,categoryDAO.add(category));
		
		category = new Category();
		category.setName("Television");
		category.setDescription("This is some TV.....");
		category.setImageURL("CAT_2.png");
		
		assertEquals("Successfully",true,categoryDAO.add(category));
		
		
		category = categoryDAO.get(2);
		
		category.setName("TV");
		
		assertEquals("Successfully update a single",true,categoryDAO.update(category));
	
		
		//Delete
		assertEquals("Successfully delete a single",true,categoryDAO.delete(category));
		
		
		//fetching
		assertEquals("Successfully fetched a category",1,categoryDAO.list().size());

	}
	
	
}

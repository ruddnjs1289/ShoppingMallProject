package com.java.dao;

import java.util.ArrayList;

import com.java.dto.Product;


public class ProductRepositiory {
	
	private ArrayList<Product> listofProducts = new ArrayList<Product>();
	private static  ProductRepositiory instance =new ProductRepositiory();
	
	public static ProductRepositiory getInstance() {
		return instance;
	}
	
	public ProductRepositiory() {
		
		Product phone = new Product("p1234","iPone10",10000000);
		phone.setDescriotion("6.1-inch, Super display, µà¾ó 12mp Ä«¸Þ¶ó");
		phone.setCategory("smart Phone");
		phone.setManufacturer("Apple");
		phone.setUntitsInStock(1000);
		phone.setCondition("new");
		
		Product notebook = new Product("p12345","Lg gram",15000000);
		notebook.setDescriotion("13.1-inch, Led display, intel core");
		notebook.setCategory("notebook");
		notebook.setManufacturer("Lg");
		notebook.setUntitsInStock(5000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("p123456","Galaxy tab",900000);
		tablet.setDescriotion("8-inch, Middle display, octa-core");
		tablet.setCategory("tablet");
		tablet.setManufacturer("samsung");
		tablet.setUntitsInStock(10000);
		tablet.setCondition("old");
		
		listofProducts.add(phone);
		listofProducts.add(notebook);
		listofProducts.add(tablet);
		
		
	}
	
	public ArrayList<Product> getAllProducts(){
		return listofProducts;
	}
	
	
	public Product getProductById(String productId) {
		Product productById =null;
		
		for(int i=0; i<listofProducts.size();i++) {
			Product product = listofProducts.get(i);
			if(product !=null &&product.getProductId() !=null && product.getProductId().equals(productId)) {
				productById =product;
				break;
				
			}
		}
		return productById;
		
	}
public void addProduct(Product product) {
	listofProducts.add(product);
}
}

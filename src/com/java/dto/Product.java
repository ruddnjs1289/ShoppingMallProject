package com.java.dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productId; //상품 아이디
	private String pname;     //상품명
	private Integer unitPrice;//상품 가격
	private String descriotion;//상품 설명
	private String manufacturer;//제조사
	private String category; //분류
	private long untitsInStock;//재고수
	private String condition; //신상품 or 중고품 or 재생품
	private String filename; //이미지 파일명
	
	public Product() {
		super();
	}
	
	public Product(String productId,String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice=unitPrice;
		
	}
	
	public String getProductId() {
		return productId;
	}
	
	public void setProudctId(String productId) {
		this.productId=productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescriotion() {
		return descriotion;
	}

	public void setDescriotion(String descriotion) {
		this.descriotion = descriotion;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUntitsInStock() {
		return untitsInStock;
	}

	public void setUntitsInStock(long untitsInStock) {
		this.untitsInStock = untitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	

}

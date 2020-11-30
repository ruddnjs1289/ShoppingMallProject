package com.java.dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productId; //��ǰ ���̵�
	private String pname;     //��ǰ��
	private Integer unitPrice;//��ǰ ����
	private String descriotion;//��ǰ ����
	private String manufacturer;//������
	private String category; //�з�
	private long untitsInStock;//����
	private String condition; //�Ż�ǰ or �߰�ǰ or ���ǰ
	private String filename; //�̹��� ���ϸ�
	
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

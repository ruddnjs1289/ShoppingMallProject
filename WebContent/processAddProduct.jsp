<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.java.dto.Product" %>
<%@ page import="com.java.dao.ProductRepositiory" %>
<%
    request.setCharacterEncoding("UTF-8");

    String productId = request.getParameter("productId");
    String name = request.getParameter("name");
    String unitPrice = request.getParameter("unitPrice");
    String description = request.getParameter("description");
    String manufacturer = request.getParameter("manufacturer");
    String category = request.getParameter("category");
    String unitsInStock = request.getParameter("unitsInStock");
    String condition = request.getParameter("condition");

    Integer price;

    if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);

    long stock;

    if (unitsInStock.isEmpty())
        stock = 0;
    else
        stock = Long.valueOf(unitsInStock);

     ProductRepositiory dao = ProductRepositiory.getInstance();

    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(name);
    newProduct.setUnitPrice(price);
    newProduct.setDescriotion(description);
    newProduct.setManufacturer(manufacturer);
    newProduct.setCategory(category);
    newProduct.setUntitsInStock(stock);
    newProduct.setCondition(condition);

    dao.addProduct(newProduct);

    response.sendRedirect("products.jsp");
%>

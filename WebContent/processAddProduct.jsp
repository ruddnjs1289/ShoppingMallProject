<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.java.dto.Product" %>
<%@ page import="com.java.dao.ProductRepositiory" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%
    request.setCharacterEncoding("UTF-8");

    String filename="";
    String realFolder = "C:\\upload";
    String encType ="utf-8";
    int maxSize = 5*1024*1024;
    
    MultipartRequest multi =new MultipartRequest(request , realFolder , maxSize , encType , new DefaultFileRenamePolicy());

    String productId = multi.getParameter("productId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("manufacturer");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");

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
    
    Enumeration files =multi.getFileNames();
    String fname =(String)files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    

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
    newProduct.setFilename(filename);

    dao.addProduct(newProduct);

    response.sendRedirect("products.jsp");
%>

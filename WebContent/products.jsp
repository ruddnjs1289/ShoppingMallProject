<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.java.dto.*" %>
<%@ page import="com.java.dao.*" %>


<jsp:useBean id="productDAo" class="com.java.dao.ProductRepositiory" scope="session"/>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Home</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">상품목록</h1>
     </div>
 </div>
 <%
  ProductRepositiory dao =ProductRepositiory.getInstance();
  ArrayList<Product> listofProducts= dao.getAllProducts();
 %>
 
 
 
 <div class="contianer">
  <div class="row" align="center">
  <%
  for(int i =0; i<listofProducts.size(); i++){
	  Product product = listofProducts.get(i);
	  %>
	  <div class="col-md-4">
	  <img src="./resources/images/<%=product.getFilename() %>" style="width:100">
	  <h3><%=product.getPname() %></h3>
	  <p><%=product.getDescriotion()%>
	  <p><%=product.getUnitPrice() %>원
	  <p><a href="./product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">상세 정보</a>
	  </div>
	  <% 
  }
  %>
  </div>
  <hr>
  </div>
<jsp:include page="footer.jsp"/>
</body>
</html>

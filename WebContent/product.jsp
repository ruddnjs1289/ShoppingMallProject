<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.java.dto.Product" %>
<%@ page import="com.java.dao.*" %>
<jsp:useBean id="productDAo" class="com.java.dao.ProductRepositiory" scope="session"/>
<html>
<head>
<link rel="stylesheet"  href="./resources/css/bootstrap.min.css">
<title>상품 상제 정보</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">상품 정보</h1>
     </div>
 </div>
 <%
 String id =request.getParameter("id");
 ProductRepositiory dao=ProductRepositiory.getInstance();
 Product product = dao.getProductById(id);
 
 %>
 
 <div class="container">
     <div class="row">
     <div class="co-md-5">
     <img src="./resources/images/<%=product.getFilename() %>" style="width:100">
     </div>
     <div class="col-md-6">
        <h3><%=product.getPname() %></h3>
        <p><%=product.getDescriotion()%>
        <p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
        <p><b>제조사</b> : <%=product.getManufacturer() %>
        <p><b>분류</b> : <%=product.getCategory() %>
        <p><b>재고 수</b>: <%=product.getUntitsInStock() %>
        <h4><%=product.getUnitPrice() %>원 </h4>
        <p><a href="#" class="btn btn-info">상품 주문</a> <a href="./products.jsp" class="btn btn-secondary">상품 목록</a>
      </div>
    </div>
  </div>
 
 <jsp:include page="footer.jsp"/>
</body>
</html>

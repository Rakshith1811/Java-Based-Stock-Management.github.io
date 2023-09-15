<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ include file="databaseconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Category=request.getParameter("Category");
String title=request.getParameter("title");
String description=request.getParameter("description");
double cost=Double.parseDouble(request.getParameter("cost"));
int quantity=Integer.parseInt(request.getParameter("quantity"));
int stock=Integer.parseInt(request.getParameter("stock"));
double totalcost=(double)cost*quantity;
try{
	PreparedStatement ps=con.prepareStatement("insert into addproduct(Category,title,description,cost,quantity,stock,totalcost)values(?,?,?,?,?,?,?)");
	ps.setString(1,Category);
	ps.setString(2,title);
	ps.setString(3,description);
ps.setDouble(4,cost);
ps.setInt(5,quantity);
ps.setInt(6,stock);
ps.setDouble(7,totalcost);

int n=ps.executeUpdate();
if(n>0){
	%>
	<script>alert("Product is AddedSucess")</script>
	<jsp:include page="adminhomp.jsp"></jsp:include>
	<%
}
else{
	%>
	<script>alert("Product is AddedUnSucess")</script>
	<jsp:include page="addproducts.jsp"></jsp:include>
	<%
}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
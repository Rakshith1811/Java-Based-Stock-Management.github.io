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
int id=Integer.parseInt(request.getParameter("id"));
String active="Unavailable";
try{
PreparedStatement ps=con.prepareStatement("update addproduct set active=? where id=?");	
ps.setString( 1,active);
ps.setInt( 2, id);
int n=ps.executeUpdate();
if(n>0){
	%>
	<script>alert("UnAvailable Sucess")</script>
	<jsp:include page="viewproductsadmin.jsp"></jsp:include>
	<%
}
else{
	%>
	<script>alert("UnAvailable Failed")</script>
	<jsp:include page="viewproductsadmin.jsp"></jsp:include>
	<%
}

}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
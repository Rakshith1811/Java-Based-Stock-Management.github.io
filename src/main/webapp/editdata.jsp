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
String name=request.getParameter("name");
String email=request.getParameter("email");

String address=request.getParameter("address");
String mobile=request.getParameter("mobile");

try{
	PreparedStatement ps=con.prepareStatement("update registeremp set name=?,email=?,address=?,mobile=? where id=?");
	ps.setString(1,name);
	ps.setString(2, email);

	ps.setString(3,address);
	ps.setString(4,mobile);


	ps.setInt(5,id);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("UpdateSucess")</script>
		<jsp:include page="viewcustmerdata.jsp"></jsp:include>
		<% 
		
	}
	else{
		%>
		<script>alert("UpdateUnSucess")</script>
		<jsp:include page="edit.jsp"></jsp:include>
		<% 	
	}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>
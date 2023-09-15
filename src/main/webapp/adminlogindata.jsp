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
String email=request.getParameter("email");
String password=request.getParameter("password");
session.setAttribute("email", email);
try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from registeradmin where email='"+email+"' and password='"+password+"'");
	if(rs.next()){
		%>
		<script>alert("LoginSucess")</script>
		<jsp:include page="adminhomp.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("LoginUnSucess")</script>
		<jsp:include page="adminloginpage.jsp"></jsp:include>
		<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
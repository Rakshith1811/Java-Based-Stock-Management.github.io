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
String email=session.getAttribute("email").toString();
//int id=Integer.parseInt(request.getParameter("id"));

String newpassword=request.getParameter("newpassword");
String password=newpassword;
try{
	
	PreparedStatement ps=con.prepareStatement("update registeremp set password=? where email=?");
	ps.setString(1,password);
	ps.setString(2,email);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("UpdateSucess")</script>
		<jsp:include page="home.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("UpdateUnSucess")</script>
		<jsp:include page="changepassword.jsp"></jsp:include>
		<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>
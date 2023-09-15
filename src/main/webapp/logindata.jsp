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
session.setAttribute("email",email);

 try{
	PreparedStatement ps=con.prepareStatement("select * from registeremp where email=? and password=?");
	 ps.setString(1,email);
	 ps.setString(2, password);

	 ResultSet rs=ps.executeQuery();
	 if(rs.next()){
		 %>
		 <script>alert("Login Sucess")</script>
		 <jsp:include page="home.jsp"></jsp:include>
		 <%
	 }
	
	 else{
		 
		
		 %>
		 <script>alert("Please Enter Correct password")</script>
		 <jsp:include page="login.jsp"></jsp:include>
		 <%
	 } 
	 

 }
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
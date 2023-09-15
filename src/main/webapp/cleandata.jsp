<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String subject=request.getParameter("subject");
String message=request.getParameter("message");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sateesh","root","root");
	PreparedStatement ps=con.prepareStatement("insert into hello(name,email,subject,message)values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2, email);
	ps.setString(3, subject);
	ps.setString(4, message);

	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("InsertSucess")</script>
		<jsp:include page="contact.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("InsertUnSucess")</script>
		
		<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
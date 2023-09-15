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
int id=Integer.parseInt(request.getParameter("id"));

String message=request.getParameter("message");
int rate=Integer.parseInt(request.getParameter("rate"));
try{
	PreparedStatement ps=con.prepareStatement("insert into addfeedbackdata(email,id,message,rate)values(?,?,?,?)");
	ps.setString(1,email);
	ps.setInt(2,id);
	ps.setString(3,message);
	ps.setInt(4,rate);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("AddFeedback Sucess")</script>
		<jsp:include page="home.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("AddFeedback UnSucess")</script>
		<jsp:include page="addfeedback.jsp"></jsp:include>
		<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>
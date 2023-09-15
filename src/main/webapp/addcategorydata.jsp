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
String title=request.getParameter("title");
try{
	PreparedStatement ps=con.prepareStatement("insert into titledata(title)value(?)");
	ps.setString(1,title);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("AddedSucess")</script>
		<jsp:include page="adminhomp.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("AddedUnSucess")</script>
		<jsp:include page="addcategory.jsp"></jsp:include>
		<%
	}
}
catch(Exception e){
e.printStackTrace();	
}
%>
</body>
</html>
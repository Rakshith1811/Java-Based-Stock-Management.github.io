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
//int id=Integer.parseInt(request.getParameter("id"));
String email=session.getAttribute("email").toString();
try{
	PreparedStatement ps=con.prepareStatement("delete from registeremp where email='"+email+"'");
	//ps.setString(1,email);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("deleteSucess")</script>
		<jsp:include page="home.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("deleteUnSucess")</script>
		<jsp:include page="viewcustmerdata.jsp"></jsp:include>
		<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>
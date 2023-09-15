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

try{
	
	PreparedStatement st=con.prepareStatement("delete from titledata where id='"+id+"'");      
	int n=st.executeUpdate();
	
	if(n>0){
		%>
		<script>alert("deletesucess")</script>
		<jsp:include page="viewcategory.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("deleteUnsucess")</script>
		<jsp:include page="viewcategory.jsp"></jsp:include>
		<%
	}
 
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>
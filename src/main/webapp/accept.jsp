<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
String active="available";
try{
PreparedStatement ps=con.prepareStatement("update addproduct set active=? where id=?");	
ps.setString( 1,active);
ps.setInt( 2, id);
int n=ps.executeUpdate();
if(n>0){
	%>
	<script>alert("AvailableSucess")</script>
	<jsp:include page="viewproductsadmin.jsp"></jsp:include>
	<%
}

else{
	%>
	<script>alert("AvailableUnSucess")</script>
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
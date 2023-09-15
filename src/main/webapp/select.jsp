<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="databaseconnect.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int no=Integer.parseInt(request.getParameter("no"));
String cancel="selected";
try{
	PreparedStatement ps=con.prepareStatement("update purchege set cancel=? where no=?");
	ps.setString(1,cancel);
	ps.setInt(2,no);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("Selected sucess")</script>
		<jsp:include page="cancleproducts.jsp"></jsp:include>
		<%
	}
	else{
		%>
		<script>alert("Selected Unsucess")</script>
		<jsp:include page="mypurchase.jsp"></jsp:include>
		<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
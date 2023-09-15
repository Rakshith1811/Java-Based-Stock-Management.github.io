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

int no=Integer.parseInt(request.getParameter("no"));
String status="Rejected";
try{
PreparedStatement ps=con.prepareStatement("update purchege set status=? where no=?");	
ps.setString( 1,status);
ps.setInt( 2, no);
int n=ps.executeUpdate();
if(n>0){
	%>
	<script>alert("RejectSucess")</script>
	<jsp:include page="vieworders.jsp"></jsp:include>
	<%
}
else{
	%>
	<script>alert("RejectUnSucess")</script>
	<jsp:include page="vieworders.jsp"></jsp:include>
	<%
}

}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>
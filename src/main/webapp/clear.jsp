<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
String cancel="cancelled";
String not="Accepted";
try{
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from purchege where no='"+no+"'");
	while(rs.next()){
		if(not.equals(rs.getString(8))){
			%>
			<jsp:forward page="mypurchase.jsp"></jsp:forward>
			<%
		}
		else{
	PreparedStatement ps=con.prepareStatement("update purchege set cancel=? where no=?");
	ps.setString(1,cancel);
	ps.setInt(2,no);
	int n=ps.executeUpdate();
	if(n>0){
		%>
		<script>alert("Canacle sucess")</script>
		<jsp:include page="viewproducts.jsp"></jsp:include>
		<%
		}}
}}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
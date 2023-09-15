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
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String address=request.getParameter("address");
String mobile=request.getParameter("mobile");
 try{
		PreparedStatement st=con.prepareStatement("select * from registeremp where email='"+email+"'");
		ResultSet rs=st.executeQuery();
		if(rs.next()){
			%>
			<script>alert("Already is Email Exists")</script>
			<jsp:include page="register.jsp"></jsp:include>
			<%
		}
		else{
	 PreparedStatement ps=con.prepareStatement("insert into registeremp(name,email,password,address,mobile) values(?,?,?,?,?)");
	 ps.setString(1,name);
	 ps.setString(2, email);
	 ps.setString(3, password);
	 ps.setString(4,address);
	 ps.setString(5,mobile);
	 int n=ps.executeUpdate();
	 if(n>0){
		 %>
		 <script>alert("RegisterSucess")</script>
		 <jsp:include page="login.jsp"></jsp:include>
		 <%
	 }
	 else{
		 %>
		 <script>alert("RegisterUnSucess")</script>
		 <jsp:include page="register.jsp"></jsp:include>
		 <%
	 } 
	 
		}
 }
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>
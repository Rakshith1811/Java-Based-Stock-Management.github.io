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
String cancel="Accepted";
String status="Accepted";
String okay="cancelled";
try{
	Statement ps=con.createStatement();
	ResultSet rs=ps.executeQuery("select * from purchege where no='"+no+"'");
	
	while(rs.next()){
		if(okay.contains(rs.getString(7))){
			%>
			<jsp:forward page="vieworders.jsp"></jsp:forward>
			<%
		}
	
else{
PreparedStatement ps1=con.prepareStatement("update purchege set cancel=?,status=?  where no=?");	
ps1.setString(1,cancel);
ps1.setString(2,status);
ps1.setInt(3, no);
int n=ps1.executeUpdate();
if(n>0){
	%>
	<script>alert("AcceptSuces")</script>
	<jsp:include page="vieworders.jsp"></jsp:include>
	<%
}

}
}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</body>
</html>
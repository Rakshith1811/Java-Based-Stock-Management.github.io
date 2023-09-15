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

	

//String email=session.getAttribute("email").toString();                   		
String email=request.getParameter("email");

int id=Integer.parseInt(request.getParameter("id"));
double cost=Double.parseDouble(request.getParameter("cost"));
int quantity=Integer.parseInt(request.getParameter("quantity"));
int stock=Integer.parseInt(request.getParameter("stock"));

stock=stock-quantity;
double totalcost=(cost*quantity);
String cancel="new";
String status="buyed";
int remaingstock=stock-quantity;
String address=request.getParameter("address");
try{
	PreparedStatement ps1=con.prepareStatement("update addproduct set stock='"+stock+"' where id='"+id+"'");
	int n1=ps1.executeUpdate();
	if(n1>0){
		%>
		<jsp:include page="viewproducts.jsp"></jsp:include>
		<%
	}
}catch(Exception e){
	e.printStackTrace();
}
try{
PreparedStatement ps2=con.prepareStatement("insert into purchege(email,id,cost,quantity,totalcost,cancel,status,remaingstock,address)values(?,?,?,?,?,?,?,?,?)");
ps2.setString(1,email);
ps2.setInt(2,id);
ps2.setDouble(3,cost);
ps2.setInt(4,quantity);
ps2.setDouble(5,totalcost);
ps2.setString(6,cancel);
ps2.setString(7,status);
ps2.setInt(8,remaingstock);
ps2.setString(9,address);
int n=ps2.executeUpdate();
if(n>0){
	%>
	<script>alert("PurchegeSucess")</script>
	<jsp:include page="viewproducts.jsp"></jsp:include>
	<%
}
else{
	%>
	<script>alert("PurchegeUnSucess")</script>
	<jsp:include page="viewproducts.jsp"></jsp:include>
	<%
}

}
catch(Exception e){
	e.printStackTrace();
}




%>
</body>
</html>
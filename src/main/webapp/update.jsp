<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles.css">
<title>WALMART WAREHOUSE</title>
</head>
<body>
<% 
String ID=request.getParameter("ID");
String banglore=request.getParameter("banglore");
String mysore=request.getParameter("mysore");
String hassan=request.getParameter("hassan");

	String query = "update distribute set banglore='"+banglore+"',mysore='"+mysore+"',hassan='"+hassan+"' where ID='"+ID+"'";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/walmart", "root", "");
	System.out.println("Connection Established successfully");
	PreparedStatement st = con.prepareStatement(query);
	st.executeUpdate(query);
    st.close();
    con.close();
%>

<center>
<div class="form" style="width:23%;">

<h1 style="
color:red;
text-align:center;"> ITEMS DISTRIBUTED SUCCESSFULLY</h1>
</div>

</br>
<a href = "form.html">
<button class="button"> INSERT ITEMS</button></a>
<a href= "view.jsp">
<button class="button"> VIEW DETAILS</button></a>
<a href= "index.html">
<button class="button"> HOME</button></a>
</center>

</body>
</html>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INSERT ITEMS</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<% String itemname=request.getParameter("itemname");

String ID=request.getParameter("ID");
String quantity=request.getParameter("quantity");
String itemtype=request.getParameter("itemtype");
String itemprice=request.getParameter("itemprice");
String numberofitems=request.getParameter("numberofitems");

String type=request.getParameter("type");
String dateofpurchase=request.getParameter("dateofpurchase");

	String query = "insert into additem(itemname,ID,quantity,itemtype,itemprice,numberofitems,type,dateofpurchase) values('"+itemname+"','"+ID+"','"+quantity+"','"+itemtype+"','"+itemprice+"',"+numberofitems+",'"+type+"','"+dateofpurchase+"');";
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

<h1 style="color:red;text-align:center;"> ITEM ADDED SUCCESSFULLY</h1>
</div>
</br>
<a href = "form.html">
<button class="button"> ADD ITEMS</button></a>
<a href= "view.jsp">
<button class="button"> VIEW ITEMS</button></a>
<a href= "index.html">
<button class="button"> HOME</button></a>
</center>
</body>

</html>
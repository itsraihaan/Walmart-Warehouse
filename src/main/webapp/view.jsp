<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WAREHOUSE DETAILS</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>WAREHOUSE DETAILS</title>
<style>
table,tr,td,th{    border: 1px solid #ddd;
    padding: 8px;
    color: black;
    padding-top: 12px;
    padding-bottom: 12px;
    padding-left:10px ;
    text-align: left;
    background-color: #04AA6D;
    color: black;   
}
.but{
    background-color: grey;
    color: black;
    border: 2px solid #555555;
    padding :5px;
    border-radius: 3px;
    margin: 5px;
}
  .but:hover {
    background-color: black;
    color: white;
    
  }
</style>
</head>
<body>
<center>
  <div class="contents" style="width :70%" >
  <h1 style ="text-shadow: 2px 2px 7px red;">WALMART</h1>
  <div class="form">
  <table id="additem">

<tr>
<th>Item Name</th>
<th>Item Price</th>
<th>Item ID</th>
<th>Number of Items</th>
<th>Item Type</th>
<th>Distribute</th>
<th>Update </th>
<th>View </th>
<th>Delete </th>
</tr>
<%
String query = "select * from additem";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/walmart", "root", "");
System.out.println("Connection Established successfully");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next())
{
	String itemname = rs.getString("itemname");
	String itemprice = rs.getString("itemprice");
	String ID =rs.getString("ID");
	String numberofitems=rs.getString("numberofitems");
	String itemtype=rs.getString("itemtype");
	%>
	<td >
	<% out.println(itemname);%>
	</td>
	<td >
	<% out.println(itemprice);%>
	</td>
	<td >
	<% out.println(ID );%>
	</td>
	<td >
	<% out.println(numberofitems );%>
	</td>
	<td >
	<% out.println(itemtype );%>
	</td >
	<td ><a href="insert.html">
	<button class="but">DISTRIBUTE</button></a>
	</a></td>
	<td ><a href="update.html">
<button class="but">UPDATE</button></a>	</a></td>
	<td >
	<a href="viewia.html">
<button class="but">VIEW</button></a>	</a></td>
	<td><a href="delete.html">
<button class="but">DELETE</button></a>	</a></td>
	</tr>
	<% 
}

st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>
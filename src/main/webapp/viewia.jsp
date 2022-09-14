<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DISTRIBUTE</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>DISTRIBUTE</title>
<style type="text/css">
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
</style>
</head>
<body>
<center>
  <div class="contents" style="width :70%" >
  <h1>WALMART WAREHOUSE</h1>
  <div class="form">
  <table id="student">

<tr>
<th>ID</th>
<th>BANGLORE</th>
<th>MYSORE</th>
<th>HASSAN</th>

</tr>
<%
String ID1=request.getParameter("ID");
String query = "select * from distribute  ";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/walmart", "root", "");
System.out.println("Connection Established successfully");
PreparedStatement st = con.prepareStatement(query);
ResultSet rs = st.executeQuery(query);
rs.next();

String ID =rs.getString("ID");
String banglore =rs.getString("banglore");
String mysore =rs.getString("mysore");
String hassan =rs.getString("hassan");
	%>
	
	<td>
	<% out.println(ID );%>
	</td>
	
	<td>
	<% out.println(banglore );%>
	</td>
	<td>
	<% out.println(mysore );%>
	</td>
	<td>
	<% out.println(hassan );%>
	</td>
	</tr>
	<% 


st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>
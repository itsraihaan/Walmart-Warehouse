<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>WALMART WAREHOUSE</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>WALMART WAREHOUSE</title>
</head>
<body>
<%
String ID1=request.getParameter("ID");
String query = "delete  from distribute where ID ='"+ID1+"';";
String query1 = "delete  from additem where ID ='"+ID1+"';";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/walmart", "root", "");
System.out.println("Connection Established successfully");
PreparedStatement st = con.prepareStatement(query);
st.executeUpdate(query);

PreparedStatement st1 = con.prepareStatement(query1);
st1.executeUpdate(query1);
st1.close(); 
st.close(); 

con.close();%>
<%String redirectURL = "view.jsp";
response.sendRedirect(redirectURL); %>
</body>
</html>
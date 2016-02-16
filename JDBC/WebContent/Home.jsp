<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
String driver = "com.mysql.jdbc.Driver";
String hostadd = "jdbc:mysql://localhost:3306/";
String database = "jdbc";
String uId = "root";
String pwd = "Swetha@90";
%>
<h2 align="left"><font><strong>List of Topics</strong></font></h2>
<table style="text-align:left"><tr></tr>
<tr bgcolor="#808080">
<td><b>Assignment Number</b></td><td><b>Topic</b></td>
</tr>
<%
Connection con = DriverManager.getConnection(hostadd+database, uId, pwd);
Statement s=con.createStatement();
ResultSet r= s.executeQuery("SELECT * FROM ssdiassignment");
while(r.next()){
%>
<tr bgcolor="#CCEEFF">
<td><%=r.getString("assignmentNo") %></td>
<td><%=r.getString("topic") %></td>
</tr>
<%
}
con.close();
%>
</table>


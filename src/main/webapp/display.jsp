<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Image</title>
</head>
<body>
<h1 style="color:red" align="center">DISPLAY IMAGE DETAIL</h1>

<div align="center">

<form action="DisplayServlet" method="post">
   Enter Image Id :
   <input type="number" name="imageId">
   <input type="submit" value="Display Image">
</form>

</div>

<hr>

<%
   /*  String imgFileName=(String)request.getAttribute("img");
    String imgId=(String)request.getAttribute("id");
    System.out.println(imgFileName); */
%>




 <%
         /*    int imageid = Integer.parseInt(request.getParameter("id")); */
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?characterEncoding=latin1","root","password");
                Statement st = con.createStatement();
                String sql = "SELECT image FROM fashion ";
                ResultSet rs = st.executeQuery(sql);
               
        %>

<div align="center">
     <table border="5px" style="width:600px">
          <tr>
              <th>Image Id </th>
              <th>Image</th>
          </tr>
         
         <%
            /*  if(imgFileName!="" && imgId!="")
             { */
            	
            	
            	
            	
            	 while (rs.next()) {
            		 
            		/*  int imgid = rs.getInt("id"); */
                    String filename = rs.getString("image");
         %>
          
          <tr>
              <td><%="kavi" %></td>
              <td><img src="images/<%=filename%>" style="width:300px;height:250px"></td>
          </tr>
          
          <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
          
          
          
        <%
           /*   } */
        %>  
     </table>
</div>

</body>
</html>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
    
 <%
    
 String id = request.getParameter("idcity");
 
 try{
	Connection con = ConnectionProvider.getCon();
 	Statement st = con.createStatement();
 	
 	st.executeUpdate("DELETE FROM cities WHERE idcity='"+id+"'");
 	response.sendRedirect("editCities.jsp?=removed");
 }
 
 catch(Exception e){
	 response.sendRedirect("editCities.jsp?=wrong");
	 System.out.println(e);
 }
    
    
    
 %>
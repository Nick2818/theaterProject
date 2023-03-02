<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
    
 <%
    
 String id = request.getParameter("idactor");
 
 try{
	Connection con = ConnectionProvider.getCon();
 	Statement st = con.createStatement();
 	
 	st.executeUpdate("DELETE FROM actors WHERE idactor='"+id+"'");
 	response.sendRedirect("editActors.jsp?=removed");
 }
 
 catch(Exception e){
	 response.sendRedirect("editActors.jsp?=wrong");
	 System.out.println(e);
 }
    
    
    
 %>
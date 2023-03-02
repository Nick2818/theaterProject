<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
    
 <%
    
 String id = request.getParameter("idtheater");
 
 try{
	Connection con = ConnectionProvider.getCon();
 	Statement st = con.createStatement();
 	
 	st.executeUpdate("DELETE FROM theaters WHERE idtheater='"+id+"'");
 	response.sendRedirect("editTheaters.jsp?=removed");
 }
 
 catch(Exception e){
	 response.sendRedirect("editTheaters.jsp?=wrong");
	 System.out.println(e);
 }
    
    
    
 %>
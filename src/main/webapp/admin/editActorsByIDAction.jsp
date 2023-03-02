<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
    
    <%
    	
    	String id = request.getParameter("idactor");
    	String name = request.getParameter("name");
    	String surname= request.getParameter("surname");
    	String age = request.getParameter("age");
    	String gender = request.getParameter("gender");
    	
    	try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		
    		st.executeUpdate("UPDATE actors SET name='"+name+"', surname='"+surname+"', age='"+age+"', gender='"+gender+"' WHERE idactor='"+id+"' ");
    		response.sendRedirect("editActors.jsp?msg=done");
    	}
    	catch(Exception e){
    		System.out.println(e);
    		response.sendRedirect("editActors.jsp?msg=wrong");
    	}
    
    %>
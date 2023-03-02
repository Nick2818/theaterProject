<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
    
    <%
    	
    	String id = request.getParameter("idtheater");
    	String idcity = request.getParameter("idcity");
    	String idactor = request.getParameter("idactor");
    	String name = request.getParameter("name");
    	
    	try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		
    		st.executeUpdate("UPDATE theaters SET idcity='"+idcity+"', idactor='"+idactor+"', theatername='"+name+"' WHERE idtheater='"+id+"' ");
    		response.sendRedirect("editTheaters.jsp?msg=done");
    	}
    	catch(Exception e){
    		System.out.println(e);
    		response.sendRedirect("editTheaters.jsp?msg=wrong");
    	}
    
    %>
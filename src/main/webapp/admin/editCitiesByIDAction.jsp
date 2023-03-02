<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>
    
    <%
    	
    	String id = request.getParameter("idcity");
    	String cityname = request.getParameter("cityname");
    	String country = request.getParameter("country");
    	String region = request.getParameter("region");
    	
    	try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		
    		st.executeUpdate("UPDATE cities SET cityname='"+cityname+"', country='"+country+"', region='"+region+"' WHERE idcity='"+id+"' ");
    		response.sendRedirect("editCities.jsp?msg=done");
    	}
    	catch(Exception e){
    		System.out.println(e);
    		response.sendRedirect("editCities.jsp?msg=wrong");
    	}
    
    %>
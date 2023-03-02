<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String idcity = request.getParameter("");
String cityname = request.getParameter("cityname");
String country = request.getParameter("country");
String region = request.getParameter("region");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("INSERT INTO cities values(?,?,?,?)");
	ps.setString(1, idcity);
	ps.setString(2, cityname);
	ps.setString(3, country);
	ps.setString(4, region);
	ps.executeUpdate();
	response.sendRedirect("addCities.jsp?msg=done");
}

catch(Exception e){
	response.sendRedirect("addCities.jsp?msg=wrong");
}


%>
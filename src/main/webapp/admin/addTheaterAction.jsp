<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String idtheater = request.getParameter("");
String idcity = request.getParameter("idcity");
String idactor = request.getParameter("idactor");
String theatername = request.getParameter("theatername");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("INSERT INTO theaters values(?,?,?,?)");
	ps.setString(1, idtheater);
	ps.setString(2, idcity);
	ps.setString(3, idactor);
	ps.setString(4, theatername);
	ps.executeUpdate();
	response.sendRedirect("addTheater.jsp?msg=done");
}

catch(Exception e){
	response.sendRedirect("addTheater.jsp?msg=wrong");
}


%>
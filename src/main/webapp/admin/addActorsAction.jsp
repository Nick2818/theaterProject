<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String idactor = request.getParameter("");
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String age = request.getParameter("age");
String gender = request.getParameter("gender");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("INSERT INTO actors values(?,?,?,?,?)");
	ps.setString(1, idactor);
	ps.setString(2, name);
	ps.setString(3, surname);
	ps.setString(4, age);
	ps.setString(5, gender);
	ps.executeUpdate();
	response.sendRedirect("addActors.jsp?msg=done");
}

catch(Exception e){
	response.sendRedirect("addActors.jsp?msg=wrong");
}


%>
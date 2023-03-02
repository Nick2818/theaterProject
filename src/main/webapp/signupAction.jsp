<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%

String id = request.getParameter("");
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");

try{
	
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, email);
	ps.setString(4, password);
	ps.setString(5, securityQuestion);
	ps.setString(6, answer);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}

catch(Exception e){
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}


%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String email = request.getParameter("email");
String paswd = request.getParameter("password");

if("admin@gmail.com".equals(email) && "admin".equals(paswd)){
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z = 0;
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT *FROM users WHERE email ='"+email+"' and password='"+paswd+"'");
		while(rs.next()){
			z = 1;
			session.setAttribute("email", email);
			response.sendRedirect("home.jsp");
		}
		
		if(z == 0){   // daca user-ul nu exista este redirectioat catre login
			response.sendRedirect("login.jsp?msg=notExist");
		}
	}
	
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}

%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String email = request.getParameter("email");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String newpass = request.getParameter("newpass");

int check = 0;

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT *FROM users WHERE email ='"+email+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	while(rs.next()){
		check = 1;
		st.executeUpdate("UPDATE users SET password='"+newpass+"' WHERE email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	
	if(check == 0){
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}

catch(Exception e){
	System.out.println(e);

}

%>
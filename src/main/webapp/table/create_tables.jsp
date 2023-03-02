<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
		<% 
		try{ 
			Connection con = ConnectionProvider.getCon(); 
			Statement st= con.createStatement(); 
			
			//String query1 = "CREATE TABLE users(id int AUTO_INCREMENT PRIMARY KEY, name varchar(100), email varchar(100), password varchar(200), securityQuestion varchar(200), answer varchar(200))";
			//String query2 = "CREATE TABLE cities(idcity int AUTO_INCREMENT PRIMARY KEY, cityname varchar(100), country varchar(100), region varchar(100))";
			//String query3 = "CREATE TABLE theaters(idtheater int AUTO_INCREMENT PRIMARY KEY, idcity int, idactor int, theatername varchar(100))";
			//String query4 = "CREATE TABLE actors(idactor int AUTO_INCREMENT PRIMARY KEY, name varchar(100), surname varchar(100), age int, gender varchar(50))";
			
			//System.out.print(query1); 
			//st.execute(query1); 
			
			//System.out.print(query2); 
			//st.execute(query2); 
			
			//System.out.print(query3); 
			//st.execute(query3); 
			
			//System.out.print(query4); 
			//st.execute(query4); 
			
			System.out.print("Tables created."); 
			con.close(); 
			} 
		
			catch(Exception e)
			{ 
				System.out.print(e); 
			} 
				
		%>
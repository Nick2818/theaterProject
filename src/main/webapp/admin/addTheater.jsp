<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>

        <html>

        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

            <%@include file="adminHeader.jsp" %>

                <title>ADD CITIES</title>
        </head>

        <body class="bg-dark">
            <br><br><br>
            <div class="container bg-dark">

                <h1 class="text-center text-white">You can ADD THEATERS in database.</h1>
                
                <%
                	String msg = request.getParameter("msg");
                	if("done".equals(msg)){
                %>
                
                <h1 class="text-center text-success">THEATER added successfully to database.</h1>
                
                <%} %>
                
                <%if("wrong".equals(msg)){ %>
                <h1 class="text-center text-warning">Something went wrong! Try again later!</h1>
                <%} %>

                <% int id=1; 
                try{ 
	                	Connection con=ConnectionProvider.getCon(); 
	                	Statement st=con.createStatement();
	                    ResultSet rs=st.executeQuery("SELECT MAX(idtheater) FROM theaters"); 
		                    while(rs.next()){ 
			                    id=rs.getInt(1);
			                    id=id +1; 
	                    	}
                    } 
                	catch(Exception e){ } %>

                    <h2 class="text-center text-white">Theater ID: <%out.println(id); %>
                    </h2>

                    <div class='signup text-center container-sm'>

                        <form action="addTheaterAction.jsp" method="post">

                            <div class="mb-3 mt-3">
                                <label for="idcity" class="form-label text-white">ID_CITY:</label>
                                <input type="text" class="form-control" id="idcity" placeholder="Enter id city"
                                    name="idcity" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="idactor" class="form-label text-white">ID_Actor:</label>
                                <input type="text" class="form-control" id="idactor" placeholder="Enter id actor"
                                    name="idactor" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="theatername" class="form-label text-white">Name:</label>
                                <input type="text" class="form-control" id="theatername" placeholder="Enter name"
                                    name="theatername" required>
                            </div>

                            <div class="mb-3 text-center">
                                <input type="submit" class="btn btn-success" value="SAVE">
                            </div>

                        </form>
                    </div>





            </div>
            
            <div class="container bg-dark"><br><br>
            
            <h3 class="text-center text-white">HELP for ID_CITY and ID_ACTOR</h3><br>
            
            <div class="row">
            
            	<div class="col">
            		<h1 class="text-center text-white">CITIES in database:</h1><br><br><br>
                

                <table class="table">
                    <thead>
                        <tr class="text-white">
                            <th>ID CITY</th>
                            <th>CITY NAME</th>
                            <th>COUNTRY</th>
                            <th>REGION</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    try{
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT *FROM cities");
                    	while(rs.next()){
                
                    %>
                        <tr class="text-white">
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><%=rs.getString(4) %></td>
                        </tr>
                        <%}
                    }
                    catch(Exception e){
                    	System.out.println(e);
                    }
                    
                    
                    %>
                        
                    </tbody>
                </table>
            	
            	</div>
            	
            	
            	<div class="col">
            	
            	<h1 class="text-center text-white">ACTORS in database:</h1><br><br><br>
                

                <table class="table">
                    <thead>
                        <tr class="text-white">
                            <th>ID ACTOR</th>
                            <th>NAME</th>
                            <th>SURNAME</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    try{
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT *FROM actors");
                    	while(rs.next()){
                
                    %>
                        <tr class="text-white">
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                        </tr>
                        <%}
                    }
                    catch(Exception e){
                    	System.out.println(e);
                    }
                    
                    
                    %>
                        
                    </tbody>
                </table>
            	
            	</div>
            
            
            </div>
            
            
            </div>
            
            

        </body>
        <br><br><br>

        <%@include file="../footer.jsp" %>

        </html>
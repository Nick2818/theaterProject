<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>

        <html>

        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

           

                <title>EDIT ACTORS</title>
        </head>

        <body class="bg-dark">
            <br><br><br>
            <div class="container bg-dark">

                <h1 class="text-center text-white">EDIT ACTORS:</h1>

                
                    <%
                    String id = request.getParameter("idactor");
                    try{
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT *FROM actors WHERE idactor='"+id+"'");
                    	while(rs.next()){
                
                    %>
                    
                    <form action="editActorsByIDAction.jsp" method="post">
							
                            <input class="d-none" name="idactor" value="<%=rs.getString(1) %>">
                            
        					<div class="mb-3 mt-3">
                                <label for="name" class="form-label text-white">Name:</label>
                                <input type="text" class="form-control" id="name" placeholder="<%=rs.getString(2) %>"
                                    name="name" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="surname" class="form-label text-white">Surname:</label>
                                <input type="text" class="form-control" id="surname" placeholder="<%=rs.getString(3) %>"
                                    name="surname" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="age" class="form-label text-white">Age:</label>
                                <input type="text" class="form-control" id="age" placeholder="<%=rs.getString(4) %>"
                                    name="age" required>
                            </div>
                            
                            <div class="mb-3 mt-3">
                                <label for="gender" class="form-label text-white">Gender:</label>
                                <input type="text" class="form-control" id="gender" placeholder="<%=rs.getString(4) %>"
                                    name="gender" required>
                            </div>
                            

                            <div class="mb-3 text-center">
                                <input type="submit" class="btn btn-success" value="SAVE">
                            </div>


        					<div class="mb-3 text-center">
          						<td><a href="editActors.jsp" class="btn btn-warning">Go Back</a></td>
        					</div>

      				</form>
                        
                        
                        <%}
                    }
                    catch(Exception e){
                    	System.out.println(e);
                    }
                    
                    
                    %>
                        
               

            </div>

        </body>
        <br><br><br>

        <%@include file="../footer.jsp" %>

        </html>
<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>

        <html>

        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

           

                <title>EDIT CITIES</title>
        </head>

        <body class="bg-dark">
            <br><br><br>
            <div class="container bg-dark">

                <h1 class="text-center text-white">EDIT CITY:</h1>

                
                    <%
                    String id = request.getParameter("idcity");
                    try{
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT *FROM cities WHERE idcity='"+id+"'");
                    	while(rs.next()){
                
                    %>
                    
                    <form action="editCitiesByIDAction.jsp" method="post">
							
                            <input class="d-none" name="idcity" value="<%=rs.getString(1) %>">
                            
        					<div class="mb-3 mt-3">
                                <label for="cityname" class="form-label text-white">Name:</label>
                                <input type="text" class="form-control" id="cityname" placeholder="<%=rs.getString(2) %>"
                                    name="cityname" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="country" class="form-label text-white">Country:</label>
                                <input type="text" class="form-control" id="country" placeholder="<%=rs.getString(3) %>"
                                    name="country" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="region" class="form-label text-white">Region:</label>
                                <input type="text" class="form-control" id="region" placeholder="<%=rs.getString(4) %>"
                                    name="region" required>
                            </div>

                            <div class="mb-3 text-center">
                                <input type="submit" class="btn btn-success" value="SAVE">
                            </div>


        					<div class="mb-3 text-center">
          						<td><a href="editCities.jsp" class="btn btn-warning">Go Back</a></td>
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
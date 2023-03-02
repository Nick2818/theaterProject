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

                <h1 class="text-center text-white">You can ADD CITIES in database.</h1>
                
                <%
                	String msg = request.getParameter("msg");
                	if("done".equals(msg)){
                %>
                
                <h1 class="text-center text-success">CITY added successfully to database.</h1>
                
                <%} %>
                
                <%if("wrong".equals(msg)){ %>
                <h1 class="text-center text-warning">Something went wrong! Try again later!</h1>
                <%} %>

                <% int id=1; 
                try{ 
	                	Connection con=ConnectionProvider.getCon(); 
	                	Statement st=con.createStatement();
	                    ResultSet rs=st.executeQuery("SELECT MAX(idcity) FROM cities"); 
		                    while(rs.next()){ 
			                    id=rs.getInt(1);
			                    id=id +1; 
	                    	}
                    } 
                	catch(Exception e){ } %>

                    <h2 class="text-center text-white">City ID: <%out.println(id); %>
                    </h2>

                    <div class='signup text-center container-sm'>

                        <form action="addCitiesAction.jsp" method="post">

                            <div class="mb-3 mt-3">
                                <label for="cityname" class="form-label text-white">Name:</label>
                                <input type="text" class="form-control" id="cityname" placeholder="Enter name" name="cityname" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="country" class="form-label text-white">Country:</label>
                                <input type="text" class="form-control" id="country" placeholder="Enter country" name="country" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="region" class="form-label text-white">Region:</label>
                                <input type="text" class="form-control" id="region" placeholder="Enter region" name="region" required>
                            </div>

                            <div class="mb-3 text-center">
                                <input type="submit" class="btn btn-success" value="SAVE">
                            </div>

                        </form>
                    </div>





            </div>

</body>
<br><br><br>

<%@include file="../footer.jsp" %>

</html>
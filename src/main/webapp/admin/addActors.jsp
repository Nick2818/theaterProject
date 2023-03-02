<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<html>

        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

            <%@include file="adminHeader.jsp" %>

            <title>ADD ACTORS</title>
        </head>

        <body class="bg-dark">
            <br><br><br>
            <div class="container bg-dark">

                <h1 class="text-center text-white">You can ADD ACTORS in database.</h1>
                
                <%
                	String msg = request.getParameter("msg");
                	if("done".equals(msg)){
                %>
                
                <h1 class="text-center text-success">ACTOR added successfully to database.</h1>
                
                <%} %>
                
                <%if("wrong".equals(msg)){ %>
                <h1 class="text-center text-warning">Something went wrong! Try again later!</h1>
                <%} %>

                <% int id=1; 
	                try{ 
		                	Connection con=ConnectionProvider.getCon(); 
		                	Statement st=con.createStatement();
		                    ResultSet rs=st.executeQuery("SELECT MAX(idactor) FROM actors"); 
			                    while(rs.next()){ 
				                    id=rs.getInt(1);
				                    id=id +1; 
		                    	}
                    	} 
                	catch(Exception e){ } %>

                    <h2 class="text-center text-white">Actor ID: <%out.println(id); %>
                    </h2>

                    <div class='signup text-center container-sm'>

                        <form action="addActorsAction.jsp" method="post">

                            <div class="mb-3 mt-3">
                                <label for="name" class="form-label text-white">Name:</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
                            </div>

                           <div class="mb-3 mt-3">
                                <label for="surname" class="form-label text-white">Surname:</label>
                                <input type="text" class="form-control" id="surname" placeholder="Enter surname" name="surname" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="age" class="form-label text-white">Age:</label>
                                <input type="text" class="form-control" id="age" placeholder="Enter age" name="age" required>
                            </div>
                            
                            <div class="mb-3 mt-3">
                                <label for="gender" class="form-label text-white">Gender:</label>
                                <input type="text" class="form-control" id="gender" placeholder="Enter gender" name="gender" required>
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
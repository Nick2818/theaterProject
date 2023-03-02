<%@page import="project.ConnectionProvider" %>
    <%@page import="java.sql.*" %>

        <html>

        <head>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

            <%@include file="adminHeader.jsp" %>

                <title>EDIT ACTORS</title>
        </head>

        <body class="bg-dark">
            <br><br><br>
            <div class="container bg-dark">

                <h1 class="text-center text-white">ACTORS in database:</h1><br><br><br>
                

                <table class="table">
                    <thead>
                        <tr class="text-white">
                            <th>ID ACTOR</th>
                            <th>NAME</th>
                            <th>SURNAME</th>
                            <th>AGE</th>
                            <th>GENDER</th>
                            <th></th>
                            <th></th>
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
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(5) %></td>
                            <td><a href="editActorsByID.jsp?idactor=<%=rs.getString(1) %>" class="btn btn-warning">EDIT</a></td>
                            <td><a href="deleteActorsByID.jsp?idactor=<%=rs.getString(1) %>" class="btn btn-danger">DELETE</a></td>
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

        </body>
        <br><br><br>

        <%@include file="../footer.jsp" %>

        </html>
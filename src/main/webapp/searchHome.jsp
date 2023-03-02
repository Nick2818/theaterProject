<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>HOME-search</title>

    <%@include file="header.jsp" %>

</head>

 <body class="bg-black">
            <br><br><br>
            <div class="container bg-black">

                <h1 class="text-center text-white">Your search:</h1><br><br><br>
                

                <table class="table">
                    <thead>
                        <tr class="text-white">
                            <th>THEATER NAME</th>
                            <th>CITY NAME</th>
                            <th>COUNTRY</th>
                            <th>REGION</th>
                            <th>ACTOR NAME</th>
                            <th>ACTOR SURNAME</th>
                            <th>AGE</th>
                            <th>GENDER</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    int z = 0;
                    try{
                    	
                    	String search = request.getParameter("search");
                    	
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT t.theatername, c.cityname, c.country, c.region, a.name, a.surname, a.age, a.gender FROM ((theaters t INNER JOIN cities c ON t.idcity = c.idcity) INNER JOIN actors a ON t.idactor = a.idactor) WHERE c.cityname LIKE '%"+search+"%' OR c.region LIKE '%"+search+"%' OR c.country LIKE '%"+search+"%' OR t.theatername LIKE '%"+search+"%' OR a.name LIKE '%"+search+"%' OR a.surname LIKE '%"+search+"%'");
                    	while(rs.next()){
                			z = 1;
                    %>
                        <tr class="text-white">
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(5) %></td>
                            <td><%=rs.getString(6) %></td>
                            <td><%=rs.getString(7) %></td>
                            <td><%=rs.getString(8) %></td>
                        </tr>
                        <%}
                    }
                    catch(Exception e){
                    	System.out.println(e);
                    }
                    
                    
                    %>
                        <%if (z == 0){%>
                        
                        <h3 class="text-center text-white">Nothing. Try to search again.</h3><br><br><br>
                        
                        <%} %>
                        
                    </tbody>
                </table>

            </div>

        </body>
         <<div class="row">
        <!-- Background image -->
        <div class="bg-image" style="background-image: url('https://imgtr.ee/images/2023/01/28/G5Wki.jpg'); height: 100vh; background-position: center;
            background-repeat: no-repeat;
            background-size: cover;">
        </div>
        <!-- Background image -->
    </div>
</html>

<%@include file="../footer.jsp" %>
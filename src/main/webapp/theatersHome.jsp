<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <title>THEATERS</title>

    <%@include file="header.jsp" %>

</head>

 <body class="bg-black">
            <br><br><br>
            <div class="container bg-black">

                <h1 class="text-center text-white">THEATERS:</h1><br><br><br>
                

                <table class="table">
                    <thead>
                        <tr class="text-white">
                            <th>NAME</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    try{
                    	Connection con = ConnectionProvider.getCon();
                    	Statement st = con.createStatement();
                    	ResultSet rs = st.executeQuery("SELECT *FROM theaters");
                    	while(rs.next()){
                
                    %>
                        <tr class="text-white">
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
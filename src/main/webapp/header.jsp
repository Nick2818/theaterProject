<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body class="bg-black">

   
    <div class="container bg-black">  
	    <br><br><br>
	    <div class="text-center text-white">
	      <h1>Theaters around the WORLD</h1>
	      <p>This website shows theaters from entire world and details about location and actors.</p>
	    </div>  
		<br>
         
 	
 	
 	<nav class="navbar navbar-expand-sm navbar-dark bg-black bg-gradient">
		  <div class="container-fluid">
			  	<%String email = session.getAttribute("email").toString();%>
			  	
			    <a class="navbar-brand" href="home.jsp"><%out.println(email); %><i class="bi bi-person-circle"></i></a>
			    
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    
			    <div class="collapse navbar-collapse" id="mynavbar">
			      <ul class="navbar-nav me-auto">
			        <li class="nav-item">
			          <a class="nav-link" href="home.jsp">HOME</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="theatersHome.jsp">Theaters</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="actorsHome.jsp">Actors</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="citiesHome.jsp">Cities</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="allHome.jsp">Show all</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="logout.jsp">Logout</a>
			        </li>
			      </ul>
			      
			      <form action="searchHome.jsp" method="post" class="d-flex">
			        <input for="search" id="search" name="search" class="form-control me-2" type="text" placeholder="Search">
			        <input type="submit" class="btn btn-danger text-black fw-bold" value="Search">
			      </form>
			    </div>
		  </div>
	</nav>

</div>
 
 </body>
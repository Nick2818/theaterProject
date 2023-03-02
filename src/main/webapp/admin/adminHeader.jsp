<%@page errorPage="error.jsp" %>
  <!DOCTYPE html>
  <html>

  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <!--Header-->

  <div class="container bg-dark">

    <div class="text-center text-white">
      <h1>Theaters Around the WORLD</h1>
    </div><br>
    
    
    <div class="text-center text-white"><br>
      <p>[ADMIN ACCESS]</p>
    </div><br>
    
    <div class="text-center">
    	<a href="../logout.jsp" class="btn btn-danger">LOGOUT</a>
    </div><br>

    <div class="row">

      <div class="col text-center">
      
      	<div class="text-center">
        	<a href="addCities.jsp" class="btn btn-success">ADD CITIES</a>
        </div><br>
        <div class="text-center">
        	<a href="editCities.jsp" class="btn btn-warning">EDIT CITIES</a>
        </div>
      </div>

      <div class="col text-center">
	      <div class="text-center">
	        <a href="addTheater.jsp" class="btn btn-success">ADD THEATERS</a>
	       </div><br>
	        <div class="text-center">
	        	<a href="editTheaters.jsp" class="btn btn-warning">EDIT THEATERS</a>
	        </div>
      </div>

    
      <div class="col text-center">
	      <div class="text-center">
	        	<a href="addActors.jsp" class="btn btn-success">ADD ACTORS</a>
	        </div><br>
        <div class="text-center">
        	<a href="editActors.jsp" class="btn btn-warning">EDIT ACTORS</a>
        </div>
      </div>

    </div>

    <div class="text-center text-white">
      <h1></h1>
    </div>

  </div>

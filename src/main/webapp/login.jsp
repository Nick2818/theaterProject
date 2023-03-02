<!DOCTYPE html>
<html>

<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

  <title>Login</title>
</head>

<body class="bg-black">
<br><br><br>
  <div class="row text-center">
  <br><br><br>
    <h1 class="text-white">Theaters around the WORLD</h1>
    <p class="text-white">This website shows theaters from entire world and details about location and actors.</p>
    
    <div class="text-center text-white"><br>
      <h1>LOG IN</h1>
    </div>

    <% 
    String msg = request.getParameter("msg"); 
    if("notExist".equals(msg)) 
    { %>

      <h1 class="text-danger">Incorrect username or password!</h1>

    <%} %>

    <% 
    if("invalid".equals(msg)) 
    { %>

          <h1 class="text-danger">Something went wrong! Try again!</h1>

    <%} %>

  </div>



<div class="row">

	<div class="col-md">
	
	</div>

	<div class="col-md">
	    <form action="loginAction.jsp" method="post">
	
	      <div class="col-xs-3">
	        <label for="email" class="form-label text-white">Email:</label>
	        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
	      </div>
	
	      <div class="mb-3 mt-3">
	        <label for="password" class="form-label text-white">Password:</label>
	        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
	      </div>
	
	      <div class="mb-3 text-center">
	       	<input type="submit" class="btn btn-danger text-black fw-bold"" value="LOGIN">
	      </div>
	
	    </form>
	    
	  
		<div class="text-center">
		    <a href="signup.jsp" class="btn btn-danger text-black fw-bold">Sign up</a>
		    <a href="forgotPassword.jsp" class="btn btn-danger text-black fw-bold"">Forgot password</a>
	    </div>
    </div>
    
    <div class="col-md">
	
	</div>
    
</div> 

<div class="row">
        <!-- Background image -->
        <div class="bg-image" style="background-image: url('https://imgtr.ee/images/2023/01/28/G5Wki.jpg'); height: 100vh; background-position: center;
            background-repeat: no-repeat;
            background-size: cover;">
        </div>
        <!-- Background image -->
    </div>   

</body>
<%@include file="../footer.jsp" %>
</html>
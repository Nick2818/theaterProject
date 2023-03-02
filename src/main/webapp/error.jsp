<%@page isErrorPage="true" %>
<!DOCTYPE html> 

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

	<title>Error Page</title>

</head>

<body class="bg-black">


<div class="container w-50"><br><br><br>
	<div class="alert alert-danger">
	  <strong>Something went wrong!</strong> Try again to log in.
	</div><br><br><br>
	
	<div class="mb-3 text-center">
	      <a href="login.jsp" class="btn btn-danger text-black fw-bold">Login</a>
	</div>
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

<footer>
<br><br><br>

        <%@include file="../footer.jsp" %>
</footer>
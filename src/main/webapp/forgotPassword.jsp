<!DOCTYPE html>
<html>

<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

  <title>ForgotPassword</title>

</head>

<body class="bg-black">
  <div class="header text-center">
	<div class="text-center text-white">
            <br><br><br>
            <h1>Theaters around the WORLD</h1>
            <p>This website shows theaters from entire world and details about location and actors.</p>
       </div>

    <% 
    String msg=request.getParameter("msg"); 
    if("done".equals(msg)) { %>

      <h1 class="text-succes">Password changed successfully.</h1>

      <%} %>

        <%  
        if("invalid".equals(msg)) { %>

          <h1 class="text-danger">Something went wrong! Try again!</h1>

          <%} %>

  </div>

	<br>
  <div class="forgotPassword container-sm">

    <form action="forgotPasswordAction.jsp" method="post">


      <div class="mb-3 mt-3">
        <label for="email" class="form-label text-white">Email:</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
      </div>

      <div class="mb-3 mt-3 text-center">
        <label class=" my-1 mr-2 text-white" for="inlineFormCustomSelectPref">Security question:</label>
        <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="securityQuestion" required>
          <option selected>Choose...</option>
          <option value="What was your first car?">What was your first car?</option>
          <option value="What is the name of your first pet?">What is the name of your first pet?</option>
          <option value="What is the name of the town where you were born?">What is the name of the town where
            you were born?</option>
        </select>
      </div>

      <div class="mb-3 mt-3">
        <label for="answer" class="form-label text-white">Answer:</label>
        <input type="answer" class="form-control" id="answer" placeholder="Enter answer" name="answer" required>
      </div>

      <div class="mb-3 mt-3">
        <label for="newpass" class="form-label text-white">New password:</label>
        <input type="password" class="form-control" id="newpass" placeholder="Enter new password" name="newpass" required>
      </div>
      



      <div class="mb-3 text-center">
        <input type="submit" class="btn btn-danger text-black fw-bold" value="Submit">
      </div>

    </form>

    <div class="mb-3 mt-3 text-center">
      <a href="login.jsp" class="btn btn-danger text-black fw-bold">Login</a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset="UTF-8"/>
<title>jsp page</title>
 <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
</head>
<body style='background: url(img/pastel-ocean-stones-laptop-khd4yzh36qbhwljh-khd4yzh36qbhwljh.jpg); background-size: cover; background-attachment:fixed;'>
<div class='container '>
<div class='row'>
<div class='col m6 offset-m3'>
<div class='card'>
<div class='card-content'>
<h3 style='magin-tops:10px' class='center-align'>Register here !!!</h3>
<h5 id="msg" class='center-align'></h5>

<div class='form center-align'>
<form action="Register" method="post" id='myform'>
<input type='text' name='user_name' placeholder='Enter your user_name'>
<input type='password' name='user_password' placeholder='Enter your user_password'>
<input type='email' name='user_email' placeholder='Enter your user_email'>

<button type='submit' class='btn light-blue darken-2'>Submit</button>

</form>

</div>
<div class='loader center-align' style='margin-top: 10px;display: none;'>
 <div class="preloader-wrapper big active">
    <div class="spinner-layer spinner-blue-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

  <div class="preloader-wrapper active">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

  <div class="preloader-wrapper small active">
    <div class="spinner-layer spinner-green-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>
  </div>

<h5 class='center-align'>Please wait......</h5>
</div>
</div>
</div>
</div>
</div>

<script
  src="https://code.jquery.com/jquery-migrate-3.4.0.min.js"
  integrity="sha256-mBCu5+bVfYzOqpYyK4jm30ZxAZRomuErKEFJFIyrwvM="
  crossorigin="anonymous"></script>

<script>
$(document).ready(function(){
	console.log("page is ready...............")	

	$('#myform').on('submit', function(event){
		event.preventDefault();
		var f=$(this).serialize();
		
		console.log(f);
		
		 $(".loader").show();
		 $(".form").hide();
		
		$.ajax({
			url: "Register",
			data: f,
			type: post;
			success: function(data, textStatus,jqXHR){
			console.log(data);
			console.log("success..........");
			 $(".loader").hide();
			 $(".form").show();
			 
			 if(data.trim()==='done'){
				 $('#msg').html('Successfully Registered !!');
				 $("#msg").addClass("green-text");
			 }
			 else{
				 $('#msg').html('Something went wrong on server.... !!');
				 $("#msg").addClass("red-text");
			 }
			
			},
		error: function( jqXHR, textStatus, errorThrown){
			console.log(data);
			console.log("error..........");
			$(".loader").hide();
			 $(".form").show();
			 $('#msg').html('Something went wrong on server.... !!');
			 $("#msg").addClass("red-text");
			
			}
		});
		});
	});
	};
	</script>
</body>
</html>
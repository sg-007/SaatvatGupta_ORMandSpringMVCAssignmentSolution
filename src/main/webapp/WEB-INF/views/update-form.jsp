<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
crossorigin="anonymous">

<title>Update Customer</title>
</head>

<body style="background-color:powderblue;">  

<div class = "container">
<p></p><p></p><p></p>
        <h2>Update Customer</h2> 
         
       <form:form method="POST" action="/GradedProjectSpring/customer/update">  
         
        <div class="form-group">
					<form:hidden path="id" class="form-control-sm"/>
			</div>       
			
         <div class="form-group">
				<label class="control-label col-sm-2" for="firstName" style="float: left">First Name: </label>
				<div class="col-sm-10">
					<form:input path="firstName" class="form-control-sm"/>
				</div>
			</div> 
			     
			<p></p>
			  
         <div class="form-group">
				<label class="control-label col-sm-2" for="lastName" style="float: left">Last Name: </label>
				<div class="col-sm-10">
					<form:input path="lastName" class="form-control-sm"/>
				</div>
			</div>      
         <p></p>

			<div class="form-group">
				<label class="control-label col-sm-2" for="email" style="float: left">Email: </label>
				<div class="col-sm-10">
					<form:input path="email" class="form-control-sm"/>
				</div>
			</div>     
             
            <p></p>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-secondary btn-sm">Update</button>
				</div>
			</div>  
  
           
       </form:form>
</div>
		
       </body>

</html>
       
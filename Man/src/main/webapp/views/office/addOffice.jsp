<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New | Office Management</title>
</head>
<body style="background-color:#2D8BDD" >
    <div class="container mt-2" >
	<div class="jumbotron">
	<div class="row">
	<div class="col-md-6 offset-md-3">
		<h3 class="text-center font-weight-bold mb-3">New Employee</h3>
		<hr class="my-4">
			<form class="form" method="POST" action="office">
				<div class="form-group">
					<label for="name">Name</label> <input type="text" name="name"
						id="name" class="form-control" placeholder="Enter your name"
						required />
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="text" name="email"
						id="email" class="form-control" placeholder="Enter your e-mail"
						required />
				</div>
				<div class="form-group">
					<label for="email">Address</label> <input type="text"
						name="address" id="address" class="form-control"
						placeholder="Enter your address" required />
				</div>
				<div class="form-group">
					<p>Gender</p>
					<div class="form-check ">
						<input class="form-check-input" type="radio" name="gender"
							id="femaleRadioBtn" value="Female" checked /> <label
							class="form-check-label" for="femaleRadioBtn">Female</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="maleRadioBtn" value="Male" /> <label
							class="form-check-label" for="maleRadioBtn">Male</label>
					</div>
				

				<div class="form-group">

					<label for="description">Job Description</label>

					<textarea class="form-control" name="description" id="description"
						rows="5" placeholder="Enter the product description">
					</textarea>
				</div>

				 <input type="submit" value="Add"
					class="btn btn-primary col-mid-1 text-center" />
				 <a href=<%= request.getContextPath() + "/office" %> class="btn btn-secondary" >Back Employee List</a>&nbsp; 
			</form>
		</div>
     <hr class="my-4">
	</div>
					</div>
			</div>

	</div>
	</div>

	<script>
		$(document).ready(function() {
			$(".languages-multiple-select").select2({
				placeholder : "Select the preferred languages",
				width : "resolve"
			})
		});
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Edit | Office Management System</title>
</head>
<body style="background-color:#2D8BDD">
	<%-- <jsp:include page="../base.jsp"></jsp:include> --%>
	<div class="container">
	<div class="jumbotron">
	
	<h1 class="display-4 font-weight-bold text-center">Office Management System</h1>
	<hr class="my-4">
		<h3 class="text-center">Employee Profile</h3>
		
		<form class="form" action="${pageContext.request.contextPath}/office" method="post">
			
		
			<table class="table table-striped">
				<tr>
					<th>Employee ID</th>
					<td>
						<input type="text" name="id" class="form-control" value="${ office.id }" />
					</td>
				</tr>
				<tr>
					<th>Name</th>
					<td>
						<input type="text" name="name" class="form-control" value="${ office.name }" />
					</td>
				</tr>
				<tr>
					<th>Email</th>
					<td>
						<input type="text" name="email" class="form-control" value="${ office.email }" />
					</td>
				</tr>
				<tr>
					<th>Address</th>
					<td>
						<input type="text" name="address" class="form-control" value="${ office.address }" />
					</td>
				</tr>
				<tr>
					<th>Gender</th>
					<td>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="femaleRadioBtn" value="Female" ${ office.gender == 'Female' ? 'checked' : '' } />
							<label class="form-check-label" for="femaleRadioBtn">Female</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="maleRadioBtn" value="Male" ${ office.gender == 'Male' ? 'checked' : '' } />
							<label class="form-check-label" for="maleRadioBtn">Male</label>
						</div>
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<th>Job Description</th>
					<td>

					<textarea class="form-control" name="description"
					id="description" rows="5" placeholder="Please select job Description">${ office.description }
					</textarea>
				
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
						 <input type="submit" value="Update your Profile" class="btn btn-primary" /> 
						<a href=<%= request.getContextPath() + "/office" %> class="btn btn-secondary" >Back Employee List</a>&nbsp;
					</td>
				</tr>
			</table>
		</form>
		<hr class="my-4">
	</div>
	</div>
	<script>
		$(document).ready(function() {
		    $(".languages-multiple-select").select2({
				width: "resolve",
			})
		});
	</script>
</body>
</html>
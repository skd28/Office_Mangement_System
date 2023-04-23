<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" 
integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Office | Office Management System</title>
</head>
<body style="background-color:#2D8BDD">
	<%-- <jsp:include page="../base.jsp"></jsp:include> --%>
	<div class="container" >
	<div class="jumbotron jumbotron-fluidn">
	<h1 class="display-4 font-weight-bold text-center">Office Management System</h1>
	<hr class="my-4">
		<h3 class="text-center">Employee List</h3>
		<table class="table">
		<thead class="table-dark">
			<tr >
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Description</th>
				<th></th>
				<th></th>
			</tr>
			</thead>
			<c:if test="${ !office.isEmpty() }">
				<c:forEach items="${ office }" var="office">
					<tr>
					    <th>119091${ office.id }</th>
						<%-- <td>119091${ office.id }</td> --%>
						<th>${ office.name }</th>
						<th>${ office.email }</th>
						<th>${ office.address }</th>
						<th>${ office.gender }</th>
						<th>${ office.description }</th>
						<%-- <td>${ office.name }</td>
						<td>${ office.email }</td>
						<td>${ office.address }</td> --%>
						<%-- <td>${ office.gender }</td>
						<td>${ office.description }</td> --%>
						<th>
							<a href="update/${office.id}" class="text-sucess"><i class="fas fa-pen-nib text-danger" style="font-size:30px;"></i>
							</a>
						</th>
						<th>
							<a href="remove/${office.id}" class="text-danger"> <i class="fas fa-trash text-primary" style="font-size:30px;"></i>
							</a>
						</th>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<div class="text-center">
		<a href=<%= request.getContextPath() %> class="btn btn-primary col-mid-1 ">Add Employee</a>&nbsp;&nbsp;</div>
	</div>
	</div>
	<hr class="my-4">
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Students Register</title>
</head>

<body>

	<div class="container">
		<h1 style="text-align: center; background-color: Crimson;">Student
			Registration For Debate</h1>
		<hr>

		<!-- Add a button -->
		<a href="/students_registration/students/showFormForAdd"
			class="btn btn-primary btn-sm mb-3"> Add Student </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="/students_registration/logout"
			class="btn btn-primary btn-sm mb-3 mx-auto"> Logout </a>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Student Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Student}" var="tempStudent">
					<tr>
						<td><c:out value="${tempStudent.id}" /></td>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/students_registration/students/showFormForUpdate?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a
							href="/students_registration/students/delete?studentId=${tempStudent.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<title>Save Student</title>
</head>


<body>

	<div class="container">

		<h1 style="text-align: center; background-color: Olive;">Student
			Registration</h1>
		<hr>

		<p class="h4 mb-4">Student</p>

		<form action="/students_registration/students/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Student.id}" />

			<div class="form-inline">
				<input type="text" name="FirstName" value="${Student.firstName}"
					class="form-control mb-4 col-4" placeholder="FirstName">
			</div>

			<div class="form-inline">

				<input type="text" name="LastName" value="${Student.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">



			</div>
			<div class="form-inline">

				<input type="text" name="Course" value="${Student.course}"
					class="form-control mb-4 col-4" placeholder="Course">



			</div>


			<div class="form-inline">

				<input type="text" name="Country" value="${Student.country}"
					class="form-control mb-4 col-4" placeholder="Country">



			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/students_registration/students/list">Back to Students
			List</a>

	</div>
</body>

</html>

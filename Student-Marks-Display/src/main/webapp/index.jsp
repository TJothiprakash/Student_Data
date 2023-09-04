<%@page import="controller.StudentMarks"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.ConnectionManager"%>
<%@ page import="controller.StudentMarks" %>

   <link href=”Bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
        <script type=”text/javascript” src=”Bootstrap/js/bootstrap.min.js”></script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Marks Entry</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 40%;
	margin: auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #333;
	text-align: center;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

<a href="" class="btn btn-primary">Get student marks</a>
	<div class="container">
		<h2>Student Marks Entry</h2>
		<form action="result.jsp">
			<label for="name">Student Name:</label> <input type="text"
				name="name" required> <label for="regNo">Registration
				Number: </label> <input type="text" name="regNo" required> <label
				for="subject1">Tamil Marks:</label> <input type="text"
				name="subject1" required> <label for="subject2">English
				Marks:</label> <input type="text" name="subject2" required> <label
				for="subject3">Maths Marks:</label> <input type="text"
				name="subject3" required> <label for="subject4">Science
				Marks:</label> <input type="text" name="subject4" required> <label
				for="subject5">History Marks:</label> <input type="text"
				name="subject5" required> <input type="submit"
				value="Submit">
		</form>
	</div>


	<!-- set values for parameters  -->








</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.StudentMarks"%>
<%@ page import="controller.ConnectionManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<%
	String name = request.getParameter("name");
	String regNo = request.getParameter("regNo");
	int tamil = Integer.parseInt(request.getParameter("subject1"));
	int english = Integer.parseInt(request.getParameter("subject2"));
	int maths = Integer.parseInt(request.getParameter("subject3"));
	int science = Integer.parseInt(request.getParameter("subject4"));
	int history = Integer.parseInt(request.getParameter("subject5"));

	StudentMarks studentMarks = new StudentMarks(name, regNo, tamil, english, maths, science, history);
	ConnectionManager.insertStudentMarks(studentMarks);
	int average = (tamil + english + maths + science + history) / 5;
	int total = tamil + english + maths + science + history;
	%>

	<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

h2 {
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	text-align: center;
	border: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}
</style>
	<h2>Student Marks Table</h2>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Registration No</th>
			<th>Tamil</th>
			<th>English</th>
			<th>Maths</th>
			<th>Science</th>
			<th>History</th>
			<th>Total Marks</th>
			<th>Average Marks</th>
		</tr>

		<!-- Sample data for demonstration -->
		<tr>
			<td><%=name%></td>
			<td><%=regNo%></td>
			<td><%=tamil%></td>
			<td><%=english%></td>
			<td><%=maths%></td>
			<td><%=science%></td>
			<td><%=history%></td>
			<td><%=total%></td>
			<td><%=average%></td>
		</tr>

		<!-- Add more rows as needed -->

	</table>
</body>
</html>





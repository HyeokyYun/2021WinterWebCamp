<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Employee</h1>
<form:form method="POST" action="../editsave">
<table>
	<tr>
	<td></td>
	<td><form:hidden path="id"/></td>
	</tr>
	<tr> 
	<td>Name: </td>
	<td><form:input path="name"/></td></tr>
	<td>Salary: </td>
	<td><form:input path="salary"/></td></tr>
	<td>Designation: </td>
	<td><form:input path="designation"/></td>
	</tr>
</table>
<button type="submit" value="editsave">Edit Save</button>
</form:form>
</body>
</html>
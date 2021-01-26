<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewEmp</title>
<style>
	#list{
		font-family: "Trebuchet MS", Verdana, sans-serif;
		border-collapse: collapse;
		border-spacing: 4px;
	}
	
	th{
		border-top: 1px solid blue;
		border-bottom: 1px solid blue;
		text-align: center;
		background-color: #0d47a1;
    	color: #ffffff;
	}
	td:nth-child(1){
		width: 30px;
	}
	td{
		width: 100px;
		text-align: center;
		border-bottom: 1px solid blue;
	}
	a{
		text-decoration: none;
		font-weight: bold;
	}
	tr:nth-child(2n) {
        background-color: #bbdefb;
    }
    tr:nth-child(2n+1) {
    	background-color: #e3f2fd;
    }
    
</style>
</head>
<body>
<h1>View</h1>
<table id='list'>
<tr>
	<th>Id</th>
	<th>Name</th>
	<th>salary</th>
	<th>Designation</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach var="emp" items="${list }">
<tr>
<td>${emp.id }</td>
<td>${emp.name }</td>
<td>${emp.salary }</td>
<td>${emp.designation }</td>
<td>${emp.regdate }</td>
<td><a href="editemp/${emp.id}">Edit</a></td>
<td><a href="deleteemp/${emp.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
<br/>
<a href="empform">Add New Employee</a>
</body>
</html>
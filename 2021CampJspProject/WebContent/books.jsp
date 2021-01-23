<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
<%@page import="com.bookreview.dao.BookreviewDao,com.bookreview.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="apptest.jsp">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="data.jsp">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="books.jsp">Books</a>
        </li>
      </ul>
    </nav>

<h1>List of books</h1><p><a href="https://blog.naver.com/japchae153/222217891091">!!! 절대클릭금지 !!!</a></p>

<%  
	List<Bookreview> list=BookreviewDao.getAllRecords();  
	request.setAttribute("list",list);  
%>  

<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Comment</th>
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="addbookform.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${list }" var="u">
      	<tr>
      		<td>${u.getTitle()} </td>
      		<td>${u.getWriter()} </td>
      		<td>${u.getContent()} </td>
      		<td class="d-print-none">
      			<a class="btn btn-sm btn-warning" href="editform.jsp?seq=${u.getSeq() }">Edit</a>
      			<a class="btn btn-sm btn-danger" href="deleteform.jsp?seq=${u.getSeq() }">Delete</a>
      			<a class="btn btn-sm" href="moreinfo.jsp?seq=${u.getSeq() }">More</a>
      		</td>
      	</tr>
      </c:forEach>
        
    </tbody>
  </table>
</div>



    <footer>
      <p>&copy; 2021 - AppTest</p>
    </footer>

  </div>

</body>

</html>

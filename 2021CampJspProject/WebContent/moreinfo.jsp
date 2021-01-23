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
    
    <%@page import="com.bookreview.dao.BookreviewDao,com.bookreview.bean.Bookreview"%>  
    <%  
		String seq=request.getParameter("seq");  
		Bookreview u=BookreviewDao.getRecordById(Integer.parseInt(seq));  
	%>  

<h1>책 상세정보 확인하기</h1>

<form action="deletebook.jsp" method="post">
	<input type="hidden" name="seq" value="<%=u.getSeq() %>" readonly />
	
    <div class="form_horizontal">
      <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <input autofocus class="form-control" name="title" value="<%=u.getTitle() %>" readonly />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="writer">Author</label>
    <div class="col-sm-7">
      <input class="form-control" name="writer" value="<%=u.getWriter() %>" readonly />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="content">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="content" rows="7" cols="20" readonly ><%=u.getWriter() %></textarea>
    </div>
</div>
      <div class="form-group row">
        <label class="col-form-label col-sm-2"></label>
        <div class="col-sm-10">
          <a class="btn btn-outline-dark cancel"href="books.jsp">Back</a>
        </div>
      </div>
    </div>
</form>

    <footer>
      <p>&copy; 2021 - AppTest</p>
    </footer>

  </div>

</body>

</html>

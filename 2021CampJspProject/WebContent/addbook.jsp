<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bookreview.dao.BookreviewDao"%>
<jsp:useBean id="u" class="com.bookreview.bean.Bookreview"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=BookreviewDao.save(u);  
if(i>0){  
response.sendRedirect("books.jsp");  
}else{  
response.sendRedirect("addbook-error.jsp");  
}  
%>  
</body>
</html>
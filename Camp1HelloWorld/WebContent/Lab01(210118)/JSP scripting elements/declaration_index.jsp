<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Index_index.jsp</title>
</head>
<body>
<%!   
int cube(int n){  
	return n*n*n;  
}  
%>  
<%= "Cube of 3 is:"+cube(3) %>  
</body>
</html>
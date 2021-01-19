<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_Directives</title>

<script>
	public String getServletInfo() {  
		  return "composed by Sonoo Jaiswal";   
	}
</script> 
</head>
<body>
	<h2>Import</h2>
	<%@ page import="java.util.Date" %>
	<p>Today is: <%=new Date() %></p>
	
	<br><hr><br>
		
	<h2>Info</h2>
	<%@ page info="composed by Sonoo Jaiswal" %>  
	<p>Today is: <%= new java.util.Date() %><p>
	
	<br><hr><br>
	
	
</body>
</html>
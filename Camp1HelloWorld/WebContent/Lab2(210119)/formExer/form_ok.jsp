<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
%>

<h4>�Է��Ͻ� �̸��� ������ �����ϴ�.</h4>

<%=lname %> <%=fname %> 
</body>
</html>
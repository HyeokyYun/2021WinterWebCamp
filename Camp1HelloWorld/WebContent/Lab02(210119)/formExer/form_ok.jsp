<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입정보</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userid");
	String password = request.getParameter("pwd");
	String email = request.getParameter("email");
	String emailAgree = request.getParameter("emailAgree");
	String[] interest = request.getParameterValues("interest");
	String phone1 = request.getParameter("phone1");
	String tel = request.getParameter("tel");
	String introduce = request.getParameter("introduce");
%>

<h3>회원가입정보</h3>
<p>아이디<p>
<%=userid %><br>
<p>비밀번호<p>
<%=password %><br>
<p>이메일<p>
<%=email %><br>
<p>이메일동의<p>
<%=emailAgree %><br>
<p>관심사항<p>
<%
	for(String val : interest){
		out.print(val+ " ");
	}
%><br>
<p>핸드폰<p>
<%=phone1 %>-<%=tel %><br>
<p>자기소개<p>
<%=introduce %><br>
</body>
</html>
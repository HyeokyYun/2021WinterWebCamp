<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입정보EL</title>
</head>
<body>
	<p>아이디</p>
	${param.userid }
	<p>비밀번호</p>
	${param.pwd }
	<p>이메일</p>
	${param.email }
	<p>이메일 수신여부</p>
	${param.emailAgree }
	<p>관심사항</p>
	<%=String.join(", ",request.getParameterValues("interest"))%>
	<p>핸드폰</p>
	${param.phone1 }-${param.tel }
	<p>자기소개</p>
	${param.introduce }
</body>
</html>
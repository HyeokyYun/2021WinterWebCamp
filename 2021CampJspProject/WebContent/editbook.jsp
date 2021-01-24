<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.bookreview.dao.BookreviewDao"%>
<%@page import="com.bookreview.bean.Bookreview"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="com.bookreview.bean.Bookreview"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
String filename = "";
int sizeLimit = 15 * 1024 * 1024;
String realPath = request.getServletContext().getRealPath("upload");
System.out.println(realPath);
File dir = new File(realPath);
	if (!dir.exists())
		dir.mkdirs();
MultipartRequest multpartRequest = null;
multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
String title = multpartRequest.getParameter("title");
String writer = multpartRequest.getParameter("writer");
String content = multpartRequest.getParameter("content");
filename = multpartRequest.getFilesystemName("image");
String seq = multpartRequest.getParameter("seq");
int num = Integer.parseInt(seq);

u.setTitle(title);
u.setWriter(writer);
u.setContent(content);
u.setImage(filename);
u.setSeq(num);

int i=BookreviewDao.update(u);  

if(i>0){  
response.sendRedirect("books.jsp");  
}else{  
response.sendRedirect("addbook-error.jsp");  
}  
%>  
</body>
</html>
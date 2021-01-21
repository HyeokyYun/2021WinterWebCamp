<%@page import="com.bookreview.dao.BookreviewDao"%>  
<jsp:useBean id="u" class="com.bookreview.bean.Bookreview"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
BookreviewDao.delete(u);  
response.sendRedirect("books.jsp");  
%>  
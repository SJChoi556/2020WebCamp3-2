<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Edit Page</title>
</head>
<body>

	<%@page import="com.dao.UserDao"%>
	<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	int i = UserDao.update(u);
	response.sendRedirect("view.jsp");
	%>

</body>
</html>
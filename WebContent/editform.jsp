<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Edit Form Page</title>
</head>
<body>

	<%@page import="com.dao.UserDao,com.bean.User"%>

	<%
	String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		
		Name: <input type="text" name="name" value="<%=u.getName()%>"/><br>
		PW: <input type="text" name="password" value="<%=u.getPassword()%>"/><br>
		E-mail: <input type="text" name="email" value="<%=u.getEmail()%>"/><br>
		Sex: <input type="radio" name="sex" value="male"/>Male 
			<input type="radio" name="sex" value="female"/>Female<br>
		Country: <input type="text" name="country" value="<%=u.getCountry()%>"/><br>
		<input type="submit" value="Edit User" />
	</form>		

</body>
</html>
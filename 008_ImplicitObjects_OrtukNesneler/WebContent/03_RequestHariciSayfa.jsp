<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Harici Sayfamız</title>
</head>
<body>
	<font face="arial" color="red"> Asrın Sözü : </font>

	<font face="arial" color="green"> 
	<%=request.getAttribute("aktarilanbilgi")%>
	</font>
</body>
</html>
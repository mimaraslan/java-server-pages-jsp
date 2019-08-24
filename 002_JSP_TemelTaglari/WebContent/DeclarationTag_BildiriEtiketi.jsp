<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Declaration tag - Bildiri etiketi</title>
</head>
<body>
<h1>Declaration tag - Bildiri etiketi</h1>

<%!
public int fetihTarihi = 1453;
public String hunkarPadisah ="FATİH SULTAN MEHMET HAN HAZRETLERİ";
%>

<% out.print(fetihTarihi); %>
<hr>
<% out.print(hunkarPadisah); %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Scriptlet Tag - Kodlama Etiketi</title>
</head>
<body>
 <h1>Scriptlet Tag - Kodlama Etiketi</h1>
<% 

String sehirAdi = "Ankara";
int tarih = 1402;

out.println("Mekan = "+sehirAdi + " Zaman =" + tarih);

%>

</body>
</html>
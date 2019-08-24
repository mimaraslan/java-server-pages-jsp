<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Operatorler</title>
</head>
<body>
<% double sayi1=1453, sayi2=1299, sonuc=0; %>

Toplama = <% out.println(sonuc = sayi1 + sayi2); %> <br>
Çıkarma = <% out.println(sonuc = sayi1 - sayi2); %> <br>
Çarpma = <% out.println(sonuc = sayi1 * sayi2); %> <br>
Bölme = <% out.println(sonuc = sayi1 / sayi2); %> <br>
Mod alma = <% out.println(sonuc = sayi1 % sayi2); %> <br>

</body>
</html>
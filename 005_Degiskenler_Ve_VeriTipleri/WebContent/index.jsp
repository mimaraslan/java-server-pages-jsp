<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Değişkenler ve Veri tipleri</title>
</head>
<body>

<%

int sayi1 = 0, sayi5=571, sayi3=632;
byte kontrolSayisi = 14, kapanisSayisi;
double a = 0,bdegiskeni,c = 12.99;
float d, e= 15.17f  ,    g=(float) 14.53;
char  karakter= 'a';

System.out.println(sayi1 + sayi3 * sayi5);

kapanisSayisi = 120 ;
System.out.println(kapanisSayisi);

System.out.println(c*c+a);

System.out.println(g-e);
System.out.println(++karakter);

%>



<% out.println(kapanisSayisi); %> <br>
<% out.println(c*c+a); %> <br>
<% out.println(g-e); %> <br>
<%  karakter= 'a'; out.println(++karakter); %> <br>



</body>
</html>
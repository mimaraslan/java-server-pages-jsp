<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Temel Etikelerin Kullanımı</title>
</head>
<body>
<h1>Temel Etikelerin Kullanımı</h1>


<font face=verdana color=darkblue>METOD ÖNCESİ</font>
<br>

<%!

public String yaziYazanMetot (int donguKacDefaDonecek){
	
	String cumle ="";
	
	for(int i = 1; i < donguKacDefaDonecek ; i++)
	
		cumle = cumle + "<font size=" + i + "face=arial color=blue>"+
		"Güzel gören gözel düşünür.<br>"+
		"Güzel düşünen hayatından lezzet alır.</font><br>";

	return cumle;
}

%>

<br>

<%= yaziYazanMetot(6) %>

<font face=verdana color=red>METOD SONRASI</font>

</body>
</html>
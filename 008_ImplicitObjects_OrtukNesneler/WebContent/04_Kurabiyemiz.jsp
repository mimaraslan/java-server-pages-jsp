<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kurabiyeleri Al</title>
</head>
<body>
	<%
		Cookie[] kurabiyemiz = request.getCookies();
		// Cookie tipinde kurabiyemiz dizi değişkenini tanımladık
		// 04_ResponseNesnesininKullanimi.jsp sayfasından gelen kurabiye alındı.
		for (int i = 0; i < kurabiyemiz.length; i++) {

			if (kurabiyemiz[i].getName().equalsIgnoreCase("testKurabiyesi")) {

				out.println("Gelen Cookie(Kurabiye) Degerlerimiz : "
						+ kurabiyemiz[i].getValue());
			}
		}
		// Gelen kurabiyeler for döngüsüne sokularak yazdırıldı.
	%>


</body>
</html>
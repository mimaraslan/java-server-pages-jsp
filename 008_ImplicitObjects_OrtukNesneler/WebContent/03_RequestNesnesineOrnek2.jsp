<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>request Nesnesi ve Harici Sayfa Kullanımına Örnek JSP Sayfamız 2</title>
</head>
<body>
	<h3>
		<font face="arial" color="darkblue"> 03_RequestNesnesineOrnek2.jsp
			<br> Sayfasından requestHariciSayfa.jsp sayfasına <br>
			gönderilenlen bilgi :<br>
		</font>
		<%
			request.setAttribute("aktarilanbilgi",
					"<br>Güzel Gören Güzel Düşünür," + 
			"<br>Güzel Düşünen"
							+ "<br>Hayatından Lezzet Alır.");
		%>
	</h3>

	<hr>

	<h3>
		<jsp:include page="03_RequestHariciSayfa.jsp" />
	</h3>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session(Oturum) Nesnesini Oluşturan JSP Sayfamız</title>
    </head>
    <body>
 <%
   String kullaniciadiDegiskeni = request.getParameter( "kullaniciadi" );
   session.setAttribute( "oturumdakiKullaniciadi", kullaniciadiDegiskeni );
 %>
        Session(oturum)nesnesi hazır.<br>
        <a href="05_SessionNesnesiniGoster.jsp">Diğer JSP sayfasında görmek için Tıklayınız.</a>


</body>
</html>
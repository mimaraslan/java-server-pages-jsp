<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Session Nesnesini Göster</title>
    </head>
    <body>
    Sesion(Oturum) id değerimiz : <%=session.getId() %><br>
        <h3>Hoşgeldiniz Sayın : <%= session.getAttribute( "oturumdakiKullaniciadi" ) %></h3>

</body>
</html>
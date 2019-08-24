<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <!--MENU BAŞI -->   
<f:subview id="anakategori_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--MENU SONU -->  

   

<!--KAYIT ARA FORMU BAŞI -->   
<f:subview id="anakategori_ara_form_kodu">
    <jsp:include page="anakategori_ara_form_kodu.jsp" />
</f:subview>
<!--KAYIT ARA FORMU SONU -->  


</body>
</html>

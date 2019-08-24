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

<!--KAYIT DUZENLEME FORM KODU BASI -->   
<f:subview id="anakategori_duzenle_form_kodu">
    <jsp:include page="anakategori_duzenle_form_kodu.jsp" />
</f:subview>
<!--KAYIT DUZENLEME FORM  KODU SONU -->   


</body>
</html>

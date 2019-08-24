<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
   
    
 <!--ANA KATEGORİ MENU BAŞI -->   
<f:subview id="uye_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--ANA KATEGORİ MENU SONU -->    



<!--ANA KATEGORİ MENU BAŞI -->   
<f:subview id="anakategori_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--ANA KATEGORİ MENU SONU -->  

<!--KATEGORİ MENU BAŞI -->   
<f:subview id="kategori_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--KATEGORİ MENU SONU -->  


<!--VİDEO MENU BAŞI -->   
<f:subview id="video_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--VİDEO MENU SONU -->  



</body>
</html>

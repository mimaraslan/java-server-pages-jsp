<%-- 
    Document   : index
    Created on : 09.Ara.2012, 22:32:57
    Author     : mimar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Versiyonlar - Sürümler</title>
</head>
<body>
    
Sunucu sürümü <%= application.getServerInfo() %> 
<br>
Servlet sürümü <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> 
<br>
JSP sürümü <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>


    
</body>
</html>

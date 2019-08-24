<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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


    
<%        Connection conSil = null; 
          Statement stmtSil = null;
          ResultSet rsSil = null;
	PreparedStatement preparedStatementSil = null;     
    try {  
Class.forName("com.mysql.jdbc.Driver").newInstance();
String urlDuzenle = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";

        conSil = DriverManager.getConnection(urlDuzenle);
        // out.println("Baglandık.");
  
        
        
        //KAYDI BURADA DÜZENLE
     String  sqlSil = "DELETE FROM anakategori "
         + " WHERE anakategoriid = ? " ;


        
   preparedStatementSil = conSil.prepareStatement(sqlSil);
   preparedStatementSil.setString(1, request.getParameter("anakategoriid"));    
   
   preparedStatementSil.executeUpdate();
 
%>
  <h1>BAŞARILI OLARAK SİLİNDİ.</h1>
<%
        
               
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
                %>
  <h1>SİLME İŞLEMİ BAŞARISIZ !!!</h1>
<%
            } finally {
     //   conSil.close();
        }
        %>    
    
     
</body>
</html>
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
    <title>Kayıt Girişi</title>
</head>


<body>
    
   <!--MENU BAŞI -->   
<f:subview id="anakategori_menu_kodu">
    <jsp:include page="anakategori_menu_kodu.jsp" />
</f:subview>
<!--MENU SONU -->  

   
  
<!--KAYIT EKLE FORMU BAŞI -->   
<f:subview id="anakategori_ekle_form_kodu">
    <jsp:include page="anakategori_ekle_form_kodu.jsp" />
</f:subview>
<!--KAYIT EKLE FORMU SONU -->  


        <%
          Connection conEkle = null; 
          
          PreparedStatement preparedStatementEkle = null;
         
          
            try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
String urlEkle = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";

    
                 conEkle = DriverManager.getConnection(urlEkle);
               // out.println("Baglandık.");
   
             

                //KAYITLARI SORGULAMA KOMUTLARI
                // SQL query command
                String sqlEkle = "INSERT INTO anakategori "
+ "(anakategoriadi,anakategorisirasi, anakategoriresimadi)"
+ "VALUES(? , ?, ?)";
                preparedStatementEkle = conEkle.prepareStatement(sqlEkle);

                preparedStatementEkle.setString(1, request.getParameter("anakategoriadi"));
                preparedStatementEkle.setString(2, request.getParameter("anakategorisirasi"));
                preparedStatementEkle.setString(3, request.getParameter("anakategoriresimadi"));


                preparedStatementEkle.execute();
                
           
               
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
                
            } catch (ClassNotFoundException cE) {
                out.println("Sınıfı bulma hatası: " + cE.toString());
            } finally {
        conEkle.close();
        }

  %>
                
    <!--KAYIT LİSTELEME KODU BAŞI -->   
<f:subview id="anakategori_ara_listeme_kodu">
    <jsp:include page="anakategori_tum_kayitlari_listeme_sql_kodu.jsp" />
</f:subview>
<!--KAYIT LİSTELEME KODU SONU -->   
  

</body>
</html>

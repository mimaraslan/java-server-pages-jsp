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



<script>
function formuKontrolEdenFonksiyon(form){
//--------------------------------
if(form.anakategoriadi.value==''){

alert ("anakategoriadi alanını boş geçemezsiniz.");
return false;
}
//--------------------------------
if(form.anakategorisirasi.value==''){

alert ("anakategorisirasi alanını boş geçemezsiniz.");
return false;
}
//--------------------------------
}
</script>

<body>
    
<h1>Liste</h1>

    <table width="500">
        <tr>
            <td><strong>ID</strong></td>
            <td><strong>Adı</strong></td>
            <td><strong>Sirası</strong></td>
            <td><strong>Resim Adı</strong></td>
            <td><strong></strong></td>   
        </tr>
    
<%        Connection conDuzenle = null; 
          Statement stmtDuzenle = null;
          ResultSet rsDuzenle = null;
           
    try {  
          Class.forName("com.mysql.jdbc.Driver").newInstance();
String urlDuzenle = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";

        conDuzenle = DriverManager.getConnection(urlDuzenle);
        // out.println("Baglandık.");
   
                
      //DÜZENLENECEK KAYDI ARA BUL LİSTELE
                String sqlDuzenle = "SELECT  * FROM anakategori "
                        + " WHERE anakategoriid = " + request.getParameter("anakategoriid");

                stmtDuzenle = conDuzenle.createStatement();
                rsDuzenle = stmtDuzenle.executeQuery(sqlDuzenle);
        %>
       
        <%!            
        int i = 0;
        String renk = "#ffccff";
        %>
        
        <%
 String anakategoriadi; 
            while (rsDuzenle.next()) {
anakategoriadi = rsDuzenle.getString("anakategoriadi");
                i = i % 2;
                if (i == 0) {
                    renk = "#ffff99";
                } else {
                    renk = "#ccffcc";
                }

        %>
        <tr bgcolor="<%out.println(renk);%>">
                               

            <td><%= rsDuzenle.getInt("anakategoriid")%></td>
            <td><%= rsDuzenle.getString("anakategoriadi")%></td>
            <td><%= rsDuzenle.getInt("anakategorisirasi")%></td>
            <td><%= rsDuzenle.getString("anakategoriresimadi")%></td>
             <td>
         <a href="anakategori_sil_sonuc.jsp?anakategoriid=<%= rsDuzenle.getInt("anakategoriid")%>">
             <img src="../img/sil.png" alt="Sil" width="32" height="32" border="0">Sil</img>
        </a>    
             </td>

        </tr>
        
          </table>  
             
             <hr></hr>
     
     <h1>Düzenle</h1>
    
<form id="anakategori_duzenle_form_kodu" name="anakategori_duzenle_form_kodu"
          onsubmit="return formuKontrolEdenFonksiyon(document.anakategori_duzenle_form_kodu);"
          method="post" action="anakategori_duzenle_sonuc.jsp">
    
  <table width="500" border="0">
      
      <input type="text" name="anakategoriid" id="anakategoriid" value="<%= rsDuzenle.getInt("anakategoriid")%>" />
      
    <tr>
      <td width="100">Ana kategori adi </td>
      <td width="200"><input type="text" name="anakategoriadi" id="anakategoriadi" value="<%= rsDuzenle.getString("anakategoriadi")%>" /></td>
    </tr>
    
    <tr>
      <td>Ana kategori sirasi</td>
      <td><input type="text" name="anakategorisirasi" id="anakategorisirasi" value="<%= rsDuzenle.getString("anakategorisirasi")%>" /></td>
    </tr>
   <tr>
      <td>Ana kategori resim adi</td>
      <td>
            <img  width="250" src="../img/<%= rsDuzenle.getString("anakategoriresimadi")%>"
                  alt="<%= rsDuzenle.getString("anakategoriresimadi")%>"/> 
            <span class="zoom"></span>
                  
   <input type="file" name="anakategoriresimadi" id="anakategoriresimadi" 
          size="50" value="<%= rsDuzenle.getString("anakategoriresimadi")%>" /></td>
    </tr>
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="reset" name="vazgec" id="vazgec" value="Vazgeç" />      
      <input type="submit" name="onayla" id="onayla" value="Onayla" /></td>
    </tr>
  </table>
</form>   
    
        <% } %>
           
        
           
        
        <%
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
            } finally {
       // conDuzenle.close();
        }
        %>    
    
     
        
        
   

</body>
</html>

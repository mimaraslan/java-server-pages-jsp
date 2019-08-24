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
    
    
   <h1>Liste</h1>

     <table width="100%">
        <tr>
            <td><strong>ID</strong></td>
            <td><strong>Adı</strong></td>
            <td><strong>Sırası</strong></td>
            <td><strong>Resim</strong></td>
            <td><strong></strong></td>   
        </tr>
    
<%        Connection conAra = null; 
          Statement stmtAra = null;
          ResultSet rsAra = null;
           
    try {  
          Class.forName("com.mysql.jdbc.Driver").newInstance();
String urlAra = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";

        conAra = DriverManager.getConnection(urlAra);
        // out.println("Baglandık.");
   
                
      //KAYITLARI LİSTELEME KOMUTLARI
                // SQL query command
                String anakategoriadi = request.getParameter("anakategoriadi") + "%";
                String anakategorisirasi = request.getParameter("anakategorisirasi") + "%";
                String anakategoriresimadi = request.getParameter("anakategoriresimadi") + "%";

                
                
                String sqlAra = "SELECT  *  FROM anakategori "
                        + " WHERE anakategoriadi LIKE '" + anakategoriadi + 
                        "' AND  anakategorisirasi LIKE '" + anakategorisirasi + 
                      
                        "' ";

                stmtAra = conAra.createStatement();
                rsAra = stmtAra.executeQuery(sqlAra);
        %>
       
        <%!            
        int i = 0;
        String renk = "#ffccff";
        %>
        
        <%

            while (rsAra.next()) {
                i = i + 1;
                i = i % 2;
                if (i == 0) {
                    renk = "#ffff99";
                } else {
                    renk = "#ccffcc";
                }

        %>
        <tr bgcolor="<%out.println(renk);%>">
                               

            <td><%= rsAra.getInt("anakategoriid")%></td>
            <td><%= rsAra.getString("anakategoriadi")%></td>
            <td><%= rsAra.getString("anakategorisirasi")%></td>
            <td> 
                  <img  width="100" src="../img/<%= rsAra.getString("anakategoriresimadi")%>"
                          alt="<%= rsAra.getString("anakategoriresimadi")%>"/> 
                    <span class="zoom"></span>
            
            </td>
            
              <td>
         <a href="anakategori_sil_sonuc.jsp?anakategoriid=<%= rsAra.getInt("anakategoriid")%>">
             <img src="../img/sil.png" alt="Sil" width="32" height="32" border="0">Sil</img>
        </a>    
             </td>
             
             <td>
         <a href="anakategori_duzenle_form.jsp?anakategoriid=<%= rsAra.getInt("anakategoriid")%>">
             <img src="../img/duzenle.png" alt="Düzenle" width="32" height="32" border="0">Düzenle</img>
        </a>
             </td>
             
             
              <td>
         <a href="kategori_ekle_form.jsp?anakategoriid=<%= rsAra.getInt("anakategoriid")%>">
             <img src="../img/ekle.png" alt="Ekle" width="32" height="32" border="0">Alt Kategori Ekle</img>
        </a>
             </td>
             
            


        </tr>
        <%
          
        %>

        <% }
             
            } catch (SQLException e) {
                out.println("SQL Hata: " + e.toString());
            } finally {
        conAra.close();
        }
        %>    
    
       </table>
        
        
        
</body>
</html>

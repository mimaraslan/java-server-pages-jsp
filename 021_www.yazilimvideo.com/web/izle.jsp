<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="hata.jsp" %>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<!DOCTYPE html>
<html lang="tr">
    <head>
    <title>Yazılım Video</title>
    <meta charset="UTF-8">

        <meta name="description" content="Yazılım Video, JSP - HTML5 - CSS3 - MySQL">
        <meta name="author" content="Mimar Aslan, Computer Engineer, mimaraslan.com">

        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
        <link rel="shortcut icon" type="image/png" href="favicon.png">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/style.css">

   </head>
   
    <body>
        <header class="center clearfix" id="navtop"> 
            <a href="index.jsp" class="logo fleft"><img src="img/logo.png" alt="" /></a>
            <nav class="fright">
                <ul>
                    <li><a href="index.jsp" class="navactive">Anasayfa</a></li>
                    <li><a href="hakkimizda.jsp">Hakkımızda</a></li>
                </ul>
                <ul>
                    <li><a href="dersler.jsp">Videolar</a></li>
                    <li><a href="http://www.youtube.com/user/yazilimvideo">VLog</a></li>
                </ul>
                <ul>
                    <li><a href="rehberlik.jsp">Rehberlik</a></li>
                    <li><a href="sss.jsp">S.S.S</a></li>
                </ul>
            </nav>
        </header>
        
    <div class="main center">

                            <section class="grid col-three-quarters mq2-col-two-thirds mq3-col-full">

                                <figure class="">



                                    <!--  ORTA KISIM ICERIK BASI  -->
                                    <section>

                                        <article>
                                            
                                      



                                            <%
                                               
                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                                   String url = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
           //  String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";
                                                 Connection conVideoIzle = null;
                                                Statement stmtVideoIzle = null;
                                                ResultSet rstVideoIzle = null;
                                                
                                                
                                                ResultSet rstVideoIzleBirOnceki = null;
                                                Statement stmtVideoIzleBirOnceki = null;
                                                
                                                ResultSet rstVideoIzleBirSonraki = null;
                                                Statement stmtVideoIzleBirSonraki = null;
                                               
                                               
                                                try {
                                                     
                                                    conVideoIzle = DriverManager.getConnection(url);
                                                    
                                             
                                               
                                           
                                                    
                                               
                                               
                                                    
                                                    
                                                    stmtVideoIzle = conVideoIzle.createStatement();
                                                    rstVideoIzle = stmtVideoIzle.executeQuery("SELECT * FROM video WHERE kategoriid ='" + request.getParameter("kategoriid") + "' AND videosirasi ='" + (Integer.parseInt(request.getParameter("videosirasi"))) + "' ORDER BY videosirasi ASC;");
                                         
                                                    
                                                    
                                                    // SON VIDEONUN SAYISINI ALAN SORGU---BASI--- 
                                            Statement    stmtVideoIzle1 = conVideoIzle.createStatement();
                                            ResultSet    rstVideoIzle1 = stmtVideoIzle1.executeQuery("SELECT * FROM video WHERE kategoriid ='" + request.getParameter("kategoriid") + "';");
                                               
                                                  
                                                while (rstVideoIzle1.next()) {
                                                     String id = rstVideoIzle1.getString(1);
                                                  }
                                                                                                              
                                                rstVideoIzle1.last();
                                                int siraVideoIzle = rstVideoIzle1.getRow();
                                              //  out.println("Number of Rows=" + siraVideoIzle);
                                            
                                            // SON VIDEONUN SAYISINI ALAN SORGU---SONU--- 
                                                
                                                
                                                    while (rstVideoIzle.next()) {
                                         
     

                                            %>

                                        <h2><%=rstVideoIzle.getString("videoadi")%></h2>
                                          
   <table>
    <tr>
        <td>
            
              <iframe width="515" height="315"  src="//<%=rstVideoIzle.getString("videogommekodu")%>" frameborder="0" allowfullscreen></iframe> 
                                       
         
        </td>
        <td>
            
            <table class="">
    <tr>
        <td><strong>Anlatan</strong> </td>
        <td><%=rstVideoIzle.getString("videoanlatankisi")%></td>
    </tr>
    <tr>
        <td>Video Süresi</td>
        <td><%=rstVideoIzle.getString("videosuresi")%></td>
    </tr>
    <tr>
        <td>Eklenme Zamanı</td>
        <td><%=rstVideoIzle.getString("videoeklenmetarihvesaati")%></td>
    </tr>
    
    <tr>
        <td>Açıklama</td>
        <td><%=rstVideoIzle.getString("videoaciklamasi")%></td>
    </tr>
</table>
            
            
        </td>
    </tr>
</table>
                                        
                                           
                                            
                                            
                                       
                                            

 <p>  <a href="<%=rstVideoIzle.getString("videoadresi")%>" target="_blank">YouTube'da bu videoyu izlemek için tıklayın</a></p>
    

 
 

                                            <p>&nbsp;</p>
                                            <p><table width="100%" border="0">
                                                <tr>
                                                    <td align="left">

                                                        
                                 <% if (rstVideoIzle.getInt("videosirasi") == 1) {%>
                                                        
                                                        <a href="izle.jsp?kategoriid=<%=rstVideoIzle.getInt("kategoriid")%>&videosirasi=<%=1%>">                     
                                                            &Ouml;nceki  Video<br>
 <%
int birOnceki = (Integer.parseInt(request.getParameter("videosirasi")) - 1);
stmtVideoIzleBirOnceki = conVideoIzle.createStatement();
rstVideoIzleBirOnceki = stmtVideoIzleBirOnceki.executeQuery("SELECT * FROM video WHERE kategoriid ='" + request.getParameter("kategoriid") + "' AND videosirasi ='" + birOnceki + "'");
while (rstVideoIzleBirOnceki.next()) {
out.print(birOnceki +". "+ rstVideoIzleBirOnceki.getString("videoadi"));
}                                                
%>             
                                                        </a>

                                                        <% } else {%>

                                                        <a href="izle.jsp?kategoriid=<%=rstVideoIzle.getInt("kategoriid")%>&videosirasi=<%=rstVideoIzle.getInt("videosirasi") - 1%>">                     
                                                            &Ouml;nceki  Video<br>
 <%
int birOnceki = (Integer.parseInt(request.getParameter("videosirasi")) - 1);
stmtVideoIzleBirOnceki = conVideoIzle.createStatement();
rstVideoIzleBirOnceki = stmtVideoIzleBirOnceki.executeQuery("SELECT * FROM video WHERE kategoriid ='" + request.getParameter("kategoriid") + "' AND videosirasi ='" + birOnceki + "'");
while (rstVideoIzleBirOnceki.next()) {
out.print(birOnceki +". "+ rstVideoIzleBirOnceki.getString("videoadi"));                                               
}                                                
%>                                                                                                   
                                                        </a>

                                                        <%}%>


                                                    </td>
                                                    
                                                     
                                                
                                                    <td>

 <p><%=request.getParameter("videosirasi") + ". "+ rstVideoIzle.getString("videoadi")%> (<%=rstVideoIzle.getInt("videosirasi")%>/ <%=siraVideoIzle%>)</p> 

                                                    </td>
                                                    <td align="right">

                                                        <a href="izle.jsp?kategoriid=<%=rstVideoIzle.getInt("kategoriid")%>&videosirasi=<%=rstVideoIzle.getInt(4) + 1%>">
                                                            Sonraki Video<br>
  <%
int birSonraki = (Integer.parseInt(request.getParameter("videosirasi")) + 1);
stmtVideoIzleBirSonraki = conVideoIzle.createStatement();
rstVideoIzleBirSonraki = stmtVideoIzleBirOnceki.executeQuery("SELECT * FROM video WHERE kategoriid ='" + request.getParameter("kategoriid") + "' AND videosirasi ='" + birSonraki + "'");
while (rstVideoIzleBirSonraki.next()) {
out.print(birSonraki +". "+ rstVideoIzleBirSonraki.getString("videoadi"));
}                                                
%>                                                              
                                                        
                                                        
                                                        
                                                        
                                                        </a>



                                                    </td>
                                                </tr>
                                            </table>
                                            <br></br> 

                                            <%
                                                       

                                                    }
                                                    



                                                } catch (Exception e) {
                                                    System.out.println(e.getMessage());
                                                }finally {
                                                        try {
                                                  rstVideoIzle.close();
                                                    stmtVideoIzle.close();
                                                    conVideoIzle.close();
                                                    } catch (SQLException e) {}
                                                   }
                    %>


                                        </article>




                                        </div><!-- #content-->
                                      




                                </figure>



                            </section>	



                        </div> <!--main-->

                        <footer class="center part clearfix">
        <ul class="social column3 mright">
            <li><a href="#">RSS</a></li>
            <li><a href="https://www.facebook.com/yazilimvideo?fref=ts">Facebook</a></li>
            <li><a href="https://twitter.com/yazilimvideo">Twitter</a></li>
            <li><a href="https://plus.google.com/111146263507625687917/posts">Google+</a></li>
            <li><a href="#">Flickr</a></li>
        </ul>
        <div class="up column3 mright"> <a href="#navtop" class="ir">Go up</a> </div>
        <nav class="column3">
            <ul>
                    <li><a href="index.jsp">Anasayfa</a></li>
                    <li><a href="about.jsp">Hakkımızda</a></li>
                    <li><a href="dersler.jsp">Videolar</a></li>
                    <li><a href="http://www.youtube.com/user/yazilimvideo">VLog</a></li>
                    <li><a href="rehberlik.jsp">Rehberlik</a></li>
                    <li><a href="sss.jsp">S.S.S</a></li>
            </ul>
        </nav>
    </footer>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.5.1.min.js"><\/script>')</script>
    <script src="js/slides.min.jquery.js"></script>
    <script src="js/scripts.js"></script>
    <!--[if (gte IE 6)&(lte IE 8)]>
    <script src="js/selectivizr.js"></script>
    <![endif]-->
</body>
</html>
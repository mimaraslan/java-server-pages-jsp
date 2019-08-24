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



                            <header class="grid col-full">
                                <hr>
                                <figure class="grid col-one-third mq1-col-one-half mq2-col-one-third mq3-col-full work_1">
                                   <figcaption>
                                      <h2><%=request.getParameter("kategoriadi")%></h2>
                                   
                                    </figcaption>
                                     
                                     <a href="#"><img src="img/<%=request.getParameter("kategoriresimadi")%>" alt="<%=request.getParameter("kategoriadi")%>"/> <span class="zoom"></span>
                                    </a>
                                </figure>

                               
                             </header>


                            <section class="grid col-three-quarters mq2-col-full">

                                <div class="grid-wrap works">

                                    <article>

                                       <ul>
                                            <%          
                                              
Class.forName("com.mysql.jdbc.Driver").newInstance();

  String url = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";
Connection conVideoListesi = null;
ResultSet rstVideoListesi = null;
Statement stmtVideoListesi = null;

            try {
                          
            conVideoListesi = DriverManager.getConnection(url);
            stmtVideoListesi = conVideoListesi.createStatement();
            rstVideoListesi = stmtVideoListesi.executeQuery( "SELECT * FROM video "
            + "WHERE kategoriid = '" + request.getParameter("kategoriid") + "' "
            + "ORDER BY videosirasi ASC");


         while (rstVideoListesi.next()) {

                %>

    <figcaption>     
        <li><%=rstVideoListesi.getString("videosirasi")%>. 
            <a  class="arrow" href="izle.jsp?anakategoriid=<%=rstVideoListesi.getInt("anakategoriid")%>&kategoriid=<%=rstVideoListesi.getInt("kategoriid")%>&videosirasi=<%=rstVideoListesi.getInt("videosirasi")%>&videoadi=<%=rstVideoListesi.getString("videoadi")%>"><%=rstVideoListesi.getString("videoadi")%></a></li>
    </figcaption> 


                                            <%
                                                    }
                                                    rstVideoListesi.close();
                                                    stmtVideoListesi.close();
                                                    conVideoListesi.close();

                                                } catch (Exception e) {
                                                    System.out.println(e.getMessage());
                                                }
                                            %>

                                        </ul>
                                        <br></br>
                                    </article>        


                                </div> <!-- grid inside 3/4-->

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
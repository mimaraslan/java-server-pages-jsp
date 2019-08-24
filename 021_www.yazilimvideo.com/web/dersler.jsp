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

		
<!--
		<aside class="grid col-one-quarter mq2-col-full">
			<p class="mbottom">Keep the same size ratio for thumbnails to avoid breaking the grid because of the margin-bottom.</p>
			<menu>
				<a  id="work_all" class="arrow buttonactive">All</a><br>
				<a  id="work_1" class="arrow">Web design</a><br>
				<a  id="work_2" class="arrow">Web development</a><br>
				<a  id="work_3" class="arrow">Graphic design</a>
			</menu>
		</aside>
        -->
		
       
            
		<section class="grid col-three-quarters mq2-col-full">
		
					<div class="grid-wrap works">
		
			
			

       <section class="part clearfix">
            <header class="title clearfix">
                <p class="fleft">Dersler</p>
                <a href="dersler.html" class="arrow more fright">tamamını gör</a> 
            </header>

            <%
               Class.forName("com.mysql.jdbc.Driver").newInstance();

               //    String url = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
             String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";
                  Connection conDilTeknoloji = null;
                ResultSet rsDilTeknoloji = null;
                Statement stmtDilTeknoloji = null;

                try {

                  

                    conDilTeknoloji = DriverManager.getConnection(url);
                    stmtDilTeknoloji = conDilTeknoloji.createStatement();
                    rsDilTeknoloji = stmtDilTeknoloji.executeQuery("SELECT * FROM kategori "
                            + "WHERE kategorivitrindegosterim = 1 OR  kategorivitrindegosterim = 0  "
                            + "ORDER BY kategoriadi ASC");

                    while (rsDilTeknoloji.next()) {


            %>


            <figure class="work"> <a href="liste.jsp?kategoriid=<%=rsDilTeknoloji.getInt(1)%>&kategoriadi=<%=rsDilTeknoloji.getString(4)%>&kategoriresimadi=<%=rsDilTeknoloji.getString(5)%>"> 
                    <img src="img/<%=rsDilTeknoloji.getString(5)%>" alt="<%=rsDilTeknoloji.getString(4)%>"> <span class="zoom"></span>
                </a>
                <figcaption> <a href="liste.jsp?kategoriid=<%=rsDilTeknoloji.getInt(1)%>&kategoriadi=<%=rsDilTeknoloji.getString(4)%>&kategoriresimadi=<%=rsDilTeknoloji.getString(5)%>" class="arrow"><%=rsDilTeknoloji.getString(4)%></a>
                    <!--  <p></p> -->
                </figcaption>
            </figure>


            <%

                     
                    }

                    conDilTeknoloji.close();
                    rsDilTeknoloji.close();
                    stmtDilTeknoloji.close();
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }


            %>

              </section>
            
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
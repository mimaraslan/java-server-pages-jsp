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
        
        <section class="part clearfix">
            <header class="title clearfix">
                <p class="fleft">Anasayfa</p>
                <a href="about.html" class="arrow more fright">tamamını gör</a> </header>
            <div class="column2 mright">
                <h1>Ücretsiz <br>
                    video eğitimlerine <br>
                    hoş geldiniz.</h1>
                <p>SİTEMİZİN YAPIMINA ŞU ANDA DEVAM EDİYORUZ. Çok yakında da tamamlayacağız.İnşaAllah. </p>
                <p>Amacımız bilişim alanında ülkemizin gelişimine katkı sağlamaktır. 
                    Bu sayfada yayınlanan ve yayınlancak olan bütün videolar daima ücretsiz olacaktır. 
                    Sizler de videolarınızın yayınlanmasızını isterseniz. 
                    Bu sayfada yayınlayabilirsiniz.</p>
            </div>
            <div id="slides" class="slider column2">
                <div class="slides_container">
                    <div class="slide">
                        <figure> <img src="img/Java Ucretsiz Egitim.jpg" alt="Java Ücretsiz Eğitim">
                                <figcaption>
                                    <div>
                                        <h5>Java</h5>
                                        <p>Java Web Teknolojileri</p>
                                    </div>
                                </figcaption>
                        </figure>
                    </div>
                    <div class="slide">
                        <figure> <img src="img/Android Ucretsiz Egitim.jpg" alt="Android Ücretsiz Eğitim">
                                <figcaption>
                                    <div>
                                        <h5>Android</h5>
                                        <p>Mobil Programlama <br>
                                            <a href="http://www.youtube.com/watch?v=9Wm7ieGxq_A&list=PL5Kp8m5lL8isKrO52KYH5DR6BylEZKc1C">İncele</a></p>
                                    </div>
                                </figcaption>
                        </figure>
                    </div>
                    <div class="slide">
                        <figure> <img src="img/Oracle Ucretsiz Egitim.jpg" alt="Oracle Ücretsiz Eğitim">
                                <figcaption>
                                    <div>
                                        <h5>Oracle</h5>
                                        <p>Bilişim dünyasının en büyük veritabanı. Geleceğinize yapılan akıllı yatırım.</p>
                                    </div>
                                </figcaption>
                        </figure>
                    </div>
                    <div class="slide">
                        <figure> <img src="img/Apple Ucretsiz Egitim.jpg" alt="Apple iOS Ücretsiz Eğitim">
                                <figcaption>
                                    <div>
                                        <h5>Apple</h5>
                                        <p>iOS Programlama</p>
                                    </div>
                                </figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </section>
        <section class="part clearfix">
            <header class="title clearfix">
                <p class="fleft">Hizmetler</p>
                <a href="hizmetler.html" class="arrow more fright">tamamını gör</a> </header>

            <article class="column3 mright services">
                <p class="number">01</p>
                <div class="sepmini"></div>
                <h5>DAİMA ÜCRETSİZ JAVA VİDEOLARI</h5>
                <div class="sepmini"></div>
                <p>Öğrenmeyi kolaylaştıran pratik çözümler sunan eğitim videoları.</p>
            </article>

            <article class="column3 mright services">
                <p class="number">02</p>
                <div class="sepmini"></div>
                <h5>İNTERNETTEN CANLI ONLINE ÜCRETSİZ SEMİNERLER</h5>
                <div class="sepmini"></div>
                <p>Uzmanından seminerler.</p>
            </article>

            <article class="column3 services">
                <p class="number">03</p>
                <div class="sepmini"></div>
                <h5>ÜNİVERSİTELERDE ÜCRETSİZ SEMİNERLER</h5>
                <div class="sepmini"></div>
                <p>Dışarıdan katılımlara izin vardır.</p>
            </article>

        </section>
        
        
        <section class="part clearfix">
            <header class="title clearfix">
                <p class="fleft">Vitrindeki Eğitimler</p>
                <a href="dersler.html" class="arrow more fright">tamamını gör</a> 
            </header>

            <%
               
Class.forName("com.mysql.jdbc.Driver").newInstance();

   String url = "jdbc:mysql://localhost:3306/yazilimvideoveritabani?user=katerina&password=1453";
//String url = "jdbc:mysql://localhost:3306/yazilimv_ideoveritabani?user=yazilimv_katya&password=14531453";
Connection conDilTeknoloji = null;
ResultSet rsDilTeknoloji = null;
Statement stmtDilTeknoloji = null;

                try {

                 

                    conDilTeknoloji = DriverManager.getConnection(url);
                    stmtDilTeknoloji = conDilTeknoloji.createStatement();
                    rsDilTeknoloji = stmtDilTeknoloji.executeQuery("SELECT * FROM kategori "
                            + "WHERE kategorivitrindegosterim = 1 "
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
            
            
    </div>



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
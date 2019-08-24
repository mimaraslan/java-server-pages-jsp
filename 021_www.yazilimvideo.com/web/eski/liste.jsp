<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Yazılım Video</title>
        <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
        <link rel="stylesheet" type="text/css" href="print.css" media="print" />
    </head>


    <body>
    <f:view>
        <div id="wrapper">

            <header>

                <h1 id="sitename">
                    <a href="#">Yazılım Video</a>
                </h1>

                <h1 id="">
                    <!-- 
                    <a href="#"> <img
                            src="images/adsense_185666_adformat-display_728x90_en.jpg" alt=""
                            class="aligncenter" />
                    </a>
                    -->
                </h1>

                <div id="top">
                    <nav>
                        <ul>

                            <li><a href="index.jsp">ANASAYFA</a></li>
                            <li><a href="hakkimizda.jsp">HAKKIMIZDA</a></li>
                            <li><a href="dersler.jsp">VİDEOLAR & DERSLER</a></li>
                            <li><a href="http://www.youtube.com/user/yazilimvideo">YOUTUBE VLOG</a></li>
                            <li><a href="yazilimrehberi.jsp">YAZILIM REHBERİ</a></li>
                            <li><a href="forum.jsp">SORU - CEVAP & FORUM</a></li>

                        </ul>
                    </nav>

                    <!--  
            <a href="#">
               <img src="images/adsense_185679_adformat-link_468x15_tr.png" alt=""
                    class="aligncenter" /></a>
                    -->
                </div>

            </header>









            <!--  ORTA KISIM ICERIK BASI  -->
            <section>




                <h:form id="form_ders_listeleri">
                    <div id="container">
                        <div id="content">

                            <article>
                                <h1 id="">
                                    <a href="#"><img
                                            src="images/adsense_185666_adformat-display_468x60_en.jpg"
                                            alt="" class="aligncenter" /></a>
                                </h1>
                            </article>
                            <article>
                                <h2>
                                    <a href="#">Android </a> <br>
                                </h2>
                                <p>6 video</p>
                                <h2>
                                    <a href="#"><img src="images/logo_android.png" alt=""
                                                     class="alignright" /></a>
                                </h2>
                                <ul>


                                

                                    <li><a href="izle.jsp?kategori=6&videosirasi=1">1 - Konu Adı 1</a></li>

                                    <li><a href="izle.jsp?kategori=6&videosirasi=2">2 - Konu Adı 2</a></li>
                                    <li><a href="izle.jsp?kategori=6&videosirasi=3">3 - Konu Adı 3</a></li>
                                    <li><a href="izle.jsp?kategori=6&videosirasi=4">4 - Konu Adı 4</a></li>
                                    <li><a href="izle.jsp?kategori=6&videosirasi=5">5 - Konu Adı 5</a></li>
                                    <li><a href="izle.jsp?kategori=6&videosirasi=6">6 - Konu Adı 6</a></li>

                                </ul>
                                <br></br>
                            </article>






                            <!--  BAGIS KISIM BASI  -->
                            <f:subview id="bagiskismicerik">

                                <jsp:include page="bagiskismi.jsp" />
                            </f:subview>
                            <!--  BAGIS KISIM SONU  -->



                        </div>
                        <!-- #content-->
                    </div>
                    <!-- #container-->
                </h:form>


                <f:subview id="ortakisimicerik">


                    <jsp:include page="ortakisimsol.jsp" />

                    <jsp:include page="ortakisimsag.jsp" />
                </f:subview>
                <!--  ORTA KISIM SAG  SONU  -->

            </section>

            <!-- #wrapper -->
            <div id="wrapper">
                <!--  SON KISIM BASI  -->
                <f:subview id="sonkisim">
                    <jsp:include page="sonkisim.jsp" />
                </f:subview>
                <!--  SON KISIM SONU  -->
            </div>
        </div>


    </f:view>
</body>




</html>
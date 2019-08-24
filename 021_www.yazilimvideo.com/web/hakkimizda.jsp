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
			<p class="fleft">Hakkımızda</p>
		</header>

		
		
		<aside class="grid col-one-quarter mq2-col-full">
			<p class="mbottom">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.
			</p>
			<menu>
				<ul>
					<li><a href="#navteam" class="arrow">Our team</a></li>
					<li><a href="#navphilo" class="arrow">Our philosophy</a></li>
					<li><a href="#navplace" class="arrow">Our place</a></li>
					<li><a href="#navother" class="arrow">Our lorem</a></li>
				</ul>
			</menu>
		</aside>
		
		<section class="grid col-three-quarters mq2-col-full">
			<img src="img/team.jpg" alt="" >
			
			<article id="navteam">
			<h2>Our team</h2>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			</article>
			
			<article id="navphilo">
			<h2>Our philosophy</h2>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			</article>
			
			<article id="navplace">
			<h2>Our place</h2>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			</article>
					
			<article id="navother">
			<h2>Our lorem</h2>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit.</p>
			</article>
		
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
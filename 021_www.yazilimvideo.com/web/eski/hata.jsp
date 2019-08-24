<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yazılım Video</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="print.css" media="print" />
	</head>


	<body>
	
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
				<f:subview id="ortakisimicerik">
					<jsp:include page="ortakisimicerik.jsp" />

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



</body>

</html>
<%@page import="com.smhrd.model.reviewDTO"%>
<%@page import="com.smhrd.model.reviewDAO"%>
<%@page import="org.apache.ibatis.reflection.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ResDTO"%>
<%@page import="com.smhrd.model.ResDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gallery</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!--===============================================================================================-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<link rel="stylesheet" type="text/css" href="css/dropdown.css">
<!--===============================================================================================-->
<style>
* {
	margin: 0;
	padding: 0;
}

ul li {
	list-style-type: none;
	float: left;
}
</style>

</head>
<body class="animsition">

	<%
	ArrayList<ResDTO> list = new ArrayList<>();
	list = (ArrayList<ResDTO>) request.getAttribute("list");

	int cnt = 0;
	if (list != null) {
		cnt = 1;
		System.out.println("TestRest");
		
		session.setAttribute("list", list);
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getRes_name());
			System.out.println(list.get(i).getMenu_img1());
		}
	}
	%>
	<div style="text-align: center">
		<header style="position: absolute; width: 100%; bottom: 100%">
			<!-- Header desktop -->
			<div class="wrap-menu-header gradient1 trans-0-4">
				<div class="container h-full">
					<div class="wrap_header trans-0-3">
						<!-- Logo -->
						<div class="logo">
							<a href="index.jsp"> <img src="images/Dango1.png"
								width="100px" height="100px" alt="IMG-LOGO"
								data-logofixed="images/Dango1.png">
							</a>
						</div>
						<div class="box">

							<p class="result"></p>
						</div>
						<!-- Menu -->
						<div "class="wrap_menu p-l-45 p-l-0-xl">
							<nav class="menu">
								<ul class="main_menu">
									<li><a href="index.jsp">당고</a></li>

									<li><a href="menu.jsp">당고 소개</a></li>


									<div class="dropdown">
										<button style="width: 200px;" class="dropbtn">
											<span class="dropbtn_icon">우리동네 맛집 소개</span>
										</button>
										<div style="width: 500px;" class="dropdown-content address">
											<ul>
												<li><a href="#">동구</a></li>
												<li><a href="#">서구</a></li>
												<li><a href="#">남구</a></li>
												<li><a href="#">북구</a></li>
												<li><a href="#">광산구</a></li>
											</ul>
										</div>
									</div>

									<li><a href="survey.jsp">당신이 고르는 한끼</a></li>
								</ul>
							</nav>
						</div>

						<!-- Social -->
						<div class="search">
							<input type="text" placeholder="검색어 입력"> <img
								src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
						</div>
						<div align="center"></div>
					</div>
				</div>
			</div>
		</header>

		<!-- Sidebar -->
		<aside class="sidebar trans-0-4">
			<!-- Button Hide sidebar -->
			<button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

			<!-- - -->
			<ul class="menu-sidebar p-t-95 p-b-70">
				<li class="t-center m-b-13"><a href="rest.jsp" class="txt19">Home</a>
				</li>

				<li class="t-center m-b-13"><a href="menu.html" class="txt19">Menu</a>
				</li>

				<li class="t-center m-b-13"><a href="gallery.html"
					class="txt19">Gallery</a></li>

				<li class="t-center m-b-13"><a href="about.html" class="txt19">About</a>
				</li>

				<li class="t-center m-b-13"><a href="blog.html" class="txt19">Blog</a>
				</li>

				<li class="t-center m-b-33"><a href="contact.html"
					class="txt19">Contact</a></li>

				<li class="t-center">
					<!-- Button3 --> <a href="reservation.html"
					class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
						Reservation </a>
				</li>
			</ul>

			<!-- - -->
			<div class="gallery-sidebar t-center p-l-60 p-r-60 p-b-40">
				<!-- - -->
				<h4 class="txt20 m-b-33">당신이 고르는 한끼</h4>

				<!-- Gallery -->
				<div class="wrap-gallery-sidebar flex-w">
					<a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-01.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-01.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-02.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-02.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-03.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-03.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-05.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-05.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-06.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-06.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-07.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-07.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-09.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-09.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-10.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-10.jpg" alt="GALLERY">
					</a> <a class="item-gallery-sidebar wrap-pic-w"
						href="images/photo-gallery-11.jpg" data-lightbox="gallery-footer">
						<img src="images/photo-gallery-thumb-11.jpg" alt="GALLERY">
					</a>
				</div>
			</div>
		</aside>


		<!-- Title Page -->
		<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15"
			style="background-image: url(images/orange.jpg);">
			<h2 class="tit11 t-center">당</h2>
			<h1 class="tit12 t-center">신은 지금&nbsp;</h1>

			<h2 class="tit12 t-center">배가&nbsp;</h2>

			<h2 class="tit11 t-center">고</h2>
			<h1 class="tit12 t-center">프다</h1>

		</section>



		<!-- Gallery -->
		<div class="galleryContainer"
			style="display: flex; justify-content: space-evenly">


			<form action="listResCon" method="get">
				<div class="dropdown">
					<ul>
						<button style="width: 150px;" class="dropbtn" name="raddr"
							value="남구">
							<span class="dropbtn_icon1">남구</span>
						</button>
			</form>
			<div style="width: 300px;" class="dropdown-content address">
				<form action="listnamCon" method="get">
					<li><button name="raddr" value="한식">한식&nbsp;&nbsp;&nbsp;</button></li>
					<li><button name="raddr" value="중식">중식&nbsp;&nbsp;&nbsp;</button></li>
					<li><button name="raddr" value="일식">일식&nbsp;&nbsp;&nbsp;</button></li>
					<li><button name="raddr" value="양식">양식&nbsp;&nbsp;&nbsp;</button></li>
			</div>
		</div>
		</form>

		<form action="listResCon" method="get">
			<div class="dropdown">
				<ul>
					<button style="width: 150px;" class="dropbtn" name="raddr"
						value="동구">
						<span class="dropbtn_icon1">동구</span>
					</button>
		</form>
		<div style="width: 300px;" class="dropdown-content address">
			<form action="listdongCon" method="get">
				<li><button name="raddr" value="한식">한식&nbsp;&nbsp;&nbsp;</button></li>
				<li><button name="raddr" value="중식">중식&nbsp;&nbsp;&nbsp;</button></li>
				<li><button name="raddr" value="일식">일식&nbsp;&nbsp;&nbsp;</button></li>
				<li><button name="raddr" value="양식">양식&nbsp;&nbsp;&nbsp;</button></li>
		</div>
	</div>
	</form>


	<form action="listResCon" method="get">
		<div class="dropdown">
			<ul>
				<button style="width: 150px;" class="dropbtn" name="raddr"
					value="서구">
					<span class="dropbtn_icon1">서구</span>
				</button>
	</form>
	<div style="width: 300px;" class="dropdown-content address">
		<form action="listseoCon" method="get">
			<li><button name="raddr" value="한식">한식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="중식">중식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="일식">일식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="양식">양식&nbsp;&nbsp;&nbsp;</button></li>
	</div>
	</div>
	</form>



	<form action="listResCon" method="get">
		<div class="dropdown">
			<ul>
				<button style="width: 150px;" class="dropbtn" name="raddr"
					value="북구">
					<span class="dropbtn_icon1">북구</span>
				</button>
	</form>
	<div style="width: 300px;" class="dropdown-content address">
		<form action="listbukCon" method="get">
			<li><button name="raddr" value="한식">한식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="중식">중식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="일식">일식&nbsp;&nbsp;&nbsp;</button></li>
			<li><button name="raddr" value="양식">양식&nbsp;&nbsp;&nbsp;</button></li>
	</div>
	</div>
	</form>


	<form action="listResCon" method="get">
		<div class="dropdown">
			<ul>
				<button style="width: 150px;" class="dropbtn" name="raddr"
					value="광산구">
					<span class="dropbtn_icon1">광산구</span>
				</button>
				<div style="width: 200px;" class="dropdown-content address">
	</form>
	<form action="listgwangCon" method="get">
		<li><button name="raddr" value="한식">한식&nbsp;&nbsp;&nbsp;</button></li>
		<li><button name="raddr" value="중식">중식&nbsp;&nbsp;&nbsp;</button></li>
		<li><button name="raddr" value="일식">일식&nbsp;&nbsp;&nbsp;</button></li>
		<li><button name="raddr" value="양식">양식&nbsp;&nbsp;&nbsp;</button></li>
		</ul>
		</div>
		</div>
	</form>

	</div>
	</div>
	</ul>
	</div>



	<div class="wrap-gallery isotope-grid flex-w p-l-25 p-r-25">
		<!--1 - -->
		<!-- 식당목록 페이지 -->
		
		<%
		if (cnt != 0) {
			for (int i = 0; i < list.size(); i++) {
				list.get(i);
			}
		}
		%>



		<%
		if (cnt != 0) {
			for (int i = 0; i < list.size(); i++) {
		%>
		<div
			class="item-gallery isotope-item bo-rad-10 hov-img-zoom events guests">
			<button onclick="chInfo('<%=i%>','<%=list.get(i).getRes_name()%>')"
				id="info">
				<img src="images/<%=list.get(i).getMenu_img1()%>" alt="IMG-GALLERY">
			</button>
			<!-- 식당사진 들어갈 부분 -->
			<%
			System.out.print(request.getContextPath());
			%>
			<br>
			<br>
			<span style="display: inline-block; width: 95%; text-align: center;"><%=list.get(i).getRes_name()%></span>
			<!-- <div class="overlay-item-gallery trans-0-4 flex-c-m">
               <a class="btn-show-gallery flex-c-m fa fa-search" href="listResCon" data-lightbox="gallery"></a>
            </div> -->
		</div>
		<%
		}
		}
		%>
		<script type="text/javascript">
			function chInfo(index, res_name) {
				console.log("Test " + res_name);
				location.href = "RestaurantInfo.jsp?index=" + index+ "&res_name=" + res_name;
			}
		</script>


		<div class="pagination flex-c-m flex-w p-l-15 p-r-15 m-t-24 m-b-50">
			<a href="#"
				class="item-pagination flex-c-m trans-0-4 active-pagination">1</a> <a
				href="#" class="item-pagination flex-c-m trans-0-4">2</a> <a
				href="#" class="item-pagination flex-c-m trans-0-4">3</a>
		</div>
	</div>



	<!-- Footer -->
	<footer style="display: block; width: 100%; position: absolute;"
		class="bg1">
		<div class="container p-t-40 p-b-70">
			<div class="row">
				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Contact Us</h4>

					<ul class="m-b-70">
						<li class="txt14 m-b-14"><i
							class="fa fa-map-marker fs-16 dis-inline-block size19"
							aria-hidden="true"></i> 20, Gyeongyeol-ro, Seo-gu, Gwangju,
							Republic of Korea</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-phone fs-16 dis-inline-block size19"
							aria-hidden="true"></i> (+82) 10 0000 0000</li>

						<li class="txt14 m-b-14"><i
							class="fa fa-envelope fs-13 dis-inline-block size19"
							aria-hidden="true"></i> samsi@seggi.com</li>
					</ul>

					<!-- - -->

				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">Latest twitter</h4>

					<div class="m-b-25">
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @Samsiseeggi </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays the featured image in the slider. <a href="#"
								class="txt15"> https://buff.ly/Samsiseeggi </a>
						</p>

						<span class="txt16"> 06 Sep 2022 </span>
					</div>

					<div>
						<span class="fs-13 color2 m-r-5"> <i class="fa fa-twitter"
							aria-hidden="true"></i>
						</span> <a href="#" class="txt15"> @Samsiseeggi.customer </a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that
							displays <a href="#" class="txt15">
								https://buff.ly/Samsiseeggi.customer </a>
						</p>

						<span class="txt16"> 06 Sep 2022 </span>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-38">Gallery</h4>

					<!-- Gallery footer -->
					<div class="wrap-gallery-footer flex-w">
						<a class="item-gallery-footer wrap-pic-w" href="images/aesang.jpg"
							data-lightbox="gallery-footer"> <img src="images/aesang.jpg"
							alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w" href="images/tate.jpg"
							data-lightbox="gallery-footer"> <img src="images/tate.jpg"
							alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/maraclub.jpg" data-lightbox="gallery-footer"> <img
							src="images/maraclub.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/saebuckdal.jpg" data-lightbox="gallery-footer">
							<img src="images/saebuckdal.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/yeoldoji.jpg" data-lightbox="gallery-footer"> <img
							src="images/yeoldoji.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/vivaroma.jpg" data-lightbox="gallery-footer"> <img
							src="images/vivaroma.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w" href="images/momil.jpg"
							data-lightbox="gallery-footer"> <img src="images/momil.jpg"
							alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/monghwan.jpg" data-lightbox="gallery-footer"> <img
							src="images/monghwan.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w" href="images/seoul.jpg"
							data-lightbox="gallery-footer"> <img src="images/seoul.jpg"
							alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/macheonru.jpg" data-lightbox="gallery-footer"> <img
							src="images/macheonru.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/daraehwa.jpg" data-lightbox="gallery-footer"> <img
							src="images/daraehwa.jpg" alt="GALLERY">
						</a> <a class="item-gallery-footer wrap-pic-w"
							href="images/haesan.jpg" data-lightbox="gallery-footer"> <img
							src="images/haesan.jpg" alt="GALLERY">
						</a>
					</div>

				</div>
			</div>
		</div>

		<div class="end-footer bg2">
			<div class="container">
				<div class="flex-sb-m flex-w p-t-22 p-b-22">

					<div class="txt17 p-r-20 p-t-5 p-b-5">
						Copyright &copy; 2022 All rights reserved | This template is made
						with <i class="fa fa-heart"></i> by <a
							href="https://Samsiseeggi.com" target="_blank">Samsiseeggi</a>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>



	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript"
		src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/lightbox2/js/lightbox.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<script>
		var beforePosition = document.documentElement.scrollTop

		document.addEventListener('scroll', function() {

			var afterPosition = document.documentElement.scrollTop;

			if (afterPosition > 50) {

				if (beforePosition < afterPosition) {

				} else {
				}

			} else {
				// 평상 시

			}
			if (afterPosition > 60) {
				$('header').attr('class', 'header-fixed');
				$('span.dropbtn_icon').attr('style', 'color:black');

			} else {
				$('header').attr('class', 'none');
				$('span.dropbtn_icon').attr('style', 'color:white');

			}

		});
	</script>






</body>
</html>
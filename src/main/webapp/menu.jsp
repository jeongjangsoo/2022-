<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<style>
ul li {
   list-style-type: none;
   float: left;
}
</style>
<head>
	<title>Menu</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
<!--===============================================================================================-->
</head>
<body style="background-color: white;">

	
		<header style="position: fixed; width: 100%; bottom: 100%">
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
						<div class="wrap_menu p-l-45 p-l-0-xl">
							<nav class="menu">
								<ul class="main_menu">
									<li><a href="index.jsp">당고</a></li>

									<div style="text-align: center" class="dropdown">
										<button style="width: 200px;" class="dropbtn">
											<span class="dropbtn_icon">당고 소개</span>
										</button>
									</div>

									<div class="dropdown">
										<button style="width: 200px;" class="dropbtn">
											<span class="dropbtn_icon"onclick="move()">우리동네 맛집 소개</span>
										</button>
										<div style="width: 400px;" class="dropdown-content address">
											<ul>
												<li><a href="http://localhost:8083/DangGo/listResCon?raddr=%EB%8F%99%EA%B5%AC">동구</a></li>
												<li><a href="http://localhost:8083/DangGo/listResCon?raddr=%EC%84%9C%EA%B5%AC">서구</a></li>
												<li><a href="http://localhost:8083/DangGo/listResCon?raddr=%EB%82%A8%EA%B5%AC">남구</a></li>
												<li><a href="http://localhost:8083/DangGo/listResCon?raddr=%EB%B6%81%EA%B5%AC">북구</a></li>
												<li><a href="http://localhost:8083/DangGo/listResCon?raddr=%EA%B4%91%EC%82%B0%EA%B5%AC">광산구</a></li>
											</ul>
										</div>
									</div>

									<li><a href="survey.jsp">당신이 고르는 한끼</a></li>
								</ul>
							</nav>
						</div>

						<!-- Social -->

					<form action="http://localhost:8083/DangGo/RestaurantInfo.jsp?index=2&res_name=" method="GET">     
             <div class="search">
          <input type="text" name="query" value="" placeholder="검색어 입력">
          <img onclick="move()" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" style="width: 20px " height="20px">
            </div>
        </form>
					<div align="center"></div>

			</div>
			</div>
			
			
		</header>

	<!-- Sidebar -->
	
	

	<!-- Title Page -->
	<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(images/orange.jpg);">
		<h2 class="tit11 t-center">
			당
		</h2>
		<h1 class="tit12 t-center">
			신은 지금&nbsp;
		</h1>
		
		<h2 class="tit12 t-center">
			배가&nbsp;
		</h2>
		
		<h2 class="tit11 t-center">
			고
		</h2>
		<h1 class="tit12 t-center">
			프다
		</h1>
		
	</section>


	<!-- Main menu -->
	<section class="section-mainmenu p-t-110 p-b-70 bg4-pattern">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-6 p-l-35 p-l-15-lg m-l-r-auto">
					<div class="wrap-item-mainmenu p-b-22">
						<h2 class="tit-mainmenu txt40 p-b-25 p-r-25 p-l-25" >
							' 직접 가서 먹어보고 인정한 진짜 맛집 '
						</h2>
						<!-- Item mainmenu -->
						<a class="tit-mainmenu txt41">
								진짜 맛집을 추구하는 공동 창업자 4명의 고민으로 시작한 당고
								솔직 담백한 리뷰와 정확한 정보를 바탕으로 
								맛집을 추천하는<br> 서비스를 만들겠습니다
								</a>
						
							
							<div class="flex-w flex-b m-b-3">
								<h2 class="mainmenu txt37">
								DANG GO HISTORY
								</h2>
								<br>
								<br>
								<br>		
							</div>
						</div>
						<!-- 2015 -->
						<!-- Item mainmenu -->
						<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<h1 class="name-item-mainmenu txt38">
									2015
								</h1>

								<div class="line-item-mainmenu bg3-pattern"></div>

								
							</div>

							<span class="info-item-mainmenu txt39">
								05-17 당고 설립 
							</span>
							<br>
							<span class="info-item-mainmenu txt39">
								06-20 스파크랩스 글로벌 투자 유치
							</span><br>
							<span class="info-item-mainmenu txt39">
								07-02 소프트뱅크벤처스 투자 유치
							</span>
						</div>
		
						<!-- 2016 -->
							<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<h1 class="name-item-mainmenu txt38">
									2016
								</h1>

								<div class="line-item-mainmenu bg3-pattern"></div>

							</div>

							<span class="info-item-mainmenu txt39">
								03-21 퀄컴 벤처스,소프트뱅크 벤처스 추가 투자유치(67억원)
							</span><br>
							<span class="info-item-mainmenu txt39">
								04-03 당고 웹페이지 리뉴얼
							</span>
						</div>
						
						<!--  2022 -->
						
						<div class="item-mainmenu m-b-36">
							<div class="flex-w flex-b m-b-3">
								<h1 class="name-item-mainmenu txt38">
									2022
								</h1>

								<div class="line-item-mainmenu bg3-pattern"></div>

								
							</div>

							<span class="info-item-mainmenu txt39">
								06-02 광주시 선정 관광 우수"IT" 서비스
							</span>
							<br>
							<span class="info-item-mainmenu txt39">
								06-30 12회K-ICT 대한민국 인터넷대상-대상
							</span>
							<br>
							<span class="info-item-mainmenu txt39">
								07-12 올해의 광주관광스타트업 프로젝트 공모전 수상
							</span>
							
						</div>						
						
							
						</div>
					</div>
				</div>
	
	</section>


	<!-- Lunch -->
	<section class="section-lunch bgwhite">
		<div class="header-lunch parallax0 parallax100" style="background-image: url(images/header-menu-01.jpg);">
			<div class="bg1-overlay t-center p-t-170 p-b-165">
				<h2 class="tit12 t-center">
					이용 방법
				</h2>
			</div>
		</div>

		<div class="container" >
			<div class="row p-t-108 p-b-70">
				
			<!-- ddd -->
				<div class="colcol m-l-r-auto">
					<!-- Block3 -->
					<div class="blo3 flex-w flex-col-l-sm m-b-30">
						<div class="pic-blo3 size20 bo-rad-10 hov-img-zoom m-r-28">
							<a href="survey.jsp"><img src="images/danggos.png" alt="IMG-MENU"></a>
						</div>

						<div class="text-blo3 size21 flex-col-l-m">
							<a href="survey.jsp" class="txt42 m-b-3">
								당신이 고르는 한끼
							</a>

							<span class="txt43">
								당고만의 설문조사를 통해 <br>취향에 맞는 맛집추천!!
							</span>

							
						</div>
					</div>

					<!-- Block3 -->
					<div class="blo3 flex-w flex-col-l-sm m-b-30">
						<div class="pic-blo3 size20 bo-rad-10 hov-img-zoom m-r-28">
							<a href="rest.jsp"><img src="images/ddg1.png" alt="IMG-MENU"></a>
						</div>

						<div class="text-blo3 size21 flex-col-l-m">
							<a href="rest.jsp" class="txt42 m-b-3">
								우리 동네 맛집 소개
							</a>

							<span class="txt43">
								각 구별 한,중,일,양식 맛집을 한눈에 볼수있습니다
							</span>

							
						</div>
					</div>

					<!-- Block3 -->
					<div class="blo3 flex-w flex-col-l-sm m-b-30">
						<div class="pic-blo3 size20 bo-rad-10 hov-img-zoom m-r-28">
							<a href="#"><img src="images/ddg2.png" alt="IMG-MENU"></a>
						</div>

						<div class="text-blo3 size21 flex-col-l-m">
							<a href="#" class="txt42 m-b-3">
								맛집 키워드,태그
							</a>

							<span class="txt43">
								가장 많이 검색된 맛집 및 메뉴  <br> 키워드&태그 데이터를 시각화하여
								보여드립니다
							</span>

							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Dinner -->
	


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
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>


<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
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
      
  	function move(){
		location.href = "http://localhost:8083/DangGo/listResCon?raddr=%EB%82%A8%EA%B5%AC";
	}
  	
  	function move(){
		location.href="RestaurantInfo.jsp?index=2&res_name=반달옥%20봉선본점"
	}
  	
   </script>

</body>
</html>
    
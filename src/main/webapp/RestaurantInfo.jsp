<%@page import="com.smhrd.model.reviewDAO"%>
<%@page import="com.smhrd.model.reviewDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="org.apache.ibatis.reflection.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ResDTO"%>
<%@page import="com.smhrd.model.ResDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Review</title>
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

<style>
ul li {
	list-style-type: none;
	float:left;
}
</style>

</head>
<body style="background-color: white;">

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
						<div class="wrap_menu p-l-45 p-l-0-xl">
							<nav class="menu">
								<ul class="main_menu">
									<li><a href="index.jsp">당고</a></li>

									<div style="text-align: center" class="dropdown">

										<a href="menu.jsp">
											<button style="width: 200px;" class="dropbtn">
												<span class="dropbtn_icon">당고 소개</span>
											</button>
										</a>
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
						<form action="https://www.google.com/search" method="GET">
							<div class="search">
								<input type="text" name="query" value="" placeholder="검색어 입력">
								<img
									src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
							</div>
						</form>
					</div>
			</div>
			</div>
			
			
		</header>

	

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


	<!-- Content page -->
	<section>
		<div class="bread-crumb bo5-b p-t-17 p-b-17">
			<div class="container">
				<a href="index.jsp" class="txt27">
					메인
				</a>

				<span class="txt29 m-l-10 m-r-10">/</span>

				<a href="rest.jsp" class="txt27">
					우리 동네 맛집 소개
				</a>

				<span class="txt29 m-l-10 m-r-10">/</span>

				<span class="txt29">
					당신은 지금 배가 고프다..
				</span>
			</div>
		</div>

		<div class="container">
			<div class="row ">
				<div class="col-md-8 col-lg-9">
					<div class="p-t-80 p-b-124 bo5-r p-r-50 h-full p-r-0-md bo-none-md">
					
						<!-- 맛집 메뉴 -->
						<div class="blo4 p-b-63">
							<!-- 음식 사진 -->
								<%
								String data = request.getParameter("index");
								System.out.println("ResTest " + data);
								int index = Integer.valueOf(data);
								%>
								
					
								<%
								
								ArrayList<ResDTO> list = new ArrayList<>();
								list = (ArrayList<ResDTO>) session.getAttribute("list");
								
								String rName =list.get(index).getRes_name();
								System.out.println("Restau" + rName);
								%>

								<div class="pic-blo4 hov-img-zoom bo-rad-10 pos-relative">
								<a href="rest.jsp">
									<%ResDTO rlist = new ResDAO().listRinfo(rName); %>
									
									<img src="images/<%= rlist.getMenu_img1()%>" style="width: 400px; height: 300px;">
									<img src="images/<%= rlist.getKeyword_img()%>"style="width: 400px; height: 500px;">
								</a>
								
								
							</div>
							
							<!-- 식당정보 -->
							<div class="text-blo4 p-t-33">
								<h4 class="txt44 p-b-16">
									<%= rlist.getRes_name()%>
								</h4>

								

								<p>
									식당 주소 : <%= rlist.getRes_addr()%> <br> 
									영업 시간 : <%= rlist.getRes_runtime()%><br>
									편의 시설 :<%= rlist.getRes_convenient()%><br>
									전화  : <%= rlist.getRes_tel() %> <br>
									대표메뉴 : <%= rlist.getMenu_name()%> &nbsp; <%= rlist.getMenu_price() %><br>
			
								</p>
									
										
							</div>
						</div>

						<!-- 리뷰 작성 -->
											
						<form class="leave-comment p-t-10" action="reviewWriteCon?index=<%=data%>&res_name=<%=rName%>
						" method="post" enctype="multipart/form-data"><%String receipt_img = request.getParameter("receipt_img"); %>
							<h4 class="txt33 p-b-14">
								영수증 리뷰 남기기
							</h4>

							<p>
								제목,이름,리뷰 입력 후 영수증을 첨부하여 리뷰를 등록해주세요 
							</p>

							<br>
							<br>
			
							<div class="size30 bo2 bo-rad-10 m-t-3 m-b-30">
								<input class="bo-rad-10 sizefull txt10 p-l-20" type="text" name="name" placeholder="이름"<%String reviewer_name = request.getParameter("reviewer_name"); %>>
							</div>	
								
								
								
									<input type="file" name="profile">
									<input type="text"  style="display:none" name="resNum" value=<%=rlist.getRes_seq()%>>


								<textarea class="bo-rad-10 size29 bo2 txt10 p-l-20 p-t-15 m-b-10 m-t-40" name="commentent" placeholder="리뷰를 남겨주세요">
								<%String review_content = request.getParameter("review_content"); %></textarea>
								<%System.out.println(receipt_img + review_content + reviewer_name ); %>
								
								<!-- Button3 -->
								
							<button type="submit" class="btn3 flex-c-m size31 txt11 trans-0-4">
								리뷰 등록하기
							<%-- 	<%int row = new BoardDAO().insertBoard(bvo); %> --%>
							</button>
							
						</form>
						
						
						
					</div>
				</div>
				
				<div class="col-md-4 col-lg-3">
					<div class="sidebar2 p-t-80 p-b-80 p-l-20 p-l-0-md p-t-0-md">
						<!-- 지도 API  출력 -->
							<div style="text-align: center">
							<a href="https://map.kakao.com/link/to/<%= rlist.getRes_name()%>,<%= rlist.getLatitude()%>,<%= rlist.getLongitude()%>">
							<h2 class="txt44">가는 방법</h2></a>
							</div>
							<br>
							<div id="map"style="width:150%;height:380px;">
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0aa6e71f7a0a47e71475daeb106b3202"></script>
							<script>
								var mapContainer = document
										.getElementById('map'), // 지도를 표시할 div 
										mapOption = {
											center : new kakao.maps.LatLng(<%= rlist.getLatitude()%>,<%= rlist.getLongitude()%>), // 지도의 중심좌표
											level : 3
										// 지도의 확대 레벨
											};

										var map = new kakao.maps.Map(mapContainer,
												mapOption); // 지도를 생성합니다

										// 마커가 표시될 위치입니다 
										var markerPosition = new kakao.maps.LatLng(<%= rlist.getLatitude()%>,<%= rlist.getLongitude()%>);

										// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									position : markerPosition
								});

								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);

								// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
								// marker.setMap(null);
							</script>
							
							
							</div>
							<!-- 최근 리뷰 출력-->
						<div class="popular">
							<h4 class="txt44 p-b-35 p-t-58">
								최근 리뷰
							</h4>
								
								
							<ul>
								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a >
										<%  
										   List<reviewDTO> reviewList = new reviewDAO().showReview(rName);%>
											<img src="images/<%= reviewList.get(0).getImg()%>" style="width: 100px; height: 100px;">
										</a>
									</div>

									<div class="size28">
										<a class="dis-block txt28 m-b-8">
											<%= reviewList.get(0).getContent()%>
										</a>

										<span class="txt14">
											<%=reviewList.get(0).getDate() %>
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a >
											<img src="images/<%= reviewList.get(1).getImg()%>" style="width: 100px; height: 100px;">
										</a>
									</div>

									<div class="size28">
										<a class="dis-block txt28 m-b-8">
											<%= reviewList.get(1).getContent()%>
										</a>

										<span class="txt14">
											<%=reviewList.get(1).getDate() %>
										</span>
									</div>
								</li>

								<li class="flex-w m-b-25">
									<div class="size16 bo-rad-10 wrap-pic-w of-hidden m-r-18">
										<a >
											<img src="images/<%= reviewList.get(2).getImg()%>" style="width: 100px; height: 100px;">
										</a>
									</div>

									<div class="size28">
										<a href="#" class="dis-block txt28 m-b-8">
											<%= reviewList.get(2).getContent()%>
										</a>

										<span class="txt14">
											<%= reviewList.get(2).getDate()%>
										</span>
									</div>
								</li>

							</ul>
						</div>

						
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer class="bg1">
		<div class="container p-t-40 p-b-70">
			<div class="row">
				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">
						Contact Us
					</h4>

					<ul class="m-b-70">
						<li class="txt14 m-b-14">
							<i class="fa fa-map-marker fs-16 dis-inline-block size19" aria-hidden="true"></i>
							8th floor, 379 Hudson St, New York, NY 10018
						</li>

						<li class="txt14 m-b-14">
							<i class="fa fa-phone fs-16 dis-inline-block size19" aria-hidden="true"></i>
							(+1) 96 716 6879
						</li>

						<li class="txt14 m-b-14">
							<i class="fa fa-envelope fs-13 dis-inline-block size19" aria-hidden="true"></i>
							contact@site.com
						</li>
					</ul>

					<!-- - -->
					<h4 class="txt13 m-b-32">
						Opening Times
					</h4>

					<ul>
						<li class="txt14">
							09:30 AM – 11:00 PM
						</li>

						<li class="txt14">
							Every Day
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-33">
						Latest twitter
					</h4>

					<div class="m-b-25">
						<span class="fs-13 color2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</span>
						<a href="#" class="txt15">
							@colorlib
						</a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that displays the featured image in the slider.
							<a href="#" class="txt15">
								https://buff.ly/2zaSfAQ
							</a>
						</p>

						<span class="txt16">
							21 Dec 2017
						</span>
					</div>

					<div>
						<span class="fs-13 color2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</span>
						<a href="#" class="txt15">
							@colorlib
						</a>

						<p class="txt14 m-b-18">
							Activello is a good option. It has a slider built into that displays
							<a href="#" class="txt15">
								https://buff.ly/2zaSfAQ
							</a>
						</p>

						<span class="txt16">
							21 Dec 2017
						</span>
					</div>
				</div>

				<div class="col-sm-6 col-md-4 p-t-50">
					<!-- - -->
					<h4 class="txt13 m-b-38">
						Gallery
					</h4>

					<!-- Gallery footer -->
					<div class="wrap-gallery-footer flex-w">
						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-01.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-01.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-02.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-02.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-03.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-03.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-04.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-04.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-05.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-05.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-06.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-06.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-07.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-07.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-08.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-08.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-09.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-09.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-10.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-10.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-11.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-11.jpg" alt="GALLERY">
						</a>

						<a class="item-gallery-footer wrap-pic-w" href="images/photo-gallery-12.jpg" data-lightbox="gallery-footer">
							<img src="images/photo-gallery-thumb-12.jpg" alt="GALLERY">
						</a>
					</div>

				</div>
			</div>
		</div>

		<div class="end-footer bg2">
			<div class="container">
				<div class="flex-sb-m flex-w p-t-22 p-b-22">
					<div class="p-t-5 p-b-5">
						<a href="#" class="fs-15 c-white"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
						<a href="#" class="fs-15 c-white"><i class="fa fa-facebook m-l-18" aria-hidden="true"></i></a>
						<a href="#" class="fs-15 c-white"><i class="fa fa-twitter m-l-18" aria-hidden="true"></i></a>
					</div>

					<div class="txt17 p-r-20 p-t-5 p-b-5">
						Copyright &copy; 2018 All rights reserved  |  This template is made with <i class="fa fa-heart"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
	<script type="text/javascript" src="vendor/isotope/isotope.pkgd.min.js"></script>
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
   </script>
	<script>
	function move(){
		location.href = "http://localhost:8083/DangGo/listResCon?raddr=%EB%82%A8%EA%B5%AC";
	}
	</script>
</body>
</html>

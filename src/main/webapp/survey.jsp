<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" style="height: 100%">
<head>


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/search.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>
<title>Question</title>
<style>
ul li {
	list-style-type: none;
	float: left;
}
</style>
</head>
<body style="background-color: white;">

	<div style="text-align: center">
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
						<div "class="wrap_menu p-l-45 p-l-0-xl">
							<nav class="menu">
								<ul class="main_menu">
									<li><a href="index.jsp">당고</a></li>

									<li><a href="menu.jsp">당고 소개</a></li>

									<div class="dropdown">
										<button style="width: 200px;" class="dropbtn">
											<span class="dropbtn_icon"onclick="move()">우리동네 맛집 소개</span>
										</button>
										<div style="width: 400px;" class="dropdown-content address">
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
          <input type="text" placeholder="검색어 입력">
          <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
        </div>
					<div align="center"></div>
				</div>
			</div>
			</div>
		</header>
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
		<div class="my-box"
			style="display: inline-block; text-align: center; margin-top: 100px;">

			<table style="display: inline-block;">
				<tr align="center">
					<td><br> <br>
						<h1 class="hanggi" align="center" style="font-size: 70px;">당신이
							고르는 한끼</h1> <br> <br></td>
					<td></td>
				</tr>
				<tr>
					<td>

						<h2 class="who">1. 어디서 드실건가요?</h2> <br>
					</td>
				</tr>
				<tr>
					<td class="answer">
							  <input type="radio" id="east" name="location" value="동구"><label
								for="east">동구</label>   <input type="radio" id="gwang"
								name="location" value="광산구"><label for="gwang">광산구</label>
							  <input type="radio" id="south" name="location" value="남구"><label
								for="south">남구</label> <input type="radio" id="west"
								name="location" value="서구"><label for="west">서구</label>
							<input type="radio" id="north" name="location" value="북구"><label
								for="north">북구</label> <br> <br>
					</td>
				<tr>
					<td>
						<h2 class="who">2. 내가 지금 가장 먹고 싶은 것은?</h2> <br>
					</td>
				</tr>
				<tr>
					<td class="answer">  <input type="radio" id="korea"
						name="like" value="한식"><label for="korea">한식
							(분식 포함)</label> <input type="radio" id="china" name="like" value="중식"><label
						for="china">중식 </label> <input type="radio" id="japan" name="like"
						value="일식"><label for="japan">일식</label> <input
						type="radio" id="america" name="like" value="양식"><label
						for="america">양식</label> 

					</td>
				</tr>
				  
				<tr>
					<td>
						<h2 class="who">3. 내가 지금 가장 먹고 싶지 않은 것은?</h2> <br>
					</td>
				</tr>
				<tr>
					<td class="answer">
						<form>
							  <input type="radio" id="korea1" name="hate" value="korea"><label
								for="korea1">한식 (분식 포함)</label> <input type="radio" id="china1"
								name="hate" value="china"><label for="china1">중식</label>
							 <input type="radio" id="japan1" name="hate" value="japan"><label
								for="japan1">일식</label> <input type="radio" id="america1"
								name="hate" value="america"><label for="america1">양식</label>
							<br> <br>
						</form>
					</td>
				</tr>

				</tr>
				<tr>
					<td>
						<h2 class="who">4. 누구와 함께 드실건가요?</h2> <br>
					</td>
				</tr>
				<tr>
					<td class="answer">
						<form>
							  <input type="radio" id="friend" name="with" value="friend"><label
								for="friend">친구</label>  <input type="radio" id="couple"
								name="with" value="couple"><label for="couple">연인</label>
							<input type="radio" id="family" name="with" value="family"><label
								for="family">가족</label> <input type="radio" id="company"
								name="with" value="company"><label for="company">직장동료</label>
							<input type="radio" id="alone" name="with" value="alone"><label
								for="alone">혼자</label><br>
						</form>
					</td>
					</form>
				</tr>
				</tr>
				</tr>
			
			</table>
			<tr style="text-align: center; ">
				<form name="nangnang" method="post" accept-charset="utf-8" action="javascript:sendData();">
					<input type='hidden' id='loc' name='loc'/>
					<input type='hidden' id='like' name='like'/>
					<button type="submit">보내기</button>
				</form>
			</tr>
			<br><br>
		</div>
		<br> <br>


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
		function sendData(){
			var rdoLocation=document.getElementsByName("location");
			var rdoLike=document.getElementsByName("like");
			
			
			var locationVal='';
			var likeVal='';
			for(var i=0;i<rdoLocation.length;i++){
				if(rdoLocation[i].checked){
					locationVal=rdoLocation[i].value;
					break;
				}
			}
			for(var i=0;i<rdoLike.length;i++){
				if(rdoLike[i].checked){
					likeVal=rdoLike[i].value;
					break;
				}
			}
			
			if("" ==locationVal){
				alert("어디서 드실건가요?");
				return;
			}
			
			if("" ==likeVal){
				alert("내가 지금 가장 먹고 싶은 것은?");
				return;
			}
			
			var flyform=document.nangnang;
			//flyform.method="post";
			flyform.loc.value=locationVal;
			flyform.like.value=likeVal;
			flyform.action="/DangGo/resultCon";
			flyform.submit();
			//alert(locationVal+"에서 "+likeVal+"먹는다.");
			
		}
		
		function move(){
			location.href = "rest.jsp";
		}
	</script>
</body>
</html>




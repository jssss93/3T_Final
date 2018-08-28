<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<!-- 왼쪽 카테고리 -->
<link href="<c:url value='/resources/css/leftCategory.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 오른쪽 카테고리 -->
<link href="<c:url value='/resources/css/rightCategory.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 로그인 -->
<link href="<c:url value='/resources/css/loginCategory.css'/>"
	rel="stylesheet" type="text/css" />
	
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic"
	rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet"
	type="text/css" />
<link href="//fonts.googleapis.com/css?family=Cabin:700"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/fonts/font-awesome.css" />
<link
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"
	rel="stylesheet" />
<!-- <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:200" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:400" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:500" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:700" /> -->

<meta name="format-detection" content="telephone=no" />

<link rel="canonical" href="http://asclo.com/myshop/index.html" />
<link rel="alternate" href="http://m.asclo.com/myshop/index.html" />
<meta property="og:url" content="http://asclo.com/myshop/index.html" />
<meta property="og:site_name" content="애즈클로" />
<meta property="og:type" content="website" />
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico" />
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>


<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tZRNTsQwDIX3U7acw4A00rBlxRpO4CZuG-HEkeNIzO0JPwtQNRKapstY8ef4xX6wSCS4f1DIKrNiBKUiVR2BKwUmlWTgJEZJNy1wC_-5T-5QhKsFSYdR3q9MrGbXFmU8k16XajgyXUjFnOFJUD28_Ias5CE31EJaYAmn093x_gi5jhzcsFhkKJ4GTyXMCcpbSI9fjCi-MkE8l0UyjJRoCtYTKepJXw2NelIjhg2Nt2-SajBiCa6Lkivgd2Bbx1MbkQGZOz6rDVw70GpOe3Fr2AFqImwh70BeiPfAtrX11dkeZJxD2rRKl1XGcQfqyky7gf_Ye0cReA9x2y3Xxf5-KkyVuTglSj2phVDd8kzot5jDmssyi0nuiXRtCWbR8yfzAw&type=css&k=2e4de6868efd8dbe20b10160c5f38e26a835807c&t=1508869165" />
<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tdJBDgIhDAXQA-DWc1QXk4xH8BgIBZqBdkKLxts7egZc__y3-R-KNAQMbih2hULrelmuC-zjUSm4Yq2CRnQRlTKDbsQ3CKrQJI6KUP1bhsFDfI93TnI6sjPMQQv6iH2mqOYNq2RJ6S8sz1Q75WKuIY-ZapQXzzZ_67tKarsPm8_olpl8ErG5PwjCz6NPwnv4uh8&type=css&k=40f8d745a3ef768c9e28f15515a41b168e584117&t=1499901149" />
<link href="<c:url value='/resources/css/mypage.css'/>" rel="stylesheet"
	type="text/css" />
<style type="text/css">
#Left {
	position: fixed;
	float: left;
	width: 13%;
	top: 0px;
	height: 100%;
	z-index: 9;
	background: none;
}

#Right {
	position: fixed;
	float: right;
	right: 0px;
	width: 140px;
	top: 0px;
	height: 90%;
	z-index: 9;
	background: none;
}
.fixed_quick {position:fixed; right:17px; top:300px;z-index:500; }
.fixed_quick ul li {width:46px;font-size:0px;border:1px solid #ddd;border-bottom:0px;}

.sm_right_bn {position:absolute; left:-48px; }
.sm_btn {background-color:#fff; border:1px solid #dbdbdb; border-top:0px; position:relative; width:46px; height:46px; }
.sm_btn img { opacity:0.3; -moz-transition: all 0.3s linear; -webkit-transition: all 0.3s linear; -o-transition: all 0.3s linear; -ms-transition: all 0.3s linear; transition: all 0.3s linear;  }
.sm_btn:hover img { opacity:1; }
.sm_btn .sm_btn_text { top:-1px !important; background-color:#f8f8f8; border:1px solid #dbdbdb; font-size:11px; letter-spacing:-0.5px; padding-left:10px; text-align:left; color:#555; position:absolute; visibility:hidden; left:-130px; top:0px; line-height:46px; opacity:0; width:200px;-moz-transition: all 0.3s linear; -webkit-transition: all 0.3s linear; -o-transition: all 0.3s linear; -ms-transition: all 0.3s linear; transition: all 0.3s linear;}
.sm_btn:hover .sm_btn_text {left:-212px;opacity:1;visibility:visible;}
</style>
</head>
<body>

<nav>
			<div class="fullscreen_menu_button">
				<a class="btn-open" href="#"><img
					src="/3T/resources/images/search_btn.png"></a>
			</div>
		</nav>
	
	<div class="overlay" style="display: none;">
			<div class="wrap">

				<form id="searchBarForm" name="" action="/3T/goods/search" method="get" enctype="multipart/form-data">
				<input type="hidden" id="CATEGORY" name="CATEGORY" value="">
				<input type="hidden" id="PRICE1" name="PRICE1" value="">
				<input type="hidden" id="PRICE2" name="PRICE2" value="">
				
					
					<div class="xans-element- xans-layout xans-layout-searchheader ">
						<h2>
							<span
								class="xans-element- xans-layout xans-layout-logotop fullscreen ">
								<img src="/3T/resources/images/3T2.png">
							</span>
						</h2>
						<fieldset>
							<legend>검색</legend>
							<input id="keyword" name="keyword" class="inputTypeText" placeholder="" value="" type="text">
								
							<input type="image" placeholder="SEARCH.." src="/3T/resources/images/btn_search.png" alt="검색">
							&nbsp;
						</fieldset>
					</div>
				</form>
			</div>
		</div>

	<div>

		<div id="body" align="center" style="width: 70%; margin: 0 auto;">
			<tiles:insertAttribute name="body" ignore="true" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" ignore="true" />
		</div>
	</div>


	<!--  왼쪽 메뉴 고정 바 -->
	<div id="left">
		<h1 class="xans-element- xans-layout xans-layout-logotop ">
			<a href="\3T\"><img src="/3T/resources/images/3T.PNG"></a>
		</h1>
	

		<!--로그인메뉴-->


		<div class="left_login">
			<div class="xans-element- xans-layout xans-layout-statelogoff ">
				<c:if test="${sessionScope.MEMBER_ID == null}">
					<a href="/3T/loginForm" class="log">login</a>/
					<a href="/3T/joinStep1">join</a>
							</c:if>
				<c:if test="${sessionScope.MEMBER_ID != null}">
					<a href="/3T/logout" class="log">logout</a> 
							</c:if> 
							<br>
		     <a href="/3T/order/list">order</a>/ <a href="/3T/member/mypage">mypage</a>
			</div>


		</div>
		<!-- //left_login -->




		<div>
			<div id="category"
				class="xans-element- xans-layout xans-layout-category">
				<div class="position">
					<ul>
						<c:url var="OUTER" value="/goods/catelist">
							<c:param name="CATEGORY" value="OUTER" />
						</c:url>

						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=OUTER">OUTER</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=SUIT">SUIT</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=TOP">TOP</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=SHIRT">SHIRT</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=KNIT">KNIT</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=BOTTOM">BOTTOM</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=SHOES">SHOES</a></li>
						<li class="xans-record-"><a
							href="/3T/goods/catelist?CATEGORY=ACC">ACC</a></li>
					</ul>
				</div>
			</div>


			<div class="xans-element- xans-layout xans-layout-boardinfo">
				<ul>
					<li class="xans-record-"><a href="/3T/notice/list">NOTICE</a></li>

					<li class="xans-record-"><a href="/3T/faq/list">FAQ</a></li>

					<li class="xans-record-"><a href="/3T/qa/list">Q&amp;A</a></li>
					<li class="xans-record-"><a href="/3T/review/list">REVIEW</a></li>

				</ul>
			</div>
		</div>

	</div>
	</tr>
	</table>
	</div>


	<!-- 오른쪽 메뉴 고정 바 -->
	<div id="right">
		<div class="right_menu">

			<div class="fixed_quick">
				<div class="sm_right_bn">
					<!-- 퀵메뉴 아이콘 -->
					
					<div class="cboth sm_btn" style="border-top: 1px solid #dbdbdb;">
						<a
							href="javascript:CreateBookmarkLink(&#39;/MODA/main&#39;, &#39;MODA&#39;);">
							<img src="/3T/resources/images/quick_fav.gif">
						</a>
						<div class="sm_btn_text">즐겨찾기</div>
					</div>
					<div class="cboth sm_btn">
						<a href="https://www.doortodoor.co.kr/" target="_blank&quot;">
							<img src="/3T/resources/images/r_quick03_on.gif">
						</a>
						<div class="sm_btn_text">배송조회</div>
					</div>
					<div class="cboth sm_btn">
						<a href="/3T/cart/list"> <img
							src="/3T/resources/images/r_quick04_on.gif">
						</a>
						<div class="sm_btn_text">장바구니</div>
					</div>
					<div class="cboth sm_btn">
						<a href="/MODA/todayGoods"> <img
							src="/3T/resources/images/r_quick05_on.gif">
						</a>
						<div class="sm_btn_text">오늘 본 상품</div>
					</div>
					<div class="cboth sm_btn">
						<a href="/3T/review/list"> <img
							src="/3T/resources/images/r_quick06_on.gif">
						</a>
						<div class="sm_btn_text">상품 리뷰</div>
					</div>
				</div>
				<!-- //sm_right_bn -->
			</div>
			<!-- //fixed_quick -->
<script type="text/javascript">
				
	$(document).ready(function() {
		var jbOffset = $('#comment_top').offset();
		$(window).scroll(function() {
			if ($(document).scrollTop() > jbOffset.top) {
				$('#comment_top').addClass('fixed');
			} else {
				$('#commend_top').removeClass('fixed');
			}
		});
	});

	$(document).ready(function() {
		$('.fullscreen_menu_button a').click(function() {
			$('.overlay').fadeToggle(200);
			$(this).toggleClass('btn-open').toggleClass('btn-close');
		});
	});
</script>

			<script type="text/javascript">
		$(document).ready(function() {
			$("#moveupBtn").on("click", function(event) {
				// 이동 버튼을 클릭시 태그로 스크롤의 위치가 이동되도록 한다.

				// 1. 태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
				var offset = $("#suk").offset();

				// offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
				// position은 부모를 기준으로한 상대위치를 가져온다.
				$("html body").animate({
					scrollTop : offset.top
				}, 0);

			});

			$("#movedownBtn").on("click", function(event) {
				// 이동 버튼을 클릭시 태그로 스크롤의 위치가 이동되도록 한다.

				// 1. 태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
				var offset = $("#footer").offset();

				// offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
				// position은 부모를 기준으로한 상대위치를 가져온다.
				$("html body").animate({
					scrollTop : offset.top
				}, 0);

			});
		}); // end of ready()
	</script>
</body>
</html>
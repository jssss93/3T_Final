<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<!-- 왼쪽 카테고리 -->
<link href="<c:url value='/resources/css/left category.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 오른쪽 카테고리 -->
<link href="<c:url value='/resources/css/right category.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 로그인 -->
<link href="<c:url value='/resources/css/login category.css'/>"
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
</style>
</head>
<body>


	<div id="suk" style="margin: 0 auto; height: 880">
		<tiles:insertAttribute name="header" ignore="true" />
	</div>


	<div>

		<div id="body" align="center" style="width: 80%; margin: 0 auto;">
			<tiles:insertAttribute name="body" ignore="true" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" ignore="true" />
		</div>
	</div>


	<!--  왼쪽 메뉴 고정 바 -->
	<div id="left">
		<h1 class="xans-element- xans-layout xans-layout-logotop ">
			<a href="\3T\main"><img src="/3T/resources/images/3T.PNG"></a>
		</h1>
	

		<!--로그인메뉴-->


		<div class="left_login">
			<div class="xans-element- xans-layout xans-layout-statelogoff ">
				<c:if test="${sessionScope.MEMBER_ID == null}">
					<a href="/3T/member/loginForm" class="log">login</a> / 
							</c:if>
				<c:if test="${sessionScope.MEMBER_ID != null}">
					<a href="/3T/member/logout" class="log">logout</a> / 
							</c:if>
				<a href="/3T/member/joinStep1">join</a> <br> <a
					href="/3T/csstest/csstest">order</a> / <a href="/3T/mypage/mypage">mypage</a>
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

			<ul>
				<li class="cart_menu"><a href="/order/basket.html"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">CART
						<span> 0 </span>
				</a></li>
			</ul>
			<ul>
				<!--<li><a href="/layout/basic/lookbook_01.html"></a></li>
                <li><a href="/shopinfo/company.html">ABOUT</a></li>-->
			</ul>
			<ul>
				<li class="bookmark"><a
					onclick="try{window.external.AddFavorite('https://www.asclo.com','ASCLO - エズクロ')} catch(e){alert('이용하시는 브라우져에서는 Ctrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.')}; return false;">BOOKMARK</a></li>
				<li><a href="/link/shortcut.html" target="_blank"
					onclick="winPop(this.href); return false;"
					class="xans-element- xans-layout xans-layout-shortcut ">DESKTOP
						ICON </a></li>

				<br>
				<br>
				<!--다운메뉴-->
				<div class="downmenu">
					<ul>
						<li class="dep1"><a>CS CENTER<i class="fa fa-angle-down"
								aria-hidden="true"></i></a>
							<ul class="hide hideblock">
								<li><strong
									class="xans-element- xans-layout xans-layout-footer ">070-4477-9922</strong>
									<br> mon-fri 10am-4:30pm<br> lunch : 12:30-13:30<br>
									sat, sun, holiday off<br> <br> 예금주 : 서지우(애즈클로)<br>
									국민 437201-04-192634<br> <br> 반품배송비 전용계좌<br> 국민
									352601-01-336244<br></li>
							</ul></li>
						<li class="dep1"><a>notice <i class="fa fa-angle-down"
								aria-hidden="true"></i></a>
							<ul class="hide">
								<li>
									<!-- 공지사항 -->
									<div
										class="xans-element- xans-board xans-board-listpackage-1 xans-board-listpackage xans-board-1 ">
										<table border="1" summary="" class="mainborad">
											<caption>공지사항</caption>
											<tbody
												class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1">
												<!--
                                    $count = 3              
                                    $subject_cut = 14
                                    $main_list = yes
                                    $main_list_reply_view = no
                                -->
												<tr class="xans-record-">
													<td class="title"><a
														href="/board/free/read.html?no=248265&amp;board_no=1">교환
															및 반품과정 안내</a></td>
												</tr>
												<tr class="xans-record-">
													<td class="title"><a
														href="/board/free/read.html?no=243324&amp;board_no=1">타상품
															교환 및 묶음배...</a></td>
												</tr>
												<tr class="xans-record-">
													<td class="title"><a
														href="/board/free/read.html?no=243323&amp;board_no=1">수제화
															관련해서 안내드...</a></td>
												</tr>
											</tbody>
										</table>
									</div> <!-- // 공지사항 -->
								</li>
							</ul></li>
					</ul>
				</div>



				<ul class="right_sns">
					<li><a href="http://blog.naver.com/asclohi" target="_blank"><img
							src="/3T/resources/images/1.png"></a></li>
					<li><a href="https://www.instagram.com/hi880515/"
						target="_blank"><img src="/3T/resources/images/2.png"></a></li>
					<li><a href="https://www.facebook.com/asclocom"
						target="_blank"><img src="/3T/resources/images/3.png"></a></li>
					<li><a href="http://pf.kakao.com/_muhjE" target="_blank"><img
							src="/3T/resources/images/4.png"></a></li>
				</ul>
		</div>
		<tr>
			<td>
				<button class="btn4" type="button" id="moveupBtn">
					<img src="/3T/resources/images/버튼1.png">
				</button>
				<button class="btn5" type="button" id="movedownBtn">
					<img src="/3T/resources/images/버튼2.png">
				</button>
			</td>
		</tr>
	</div>

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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html>
<html>
<head>
<!-- 왼쪽 카테고리 -->
<link href="<c:url value='/resources/css/left Category.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 오른쪽 카테고리 -->
<link href="<c:url value='/resources/css/right Category.css'/>"
	rel="stylesheet" type="text/css" />

<!-- 로그인 -->
<link href="<c:url value='/resources/css/login Category.css'/>"
	rel="stylesheet" type="text/css" />
	
<!-- wing_banner -->
<link href="<c:url value='/resources/css/wing_banner.css'/>"
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
.left_sns {
	float: left;
	text-align: left;
	margin-right: 20px;
}

.left_sns li {
	display: inline-block;
	float: left;
	margin: 0 0 0 10px;
}
.leftsns {
    margin: 0 0 30px 40px;
    padding: 0;
    border-top: 0px #ddd solid;
    overflow: hidden;
}
.btn_top{
	text-align: right;
	margin-right: 10;
}

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

				<form id="searchBarForm" name="searchBarForm" action="/3T/goods/search" method="get" enctype="multipart/form-data"
				onsubmit="return validation2();">
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
							<input id="keyword" name="keyword" class="inputTypeText" placeholder="" type="text">
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

			<div class="xans-element- xans-layout xans-layout-boardinfo">
				<ul>

					<li><strong
						class="xans-element- xans-layout xans-layout-footer ">
							예금주 : 서지우(3T)<br> 국민 437201-04-192634
					</strong></li>


				</ul>
			</div>

			<div class="leftsns">
				<ul class="left_sns">
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
		</div>

	</div>
	</tr>
	</table>
	</div>


	<!-- 오른쪽 메뉴 고정 바 -->
	<div id="right">
		<div class="right_menu">

			<ul>
				<li class="cart_menu"><a href="/3T/cart/list"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">CART
						<span>  </span>
				</a>
				</li>
				
				<li class="cart_menu"><a href="/3T/wish/wishlist"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">WISHLIST
						<span>  </span>
				</a>
				</li>
				
				<li class="cart_menu"><a href="/3T/order/list"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">ORDER
						<span>  </span>
				</a>
				</li>
			</ul>
			<ul>
				<!--<li><a href="/layout/basic/lookbook_01.html"></a></li>
                <li><a href="/shopinfo/company.html">ABOUT</a></li>-->
			</ul>
			<ul>
				
			
				<!--다운메뉴-->
				<div>
					<ul>
						<li class="dep1">
							
								<li><b
									class="xans-element- xans-layout xans-layout-footer ">070-4477-9922</b><br>
									<br><strong>mon-fri 10am-4:30pm<br> lunch : 12:30-13:30<br>
									sat, sun, holiday off</strong></li>
							</li>
						
					</ul>
				</div>
				<br>
				<div class="wing_banner" id="wingBanner">
					<!-- 2017-02-17 cyn  스크롤 이벤트 발생시 .wing_fixed 넣어주세요 -->
					<!-- 최근 본 상품 -->
					<div class="wing_prd_wrap" id="wingRecentWrap" style="">
						<div class="hwrap">
							<strong class="tit"> 
							<a href="#" id="wingRecentCount">
							<span class="tx">최근 본 상품</span>
							</strong>
						</div>
						
						<div class="wing_prd_list" id="windRecentPrdList">
							<ul id="wingRecentPrd_1">
								
								<c:forEach items="${CookieListMap }" var="row">
									<li class="wing_prd" >
										<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
											<span class="wing_prd_img">
											<img width="70" height="70" src="/3T/resources/upload/${row.IMAGE}" ></span>
										</a>
										<!-- 삭제버튼 추가할것. -->
										<button type="button" class="wing_btn_delete" prdno="1886256688"></button>
									</li>
									<br>
								</c:forEach>
										
								
							</ul>
							
						</div>
					</div>
					
					<div class="btn_top" data-log-actionid-label="top" >
						<a href="#">
							<!-- 2017-02-17 main페이지 #wrap으로 이동, 서브페이지 #wrapBody로 이동--> <img
							src="http://s.011st.com/img/main/wing/img_top.gif"
							alt="페이지 상단으로 이동">
						</a>
					</div>
				</div>
			</div>




				<!-- //sm_right_bn -->
			</div>
			<!-- //fixed_quick -->
<script type="text/javascript">

 function validation2() {

	var frm = document.searchBarForm;

	if (frm.keyword.value == "" || frm.keyword.value.equals("") || frm.keyword.value == null) {
		alert("검색어를 입력해주세요.");
		return false;
	}
}	
	
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
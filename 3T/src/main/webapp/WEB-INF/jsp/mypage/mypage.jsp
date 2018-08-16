<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
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
	<link href="<c:url value='/resources/css/mypage.css'/>" rel="stylesheet" type="text/css"/>
	<title>애즈클로</title>
	
	</head>
<body>

				<div id="contentwrap">

					<div id="contents">


						<div class="titleArea">
							<h2>my page</h2>
						</div>




						<div class="xans-element- xans-myshop xans-myshop-orderstate ">
							<div class="title">
								<h3>
									ORDER STATUS <span class="desc"> recent 3 months </span>
								</h3>
							</div>
							<div class="state">
								<ul class="order">
									<li><strong>입금전</strong> <a
										href="/myshop/order/list.html?order_status=shipped_before"
										class="count"><span
											id="xans_myshop_orderstate_shppied_before_count">0</span></a></li>
									<li><strong>배송준비중</strong> <a
										href="/myshop/order/list.html?order_status=shipped_standby"
										class="count"><span
											id="xans_myshop_orderstate_shppied_standby_count">0</span></a></li>
									<li><strong>배송중</strong> <a
										href="/myshop/order/list.html?order_status=shipped_begin"
										class="count"><span
											id="xans_myshop_orderstate_shppied_begin_count">0</span></a></li>
									<li><strong>배송완료</strong> <a
										href="/myshop/order/list.html?order_status=shipped_complate"
										class="count"><span
											id="xans_myshop_orderstate_shppied_complate_count">0</span></a></li>
								</ul>
								<ul class="cs">
									<li><span class="icoDot"></span> <strong>취소</strong> <a
										href="/myshop/order/list.html?order_status=order_cancel"
										class="count"><span
											id="xans_myshop_orderstate_order_cancel_count">0</span></a></li>
									<li><span class="icoDot"></span> <strong>교환</strong> <a
										href="/myshop/order/list.html?order_status=order_exchange"
										class="count"><span
											id="xans_myshop_orderstate_order_exchange_count">0</span></a></li>
									<li><span class="icoDot"></span> <strong>반품</strong> <a
										href="/myshop/order/list.html?order_status=order_return"
										class="count"><span
											id="xans_myshop_orderstate_order_return_count">0</span></a></li>
								</ul>
							</div>
						</div>

						<div class="xans-element- xans-myshop xans-myshop-bankbook">
							<ul>
								<li class=" "><span class="title">가용 적립금</span> <span
									class="data use">0원</span> <a
									href="/myshop/mileage/historyList.html"><img
										src="/images/btn_result.gif" alt="조회" /></a></li>
								<li class=""><span class="title">총 적립금</span> <span
									class="data">0원</span></li>
								<li class=""><span class="title">사용 적립금</span> <span
									class="data">0원</span></li>
								<li class=""><span class="title">예치금</span> <span
									class="data use">0원</span> <a
									href="/myshop/deposits/historyList.html"><img
										src="/images/btn_result.gif" alt="조회" /></a></li>
								<li class="etc"><span class="title">총주문</span> <span
									class="data">0 (0 회)</span></li>
								<li class="etc "><span class="title">쿠폰</span> <span
									class="data">0<span>개</span></span> <a
									href="/myshop/coupon/coupon.html"><img
										src="/images/btn_result.gif" alt="조회" /></a></li>
							</ul>
						</div>


						<div id="myshopMain"
							class="xans-element- xans-myshop xans-myshop-main ">
							<div class="shopMain order">
								<a href="/myshop/order/list.html"><strong>order</strong>고객님께서
									주문하신 상품의 주문내역을 확인하실 수 있습니다.<br />비회원의 경우, 주문서의 주문번호와 비밀번호로
									주문조회가 가능합니다.</a>
							</div>
							<div class="shopMain profile">
								<a href="/3T/mypage/update"><strong>modify</strong>회원이신
									고객님의 개인정보를 관리하는 공간입니다.<br />개인정보를 최신 정보로 유지하시면 보다 간편히 쇼핑을 즐기실 수
									있습니다.</a>
							</div>
							<div class="shopMain wishlist">
								<a href="/myshop/wish_list.html"><strong>wish list</strong>관심상품으로
									등록하신 상품의 목록을 보여드립니다.</a>
							</div>
							<div class="shopMain likeIt displaynone">
								<a href=""><strong>Like it</strong>'좋아요'를 선택한 상품과 상품분류 목록을
									보여드립니다.</a>
							</div>
							<div class="shopMain mileage">
								<a href="/3T/mypage/mymessage"><strong>message</strong>적립금은
									상품 구매 시 사용하실 수 있습니다.<br />메세지</a>
							</div>
							<div class="shopMain coupon 1">
								<a href="/3T/mypage/mycoupon"><strong>coupon</strong>고객님이
									보유하고 계신 쿠폰내역을 보여드립니다.</a>
							</div>
							<div class="shopMain board">
								<a href="/3T/mypage/myboard"><strong>my board</strong>고객님께서
									작성하신 게시물을 관리하는 공간입니다.<br />고객님께서 작성하신 글을 한눈에 관리하실 수 있습니다.</a>
							</div>
							<div class="shopMain address">
								<a href="/myshop/addr/list.html"><strong>address</strong>자주
									사용하는 배송지를 등록하고 관리하실 수 있습니다.</a>
							</div>
							<div class="shopMain deposits ">
								<a href="/myshop/deposits/historyList.html"><strong>deposits</strong>예치금은
									현금과 동일하게 상품 구매시 사용하실 수 있습니다.<br />예치된 금액은 현금으로 환불이 가능합니다. (예치금
									적립: 주문취소 등의 환불금액 발생 시 예치금으로 적립이 가능합니다.)</a>
							</div>
							<div class="shopMain consult displaynone">
								<a href="/board/consult/list.html"><strong>consult</strong>고객님의
									궁금하신 문의사항에 대하여 1:1맞춤상담 내용을 확인하실 수 있습니다.</a>
							</div>
							<div
								class="xans-element- xans-myshop xans-myshop-inquirydash shopMain inquiry ">
								<a href="/board/inquiry/list.html"><strong>Inquiry</strong>요청한
									대량구매문의 내역을 확인하고 관리하실 수 있습니다.</a>
							</div>
						</div>





					</div>
				</div>


</body>
</html>

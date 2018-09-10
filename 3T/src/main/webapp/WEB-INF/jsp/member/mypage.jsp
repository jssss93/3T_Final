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
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<link href="<c:url value='/resources/css/mypage.css'/>" rel="stylesheet" type="text/css"/>
	<title>애즈클로</title>
<style type="text/css">
	.modal {
    position: fixed;
    top: 50;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 1050;
    display: none;
    overflow: hidden;
    -webkit-overflow-scrolling: touch;
    outline: 0;
}
</style>	
	
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
									<li>
										<strong>주문</strong>
											<span id="xans_myshop_orderstate_shppied_before_count">${order.ORDER2}</span>
										</a>
									</li>
									<li>
										<strong>교환</strong>
											<span id="xans_myshop_orderstate_shppied_standby_count">${swap.SWAP}</span>
										</a>
									</li>
									<li>
										<strong>환불</strong>
											<span id="xans_myshop_orderstate_shppied_begin_count">${refund.REFUND}</span>
										</a>
									</li>
									<li>
										<strong>총주문수</strong>
										<a href="/3T/order/list" class="count">
											<span id="xans_myshop_orderstate_shppied_complate_count">${orderAll.ORDERALL}</span>
										</a>
									</li>
								
									<li class="etc ">
										<span class="title">쿠폰</span>
										<span class="data">
											<a href="/3T/member/mycoupon">${couponAll.COUPONALL}개</a>
										</span> 
									</li>
									
									<li class="etc ">
										<span class="title">메시지</span>
										<span class="data">
											<a href="/3T/member/mymessage">${NOREADMESSAGE.NOREADMESSAGE}개</a>
										</span> 
									</li>

								</ul>
							</div>
						</div>




						<div id="myshopMain"
							class="xans-element- xans-myshop xans-myshop-main ">
							<div class="shopMain order">
								<a href="/3T/order/list"><strong>order</strong>고객님께서
									주문하신 상품의 주문내역을 확인하실 수 있습니다.<br />비회원의 경우, 주문서의 주문번호와 비밀번호로
									주문조회가 가능합니다.</a>
							</div>
							<div class="shopMain profile">
								<a href="/3T/member/update"><strong>modify</strong>회원이신
									고객님의 개인정보를 관리하는 공간입니다.<br />개인정보를 최신 정보로 유지하시면 보다 간편히 쇼핑을 즐기실 수
									있습니다.</a>
							</div>

							<div class="shopMain wishlist">
								<a href="/3T/wish/wishlist"><strong>wish list</strong>관심상품으로
									등록하신 상품의 목록을 보여드립니다.</a>
							</div>

				<div class="shopMain mileage">
								<a data-toggle="modal" data-target="#myModal"><strong>message</strong>적립금은
									상품 구매 시 사용하실 수 있습니다.<br />메세지</a>
							</div>
							<div class="shopMain coupon 1">
								<a href="/3T/member/mycoupon"><strong>coupon</strong>고객님이
									보유하고 계신 쿠폰내역을 보여드립니다.</a>
							</div>
							<div class="shopMain board">
								<a href="/3T/member/myboard"><strong>my board</strong>고객님께서
									작성하신 게시물을 관리하는 공간입니다.<br />고객님께서 작성하신 글을 한눈에 관리하실 수 있습니다.</a>
							</div>

						</div>





					</div>
				</div>
				
				<div class="modal fade" id="myModal">
	<form action="/3T/member/sendmessage">
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top2">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#555555">MESSAGE</font>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	
		<table class="board_view6">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<!-- <th scope="row">메세지내용</th> -->
					<td align="center"colspan="2" class="view_text"><textarea rows="16"
							cols="80" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				
			</tbody>
		</table>
 
 <table class="notice_button2">
 <tr>
 <td>
		<!-- <a href="#this" class="btn" id="write">작성하기</a>  -->
		<a href="#this"class="btn" id="list">목록으로</a>
			<input class="btn" type="submit" value="작성완료" >
			</td>
			</tr>
			</table>
		</form>



</div>

</body>
</html>

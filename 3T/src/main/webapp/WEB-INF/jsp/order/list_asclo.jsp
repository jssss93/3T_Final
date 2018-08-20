<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/resources/css/js.css'/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value='/resources/css/js2.css'/>" rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="frm_order_result" name="frm_order_result" action=""
		method="post" enctype="multipart/form-data">
		<input id="order_id" name="order_id" value="20180817-0000459"
			type="hidden"> <input id="bank_url_hidden"
			name="bank_url_hidden" value="www.kbstar.com" type="hidden">
		<div class="xans-element- xans-order xans-order-result xans-record-">
			<script>
				var src_total_price = "79,500";
				src_total_price = src_total_price.replace(/,/g, '');
			</script>
			<!--<p class="orderStep"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/img_step4.gif" alt="04 주문완료" /></p>-->
			<!-- 혜택정보 -->
			<div class="bankBenefit displaynone">
				<h3>
					<strong><span>혜택정보</span></strong>
				</h3>
				<div class="info">
					<div class="member">
						<p>
							<strong><span>false</span></strong> 님은, [] 회원이십니다.
						</p>
						<ul class="displaynone">
							<li class="displaynone"><span class="displaynone"></span> 이상
								<span class="displaynone"></span> 구매시 <span></span>을 추가할인 받으실 수
								있습니다. <span class="displaynone">(최대 )</span></li>
							<li class="displaynone"><span class="displaynone"></span> 이상
								<span class="displaynone"></span> 구매시 <span></span>을 추가적립 받으실 수
								있습니다. <span class="displaynone">(최대 )</span></li>
						</ul>
					</div>
					<ul class="mileage">
						<li><a href="/myshop/mileage/historyList.html">가용적립금 : <strong></strong></a></li>
						<li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>개</strong></a></li>
					</ul>
				</div>
			</div>
			<!-- 주문완료 -->
			<div class="orderInfo">
				<p>
					<strong>고객님의 주문이 완료 되었습니다.</strong> 주문내역 및 배송에 관한 안내는 <a
						href="/myshop/order/list.html">주문조회</a> 를 통하여 확인 가능합니다.
				</p>
				<ul>
					<li>주문번호 : <strong>20180817-0000459</strong>
					</li>
					<li>주문일자 : <span>2018-08-17 09:41:38</span>
					</li>
				</ul>
			</div>
			<!-- 결제정보 -->
			<div class="orderArea">
				<div class="title">
					<h3>결제정보</h3>
				</div>

				<div class="boardView">
					<table border="1" summary="">
						<caption>결제정보</caption>
						<tbody>
							<tr>
								<th scope="row">최종결제금액</th>
								<td class="price">KRW <strong>79,500</strong><strong
									class="tail"></strong> <span class="tail displaynone"></span>
								</td>
							</tr>
							<tr>
								<th scope="row">결제수단</th>
								<td><strong><span>무통장 입금</span></strong>
									<p>
										<span>입금자 : 김태형, 계좌번호 : 국민은행 437201-04-192634
											(서지우(애즈클로))</span> <span class=""><a href="#none"
											id="btn_bank_go"><img
												src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_banking.gif"
												alt="인터넷뱅킹 바로가기"></a></span> <span class="displaynone"><a
											href="#none" id=""><img
												src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_payment.gif"
												alt="결제사이트 바로가기"></a></span>
									</p>
									<p class="cashReciept ">
										현금영수증 발행 : <strong class="displaynone">신청 <span>()
										</span></strong> <strong class="">신청안함</strong> <strong class="displaynone">신청실패<br>
										<span class="grid">하단의 주문확인하기를 클릭하고 주문상세조회에서 다시 신청하시거나
												관리자에게 문의하시기 바랍니다.</span></strong>
									</p></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">전자보증보험<br>서비스정보
								</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 주문 상품 정보 -->
			<div class="orderListArea">
				<div class="title">
					<h3>주문 상품 정보</h3>
				</div>

				<!-- 기본배송 -->
				<table border="1" summary="" class="boardList " nspace="normal">
					<caption>기본배송</caption>
					<thead>
						<tr>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="price">판매가</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="mileage">적립금</th>
							<th scope="col" class="delivery">배송구분</th>
							<th scope="col" class="total">합계</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="7"><strong class="type">[기본배송]</strong> 상품구매금액
								<strong>77,000<span class="displaynone"> (0)</span></strong> +
								배송비 2,500 + 지역별배송비 0 = 합계 : <strong class="total">KRW <span>79,500</span></strong>
								<span class="displaynone"></span></td>
						</tr>
					</tfoot>
					<tbody class="xans-element- xans-order xans-order-normalresultlist">
						<tr class="xans-record-">
							<td class="thumb"><a
								href="/product/detail.html?product_no=8130&amp;cate_no=59"><img
									src="//www.asclo.com/web/product/tiny/201808/c04400786a0da372123df86754ad8a81.jpg"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="product"><a
								href="/product/detail.html?product_no=8130&amp;cate_no=59"><strong>(자체제작)
										애즈클로 트랙팬츠 (2color)</strong></a>
								<div class="option ">[옵션: Black/M]</div>
								<p class="free displaynone">무이자할부 상품</p></td>
							<td class="price"><strong>KRW 39,000</strong>
							<div class="displaynone"></div></td>
							<td class="quantity">1</td>
							<td class="mileage">-</td>
							<td class="delivery">기본배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td class="total"><strong>KRW 39,000</strong>
							<div class="displaynone"></div></td>
						</tr>
						<tr class="xans-record-">
							<td class="thumb"><a
								href="/product/detail.html?product_no=7678&amp;cate_no=59"><img
									src="//www.asclo.com/web/product/tiny/201804/7678_shop1_529560.jpg"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="product"><a
								href="/product/detail.html?product_no=7678&amp;cate_no=59"><strong>(자체제작)
										애렉스</strong></a>
								<div class="option ">[옵션: M]</div>
								<p class="free displaynone">무이자할부 상품</p></td>
							<td class="price"><strong>KRW 38,000</strong>
							<div class="displaynone"></div></td>
							<td class="quantity">1</td>
							<td class="mileage">-</td>
							<td class="delivery">기본배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td class="total"><strong>KRW 38,000</strong>
							<div class="displaynone"></div></td>
						</tr>
					</tbody>
				</table>
				<!-- 개별배송 -->
				<table border="1" summary="" class="boardList displaynone"
					nspace="individual">
					<caption>개별배송</caption>
					<thead>
						<tr>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="price">판매가</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="mileage">적립금</th>
							<th scope="col" class="delivery">배송구분</th>
							<th scope="col" class="total">합계</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="7"><strong class="type">[개별배송]</strong> 상품구매금액
								<strong><span class="displaynone"> ()</span></strong> + 배송비 +
								지역별배송비 = 합계 : <strong class="total"><span></span></strong> <span
								class="displaynone"></span></td>
						</tr>
					</tfoot>
					<tbody
						class="xans-element- xans-order xans-order-individualresultlist">
						<tr class="">
							<td class="thumb"><a href="/product/detail.html"><img
									src="http://img.echosting.cafe24.com/thumb/img_product_small.gif"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="product"><a href="/product/detail.html"><strong></strong></a>
								<div class="option displaynone"></div>
								<ul class="xans-element- xans-order xans-order-optionset option">
									<li class=""><strong></strong> (개)</li>
								</ul>
								<p class="free displaynone">무이자할부 상품</p></td>
							<td class="price"><strong></strong>
							<div class="displaynone"></div></td>
							<td class="quantity"></td>
							<td class="mileage"></td>
							<td class="delivery">개별배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td class="total"><strong></strong>
							<div class="displaynone"></div></td>
						</tr>
					</tbody>
				</table>
				<!-- Mobon Tracker v3.1 [주문상품정보변수값세팅] start -->
				<script type="text/javascript">
				<!--
					var pcode = "";
					var pnm = encodeURIComponent(encodeURIComponent(""));
					var qty = "";
				//-->
				</script>
				<!-- Mobon Tracker v3.1 [주문상품정보변수값세팅] end -->
				<!-- 해외배송 -->
				<table border="1" summary="" class="boardList displaynone"
					nspace="oversea">
					<caption>해외배송</caption>
					<thead>
						<tr>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="price">판매가</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="mileage">적립금</th>
							<th scope="col" class="delivery">배송구분</th>
							<th scope="col" class="total">합계</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="7"><strong class="type">[해외배송]</strong> 상품구매금액
								<strong><span class="displaynone"> ()</span></strong> + 배송비 +
								보험료 = 합계 : <strong class="total"><span></span></strong> <span
								class="displaynone"></span></td>
						</tr>
					</tfoot>
					<tbody
						class="xans-element- xans-order xans-order-oversearesultlist">
						<tr class="">
							<td class="thumb"><a href="/product/detail.html"><img
									src="http://img.echosting.cafe24.com/thumb/img_product_small.gif"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt=""></a></td>
							<td class="product"><a href="/product/detail.html"><strong></strong></a>
								<div class="option displaynone"></div>
								<ul class="xans-element- xans-order xans-order-optionset option">
									<li class=""><strong></strong> (개)</li>
								</ul>
								<p class="free displaynone">무이자할부 상품</p></td>
							<td class="price"><strong></strong>
							<div class="displaynone"></div></td>
							<td class="quantity"></td>
							<td class="mileage"></td>
							<td class="delivery">해외배송</td>
							<td class="total"><strong></strong>
							<div class="displaynone"></div></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 사은품 -->
			<div class="orderArea displaynone">
				<div class="title">
					<h3>사은품</h3>
				</div>
				<table border="1" summary="" class="boardList" nspace="gift">
					<caption>사은품</caption>
					<thead>
						<tr>
							<th scope="col" class="thumb">이미지</th>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="state">사은품 구분</th>
						</tr>
					</thead>
					<tbody class="xans-element- xans-order xans-order-giftresultlist">
						<tr class="">
							<td class="thumb"><img
								src="http://img.echosting.cafe24.com/thumb/img_product_small.gif"
								onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
								alt=""></td>
							<td class="product"><span class="displaynone"><img
									src=""></span> <strong></strong>
								<div class="option displaynone"></div></td>
							<td class="quantity"></td>
							<td class="state"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 결제금액 -->
			<div class="totalArea">
				<div class="summary">
					<table border="1" summary="">
						<caption>결제금액</caption>
						<thead>
							<tr>
								<th scope="col"><span>총 주문 금액</span><a href="#none"
									onclick="OrderLayer.onDiv('order_layer_detail', event);"
									class="more"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
										alt="내역보기"></a></th>
								<th scope="col" class="displaynone"><span>총 </span><span
									class="displaynone">할인</span><span class="displaynone">
										+ </span><span class="displaynone">부가결제</span><span> 금액</span></th>
								<th scope="col">총 결제금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="price2"><div class="box">
										KRW <strong>79,500</strong><strong class="tail"></strong><span
											class="tail displaynone"></span>
									</div></td>
								<td class="option displaynone"><div class="box">
										KRW <strong>0</strong><strong class="tail"></strong><span
											class="tail displaynone"></span>
									</div></td>
								<td class="total"><div class="box">
										KRW <strong>79,500</strong><strong class="tail"></strong><span
											class="tail displaynone"></span>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="detail">
					<div class="displaynone">
						<table border="1" summary="">
							<caption>할인 내역</caption>
							<tbody>
								<tr class="total">
									<th scope="row">총 할인금액</th>
									<td>KRW <strong>0</strong></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">쿠폰할인</th>
									<td><span class="grid">KRW 0</span> <a href="#none"
										class="eUsedCouponDetail"><img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
											alt="내역보기"></a></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">추가할인금액</th>
									<td><span class="grid">KRW 0</span> <a href="#none"
										onclick="OrderLayer.onDiv('order_benefit_price_detail_layer', event);"><img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
											alt="내역보기"></a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="displaynone">
						<table border="1" summary="">
							<caption>부가결제 내역</caption>
							<tbody>
								<tr class="total">
									<th scope="row">총 부가결제금액</th>
									<td>KRW <strong>0</strong></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">적립금</th>
									<td>KRW 0원</td>
								</tr>
								<tr class="displaynone">
									<th scope="row">네이버 마일리지/캐쉬</th>
									<td>KRW 0</td>
								</tr>
								<tr class="displaynone">
									<th scope="row">예치금</th>
									<td>KRW 0원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="displaynone">
						<table border="1" summary="">
							<caption>적립예정 내역</caption>
							<tbody>
								<tr class="total">
									<th scope="row">총 적립예정금액</th>
									<td>KRW <strong>0</strong></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">상품별 적립금</th>
									<td><span class="grid">KRW 0원</span></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">회원 적립금</th>
									<td><span class="grid">KRW 0원</span></td>
								</tr>
								<tr class="displaynone">
									<th scope="row">쿠폰 적립금</th>
									<td><span class="grid">KRW 0원</span> <a href="#none"
										class="eUsedCouponDetail"><img
											src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
											alt="내역보기"></a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 다음CTS 컨버젼 스크립트 START -->
			<script type="text/javascript">
				//<![CDATA[
				var DaumConversionDctSv = "type=P,orderID=20180817-0000459,amount=79,500";
				var DaumConversionAccountID = "dEnhyOXHTcIAhOrEEUdE2w00";
				if (typeof DaumConversionScriptLoaded == "undefined"
						&& location.protocol != "file:") {
					var DaumConversionScriptLoaded = true;
					document
							.write(unescape("%3Cscript%20type%3D%22text/javas"
									+ "cript%22%20src%3D%22"
									+ (location.protocol == "https:" ? "https"
											: "http")
									+ "%3A//s1.daumcdn.net/svc/original/U03/commonjs/cts/vr200/dcts.js%22%3E%3C/script%3E"));
				}
				//]]>
			</script>
			<script type="text/javascript"
				src="http://s1.daumcdn.net/svc/original/U03/commonjs/cts/vr200/dcts.js"></script>
			<!-- 다음CTS 컨버젼 스크립트 END -->
			<!-- 배송지정보 -->
			<div class="orderArea">
				<div class="title">
					<h3>배송지정보</h3>
				</div>

				<div class="boardView">
					<table border="1" summary="">
						<caption>배송지 정보</caption>
						<tbody>
							<tr>
								<th scope="row">받으시는분</th>
								<td><span>김태형</span></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">영문이름</th>
								<td><span></span></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">이름(발음기호)</th>
								<td><span></span></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">국가</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">우편번호</th>
								<td><span>06267</span></td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td><span>서울특별시 강남구 강남대로 238 (도곡동) 스카이쏠라빌딩 332</span></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">도시</th>
								<td></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">주/지방</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">일반전화</th>
								<td></td>
							</tr>
							<tr>
								<th scope="row">휴대전화</th>
								<td><span>010-1442-6778</span></td>
							</tr>
							<tr>
								<th scope="row">배송메시지</th>
								<td></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">희망배송일</th>
								<td><strong></strong></td>
							</tr>
							<tr class="displaynone">
								<th scope="row">배송업체</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 추가정보 -->
			<div class="orderArea ">
				<div class="title">
					<h3>추가정보</h3>
				</div>

				<div class="boardView">
					<table border="1" summary="">
						<caption>추가정보</caption>
						<tbody class="xans-element- xans-order xans-order-ordadd">
							<tr class="xans-record-">
								<th scope="row">고객메세지</th>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- Mobon Tracker v3.1 [결제전환] start -->
			<script type="text/javascript">
			<!--
				function mobConv() {
					var cn = new EN();
					cn.setData("uid", "asclo");
					cn.setData("ordcode", "20180817-0000459");
					if (typeof qty == "undefined" || qty == "")
						var qty = "1";
					if (typeof price == "undefined" || price == "")
						var price = "79,500";
					cn.setData("pcode", pcode);
					cn.setData("qty", qty);
					cn.setData("price", price);
					cn.setData("pnm", pnm);
					cn.setSSL(true);
					cn.sendConv();
				}
			//-->
			</script>
			<script src="https://cdn.megadata.co.kr/js/enliple_min2.js"
				defer="defer" onload="mobConv()"></script>
			<!-- Mobon Tracker v3.1 [결제전환] end -->
			<div class="btnArea">
				<span class="left"> <a href="#none"
					onclick="window.open('/myshop/order/print/spec.html?order_id=20180817-0000459', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
					class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_spec.gif"
						alt="거래명세서 인쇄"></a> <a href="#none"
					onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20180817-0000459', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
					class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_card.gif"
						alt="카드매출전표 인쇄"></a>
				</span> <span class="right"> <a href="/">쇼핑계속하기</a> <a
					href="/myshop/order/list.html">주문확인하기</a>
				</span>
			</div>
			<!-- 이용안내 -->
			<div class="help">
				<h3>이용안내</h3>
				<div class="content">
					<ul>
						<li class="item1">비회원 주문의 경우, 주문번호를 꼭 기억하세요. 주문번호로 주문조회가
							가능합니다.</li>
						<li class="item2">배송은 결제완료 후 지역에 따라 1일 ~ 3일 가량이 소요됩니다.</li>
						<li class="item3">상품별 자세한 배송과정은 주문조회를 통하여 조회하실 수 있습니다.</li>
						<li class="item4">주문의 취소 및 환불, 교환에 관한 사항은 이용안내의 내용을 참고하십시오.</li>
					</ul>
				</div>
			</div>
			<!-- 총 주문금액 상세내역 레이어 -->
			<div id="order_layer_detail" class="totalDetail">
				<h3>총 주문금액 상세내역</h3>
				<div class="content">
					<p>KRW 79,500</p>
					<ul>
						<li><strong>상품금액</strong><span>KRW 77,000</span></li>
						<li class="displaynone"><strong>부가세</strong><span>KRW
						</span></li>
						<li><strong>배송비</strong><span>KRW 2,500</span></li>
						<li><strong>지역별 배송비</strong><span>KRW 0</span></li>
					</ul>
				</div>
				<div class="close">
					<a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
						alt="닫기"></a>
				</div>
			</div>
			<!-- 추가할인금액 내역보기 레이어 -->
			<div id="order_benefit_price_detail_layer" class="totalDetail">
				<h3>추가할인금액 내역보기</h3>
				<div class="content">
					<p>KRW 0</p>
					<ul>
						<li class="displaynone"><strong>기간할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>회원할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>재구매할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>대량구매할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>바로가기(링콘)할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>어바웃pbp할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>신규상품할인</strong><span>KRW
								0</span></li>
						<li class="displaynone"><strong>결제수단할인</strong><span>KRW
						</span></li>
						<li class="displaynone"><strong>회원등급할인</strong><span>KRW
								0</span></li>
					</ul>
				</div>
				<div class="close">
					<a href="#none"
						onclick="OrderLayer.offDiv('order_benefit_price_detail_layer');"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
						alt="닫기"></a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
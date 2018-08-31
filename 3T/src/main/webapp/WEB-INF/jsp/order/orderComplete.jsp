<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '829030643890604'); // Insert your pixel ID here.
	fbq('track', 'PageView');
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
		"total_basic_ship_fee" : 2500,
		"payed_amount" : 44500,
		"order_id" : "20180828-0002861",
		"order_product" : [ {
			"product_name" : "\ubaa8\ub124 \uc11c\uc2a4\ud39c\ub354\uc2ac\ub799\uc2a4 (3color)",
			"product_price" : 42000,
			"quantity" : 1,
			"product_no" : 8115,
			"product_code" : "P0000MAD",
			"sub_total_price" : 42000,
			"category_no_1" : 59,
			"category_name_1" : "BOTTOM",
			"sum_total_opt_price" : 42000
		} ],
		"member_id_crypt" : "",
		"common_member_id_crypt" : ""
	};
</script>

<script type="text/javascript">
	var EC_SDE_SHOP_NUM = 1;
	var SHOP = {
		getLanguage : function() {
			return "ko_KR";
		},
		getCurrency : function() {
			return "KRW";
		},
		getFlagCode : function() {
			return "KR";
		},
		isMultiShop : function() {
			return true;
		},
		isDefaultShop : function() {
			return true;
		},
		isDefaultLanguageShop : function(sLanguageCode) {
			return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode);
		},
		isKR : function() {
			return true;
		},
		isUS : function() {
			return false;
		},
		isJP : function() {
			return false;
		},
		isCN : function() {
			return false;
		},
		isTW : function() {
			return false;
		},
		isES : function() {
			return false;
		},
		isPT : function() {
			return false;
		},
		isLanguageShop : function(sLanguageCode) {
			return sLanguageCode === "ko_KR";
		},
		getDefaultShopNo : function() {
			return 1;
		},
		getProductVer : function() {
			return 2;
		},
		isSDE : function() {
			return true;
		}
	};
	var EC_COMMON_UTIL = {
		convertSslForString : function(sString) {
			return sString.replace(/http:/gi, '');
		},
		convertSslForHtml : function(sHtml) {
			return sHtml
					.replace(
							/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig,
							'$1$2');
		},
		getProtocol : function() {
			return 'http';
		},
		moveSsl : function() {
			if (EC_COMMON_UTIL.getProtocol() === 'http') {
				var oLocation = jQuery(window.location);
				var sUrl = 'https://' + oLocation.attr('host')
						+ oLocation.attr('pathname') + oLocation.attr('search');
				window.location.replace(sUrl);
			}
		}
	};
</script>
<script type="text/javascript">
	var EC_ROOT_DOMAIN = "cafe24.com";
	var EC_GLOBAL_INFO = (function() {
		var oData = {
			"base_domain" : "hi880515.cafe24.com",
			"root_domain" : "cafe24.com",
			"is_global" : false,
			"country_code" : "KR",
			"language_code" : "ko_KR"
		};

		return {
			getBaseDomain : function() {
				return oData['base_domain'];
			},

			getRootDomain : function() {
				return oData['root_domain'];
			},

			isGlobal : function() {
				return oData['is_global'];
			},

			getCountryCode : function() {
				return oData['country_code'];
			},

			getLanguageCode : function() {
				return oData['language_code'];
			}
		};
	})();
</script>
<link href="<c:url value='/resources/css/orderComplete.css'/>"
	rel="stylesheet" type="text/css" />
<title>3T</title>
<style type="text/css">
#contentwrap {
	position: relative;
	float: left;
	width: 100%;
	/* height: 100%; */
	/* overflow: scroll; */
}
</style>
</head>
<body>
	<div id="contents">

		<form id="frm_order_result" name="frm_order_result" action="" method="post" enctype="multipart/form-data">
			<input id="order_id" name="order_id" value="20180828-0002861" type="hidden"> 
			<input id="bank_url_hidden"	name="bank_url_hidden" value="www.kbstar.com" type="hidden">
			<div class="xans-element- xans-order xans-order-result xans-record-">
		
					
						<!-- 주문완료 -->
						<div class="orderInfo">
							<p>
								<strong>고객님의 주문이 완료 되었습니다.</strong> 주문내역 및 배송에 관한 안내는 <a
									href="/myshop/order/list.html">주문조회</a> 를 통하여 확인 가능합니다.
							</p>
							<ul>
								<li>주문번호 : <strong>20180828-0002861</strong>
								</li>
								<li>주문일자 : <span>2018-08-28 21:15:01</span>
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
											<td class="price">KRW <strong>44,500</strong><strong
												class="tail"></strong> 
											</td>
										</tr>
										<tr>
											<th scope="row">결제수단</th>
											<td><strong><span>무통장 입금</span></strong>
												<p>
													<span>입금자 : 강한별, 계좌번호 : 국민은행 437201-04-192634
														(서지우(애즈클로))</span> <span class=""><a href="#none"
														id="btn_bank_go"><img
															src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_banking.gif"
															alt="인터넷뱅킹 바로가기"></a></span> <span class="displaynone"><a
														href="#none" id=""><img
															src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_payment.gif"
															alt="결제사이트 바로가기"></a></span>
												</p>
											</td>
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
										<td colspan="7"><strong class="type">[기본배송]</strong>
											상품구매금액 <strong>42,000<span class="displaynone">
													(0)</span></strong> + 배송비 2,500 + 지역별배송비 0 = 합계 : <strong class="total">KRW
												<span>44,500</span>
										</strong> <span class="displaynone"></span></td>
									</tr>
								</tfoot>
								<tbody
									class="xans-element- xans-order xans-order-normalresultlist">
									<tr class="xans-record-">
										<td class="thumb"><a
											href="/product/detail.html?product_no=8115&amp;cate_no=59"><img
												src="//www.asclo.com/web/product/tiny/201808/ed35d34b114b324dee58e8c21b9f4563.jpg"
												onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
												alt=""></a></td>
										<td class="product"><a
											href="/product/detail.html?product_no=8115&amp;cate_no=59"><strong>모네
													서스펜더슬랙스 (3color)</strong></a>
											<div class="option ">[옵션: Black/S]</div>
										</td>
										<td class="price"><strong>KRW 42,000</strong></td>
										<td class="quantity">1</td>
										<td class="mileage">-</td>
										<td class="delivery">기본배송
											<div class="displaynone">(해외배송가능)</div>
										</td>
										<td class="total"><strong>KRW 42,000</strong>
											<div class="displaynone"></div></td>
									</tr>
								</tbody>
							</table>
							
							
							
						</div>
						<!-- 사은품 -->
						
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
													KRW <strong>44,500</strong><strong class="tail"></strong><span
														class="tail displaynone"></span>
												</div></td>
											<td class="option displaynone"><div class="box">
													KRW <strong>0</strong><strong class="tail"></strong><span
														class="tail displaynone"></span>
												</div></td>
											<td class="total"><div class="box">
													KRW <strong>44,500</strong><strong class="tail"></strong><span
														class="tail displaynone"></span>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="detail">
								<div >
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
								
								<div >
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
							var DaumConversionDctSv = "type=P,orderID=20180828-0002861,amount=44,500";
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
											<td><span>강한별</span></td>
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
											<td><span>18125</span></td>
										</tr>
										<tr>
											<th scope="row">주소</th>
											<td><span>경기도 오산시 가수로 68 (가수동) 사랑채 303호</span></td>
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
											<td><span>02-0000-0000</span></td>
										</tr>
										<tr>
											<th scope="row">휴대전화</th>
											<td><span>010-2584-6854</span></td>
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
						
						
						<script src="https://cdn.megadata.co.kr/js/enliple_min2.js"
							defer="defer" onload="mobConv()"></script>
						<!-- Mobon Tracker v3.1 [결제전환] end -->
						<div class="btnArea">
							 <span class="right"> <a href="/">쇼핑계속하기</a> <a
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
									<li class="item4">주문의 취소 및 환불, 교환에 관한 사항은 이용안내의 내용을
										참고하십시오.</li>
								</ul>
							</div>
						</div>
						
						
					</div>
				</form>
				<!-- begin facebook purchase code -->
				<script>
					fbq('track', 'Purchase', {
						value : src_total_price,
						currency : 'KRW'
					});
				</script>

			</div>
		</div>
	</div>

</body>
</html>
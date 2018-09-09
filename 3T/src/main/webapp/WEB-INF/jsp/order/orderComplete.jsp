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
.xans-order-result .totalArea .summary td strong {
    letter-spacing: -1px;
    font-size: 18!important;
}
.xans-order-result .totalArea .summary td {
    font-size: 17!important;
}
.help h3 {
    padding: 4px 0 3px 10px;
    border-bottom: 1px solid #e8e7e7;
    color: #777;
    font-size: 11px;
    background: #fff;
    text-align: left;
}
.boardView td {
   font-size: 13px;
}
.boardView th {
   font-size: 13px;
}
.boardList th{
   text-align: center;
}
.xans-order-result .totalArea .detail .total th, .xans-order-result .totalArea .detail .total td{
   font-size:15px!important;
}
.xans-order-result .totalArea .detail td {
   font-size:13px!important; 
}
.xans-order-result .boardView tbody tr:first-child th, .xans-order-result .boardView tbody tr:first-child strong {
   font-size:13px!important;  
}
.xans-order-result .boardView .price {
   font-size:14px!important;  
}
#contents {
	width: 100%!important;
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
								<li>주문번호 : <strong><fmt:formatDate value="${orderInfo.REGDATE }" pattern="yyyyMMdd" />-000${orderInfo.ORDER_NO}</strong>
								</li>
								<li>주문일자 : <span><fmt:formatDate value="${orderInfo.REGDATE }" pattern="yyyyMMdd hh:mm" /></span>
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
											<td class="price">KRW <strong>${orderInfo.TOTALPRICE}</strong><strong
												class="tail"></strong> 
											</td>
										</tr>
										<tr>
											<th scope="row">결제수단</th>
											<td>
												<p>
													<span>(${orderInfo.PAYMENT }) 입금자 :${orderInfo.DEPOSIT_NAME }, 계좌번호 : ${orderInfo.DEPOSIT_BANK} </span> 
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
										<td colspan="7">
											<strong class="type">[기본배송]</strong>상품구매금액 
											<strong>42,000</strong> + 배송비 2,500 + 지역별배송비 0 = 합계 : 
											<strong class="total">KRW<span>44,500</span></strong> 
										</td>
									</tr>
								</tfoot>
								<tbody class="xans-element- xans-order xans-order-normalresultlist">
									<c:choose>
										<c:when test="${fn:length(orderGoodsList) > 0}">
											<c:forEach items="${orderGoodsList }" var="row" varStatus="stat">
												<tr class="xans-record-">
													<td class="thumb">
														<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
															<img width="75" height="75"	src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
														</a>
													</td>
													<td class="product">
														<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
															<strong>${row.NAME }</strong>
														</a>
														<div class="option ">[옵션: ${row.COLOR} / ${row.GOODS_SIZE}]</div>
													</td>
													<td class="price"><strong>${row.PRICE}</strong></td>
													<td class="quantity">${row.COUNT}</td>
													<td class="mileage">-</td>
													<td class="delivery">기본배송</td>
													<td class="total"><strong>KRW ${row.COUNT*row.PRICE}</strong></td>
													</tr>
											</c:forEach>
										</c:when>
									</c:choose>
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
											<th scope="col"><span>총 주문 금액</span></th>
												
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
											<tr >
												<th scope="row">쿠폰할인</th>
												<td><span class="grid">KRW 0</span> </td>
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
										</tbody>
									</table>
								</div>
							</div>
						</div>
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
											<td><span>${orderInfo.RECIPIENT_NAME}</span></td>
										</tr>
										<tr>
											<th scope="row">우편번호</th>
											<td><span>${orderInfo.RECIPIENT_ZIPCODE}</span></td>
										</tr>
										<tr>
											<th scope="row">주소</th>
											<td><span>${orderInfo.RECIPIENT_ADDR1} ${orderInfo.RECIPIENT_ADDR2}</span></td>
										</tr>
										<tr>
											<th scope="row">TEL.</th>
											<td><span>${orderInfo.RECIPIENT_PHONE}</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 추가정보 -->
						<div class="btnArea">
							 <span class="right"> 
							 	<a href="/">쇼핑계속하기</a> 
							 	<a href="/3T/order/list">주문확인하기</a>
							</span>
						</div>
						<!-- 이용안내 -->
						<div class="help">
							<h3>이용안내</h3>
							<div class="content">
								<ul>
									<li class="item1">비회원 주문의 경우, 주문번호를 꼭 기억하세요. 주문번호로 주문조회가 가능합니다.</li>
									<li class="item2">배송은 결제완료 후 지역에 따라 1일 ~ 3일 가량이 소요됩니다.</li>
									<li class="item3">상품별 자세한 배송과정은 주문조회를 통하여 조회하실 수 있습니다.</li>
									<li class="item4">주문의 취소 및 환불, 교환에 관한 사항은 이용안내의 내용을 참고하십시오.</li>
								</ul>
							</div>
						</div>
						
						
					</div>
				</form>
			</div>
</body>
</html>
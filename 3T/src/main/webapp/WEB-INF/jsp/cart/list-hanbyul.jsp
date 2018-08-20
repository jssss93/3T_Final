<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic"
	rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet"
	type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin:700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/fonts/font-awesome.css">
<link
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"
	rel="stylesheet">
<meta name="format-detection" content="telephone=no">
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script
	src="https://connect.facebook.net/signals/config/829030643890604?v=2.8.25&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script src="/js/jquery.gray.js"></script>
<!--gray IE 용-->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery.als-1.6.min.js"></script>

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
<link rel="canonical" href="http://asclo.com/order/basket.html">
<link rel="alternate" href="http://m.asclo.com/order/basket.html">
<meta property="og:url" content="http://asclo.com/order/basket.html">
<meta property="og:site_name" content="애즈클로">
<meta property="og:type" content="website">
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico">
<meta http-equiv="ImageToolbar" content="No">
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

<script type="text/javascript">
	var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
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
	
	
	
	
	
	$(document).ready(function() {
		$("#addOrder").on("click", function(e) { //목록으로 버튼
			e.preventDefault();
			fn_addOrder();
		});
		$("#write").on("click", function(e) { //작성하기 버튼
			e.preventDefault();
			fn_Write();
		});
		
	});
	
	function fn_addOrder() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/order/add' />");
		comSubmit.submit();
	}
	
	function fn_Write() {
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("<c:url value='/goods/write' />");
		comSubmit.submit();
	}
	
	
 	//F5키 막기
	window.onkeydown = function() {
		var kcode = event.keyCode;
		if(kcode == 8 || kcode == 116) event.returnValue = false;
	} 

 	
 
	 function comma(str) {
	    str = String(str);
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	 
	//체크박스 단일 선택
 	var sum = 0;
 	var delivery = 0;
 	var totalSum =0;
 	
 	function checkedRows(index){
		var index = index;
		var tagName = "#checkbox"+index;
		
		//price 클래스의 value 값을 가져온다.
		var price = $(".price").eq(index).attr("value");
		var totprice = $(".totprice").eq(index).attr("value");
		
		price = parseInt(price);
		totprice = parseInt(totprice);
	     if($(tagName).is(":checked")){
	    	
	       	sum += totprice;
	       	
	       	if(sum>50000){
	       		delivery=3000;
	       	}else{
	       		delivery=0;
	       	}
	       	totalSum = sum + delivery;
	       	 
	       	$("#totalPrice").html(comma(sum)+" KRW");
	       	$("#delivery").html(comma(delivery)+" KRW");
	       	$("#totalSum").html(comma(totalSum)+" KRW");
	       	
		}else{
			
		    sum -=  totprice;
		    
		    if(sum>50000){
		    	delivery=3000;
	       	}else{
	       		delivery=0;
	       	}
		    
				totalSum = sum + delivery;
		       	
		       	$("#totalPrice").html(comma(sum)+" KRW");
		       	$("#delivery").html(comma(delivery)+" KRW");
		       	$("#totalSum").html(comma(totalSum)+" KRW");
		} 
	};
	
	//체크박스 다중 선택
	var chkCount = $("input[type=checkbox]").length ;
	
	function checkAll(){    
		if($("#chkBox").is(":checked")) {
			for(i=0;i<$("input[type=checkbox]").length-1;i++){
				if($("#checkbox"+i).is(":checked")){
				}
				else{
					$("#checkbox"+i).prop("checked",true);
					checkedRows(i); 
				}
			}
		} else{
			for(i=0;i<$("input[type=checkbox]").length-1;i++){
				if($("#checkbox"+i).is(":checked")){
					$("#checkbox"+i).prop("checked",false);
					checkedRows(i); 
				}
				else{
				}
			}
		} 
	}
	
	
	
	
	
	
</script>

<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tZXBTgQhDIbvO159jromm6xXT3ozvkEHOgPZQgmF6L69s64HzcTEjHCkab_Cz08BJ4Fgf58hZZkzBsikUrMhMKowZYkFjIQg8WYJ3MJf8snsVLgWL3E3yvvGwlrK1qaMZ8rbSguOTL-UYkrwKJgtvH6HrOQhM1SlrOD88Xh32B8g1ZG9GVwJDGppsKR-jqAnHx8-GUFsZQLJljKMqCcqL2hOOFNDrjXPcZImwHBWJwnevDr2WnowE84-ztvJiwmklouY3jS5pxXwGvjf2afFgAMyN9zWYudlQatX0IpbfQdoEeHiUweyI-6BXYaCrab0IF-Mj4V6qIxjB-pqVDcD__g8GorAPcRdskyTQfjVYarMajJRbElVwmzcE6G9DocP&amp;type=css&amp;k=82e471e6421823158bbbaa252eb0adb8eb11482d&amp;t=1508869165">
<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tdLNDcIwDAXgAcKVOQyHSmUExgiJ86MmdhQnoG5PywzmbL1Psp8hcUVAZ6ZgF0h5XW_LfYE2XyU7k0YtIB6NR8mRQLZMD3AiUNnPglDsznNA4ciD2-WYXEGHdHZg5L5rmi-23T8psCaa0HrsmqKMY_fzpCH8hSVNteeYhqlIU1P1_CFt89e-KVlGs26zEc2iyQfmofsHjul95DNTc6f7BQ&amp;type=css&amp;k=9a3cb7872486b57aea4134bfe28a5541c53ed81d&amp;t=1499901149">

<title>애즈클로</title>
<meta name="path_role" content="ORDER_BASKET">
<meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="keywords"
	content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디">
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534724800800&amp;cv=9&amp;fst=1534724800800&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fasclo.com%2Forder%2Fbasket.html%3Fdelvtype%3DA&amp;ref=http%3A%2F%2Fasclo.com%2Fproduct%2Fdetail.html%3Fproduct_no%3D8171%26cate_no%3D1%26display_group%3D2&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4">
	<title>CART</title>
		
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		</head>
		<script>
	</script>

<div id="contentwrap">

	<div id="contents">


		<div class="titleArea">
			<h2>cart</h2>
		</div>

		<!-- 장바구니 모듈 Package -->
		<div class="xans-element- xans-order xans-order-basketpackage ">
			<!--<p class="orderStep"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/img_step1.gif" alt="01 장바구니" /></p>-->
			<!-- 혜택정보 -->
			<!-- 탭 -->
			<div class="xans-element- xans-order xans-order-tabinfo ">
				<ul>
					<li class="selected "><a href="/order/basket.html">국내배송상품
							(1)</a></li>
					<li class=" "><a href="/order/basket.html?delvtype=B">해외배송상품
							(0)</a></li>
				</ul>
				<p class="displaynone">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
			</div>
			<!-- 장바구니 비어있을 때 -->
			<!-- 일반상품 -->
			<div class="orderListArea">
				<div class="xans-element- xans-order xans-order-normtitle title ">
					<h3>일반상품 (1)</h3>
				</div>

				<!-- 일반상품 (기본배송) -->
				<table border="1" summary=""
					class="xans-element- xans-order xans-order-normnormal boardList xans-record-">
					<caption>기본배송</caption>
					<thead>
						<tr>
							<th scope="col" class="chk"><input type="checkbox"
								onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);"></th>
							<th scope="col" class="thumb">IMAGE</th>
							<th scope="col" class="product">PRODUCT INFO</th>
							<th scope="col" class="price">PRICE</th>
							<th scope="col" class="quantity">QUANTITY</th>
							<th scope="col" class="mileage">point</th>
							<th scope="col" class="delivery">배송구분</th>
							<th scope="col" class="charge">배송비</th>
							<th scope="col" class="total">total</th>
							<th scope="col" class="button">select</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="10"><strong class="type">[기본배송]</strong> 상품구매금액
								<strong>39,000 <span class="displaynone">()</span></strong><span
								class="displaynone"> </span> + 배송비 2,500<span
								class="displaynone"> </span> <span class="displaynone"> -
									상품할인금액 0 </span> = 합계 : <strong class="total">KRW <span>41,500</span></strong>
								<span class="displaynone"> </span></td>
						</tr>
					</tfoot>
					<tbody class="xans-element- xans-order xans-order-list">
						<tr class="xans-record-">
							<td><input type="checkbox" id="basket_chk_id_0"
								name="basket_product_normal_type_normal"></td>
							 <!-- <td class="thumb"><a
								href="/product/detail.html?product_no=8171&amp;cate_no=1"><img
									src="//asclo.com/web/product/tiny/201808/a9d7815a7558873c10907a9ea71e8fde.jpg"
									onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';"
									alt="AK 7883 테라 데님팬츠 (2color)"></a></td>
							<td class="product"><a
								href="/product/detail.html?product_no=8171&amp;cate_no=1"><strong>AK
										7883 테라 데님팬츠 (2color)</strong> </a><span class="displaynone"><br>(영문명
									: )</span>
								<ul class="xans-element- xans-order xans-order-optionall option">
									<li class="xans-record-"><strong class="displaynone">AK
											7883 테라 데님팬츠 (2color)</strong>[옵션: 진청/S] <span class="displaynone">(1개)</span><br>
										<a href="#none"
										onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))"
										class="displaynone"><img src="/images/btn_option.gif"
											alt="옵션변경"></a> 참고 : 옵션변경 레이어
										<div class="optionModify" id="option_modify_layer_0">
											<h3>옵션변경</h3>
											<div class="content">
												<ul class="prdInfo">
													<li>AK 7883 테라 데님팬츠 (2color)</li>
													<li class="option">[옵션: 진청/S]</li>
												</ul>
												<div class="prdModify">
													<h4>상품옵션</h4>
													<ul class="xans-element- xans-order xans-order-optionlist">
														<li class="xans-record-"><span>색상</span> <select
															option_product_no="8171"
															option_select_element="ec-option-select-finder"
															option_sort_no="1" option_type="T" item_listing_type="S"
															option_title="색상"
															product_option_area="product_option_8171_0"
															name="option1" id="product_option_id1"
															class="ProductOption0" option_style="select"
															required="true"><option value="*" link_image="">-
																	[필수] 색상 선택 -</option>
																<option value="**" link_image="">-------------------</option>
																<option value="진청" link_image="">진청</option>
																<option value="연청" link_image="">연청</option></select></li>
														<li class="xans-record-"><span>사이즈</span> <select
															option_product_no="8171"
															option_select_element="ec-option-select-finder"
															option_sort_no="2" option_type="T" item_listing_type="S"
															option_title="사이즈"
															product_option_area="product_option_8171_0"
															name="option2" id="product_option_id2"
															class="ProductOption0" option_style="select"
															required="true"><option value="*" link_image="">-
																	[필수] 사이즈 선택 -</option>
																<option value="**" link_image="">-------------------</option></select></li>
													</ul>
												</div>
											</div> -->
											<div class="btnArea">
												<a href="#none" class=""
													onclick="BasketNew.modify('0', 'add');"><img
													src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_option_add.gif"
													alt="추가"></a> <a href="#none"
													onclick="BasketNew.modify('0', 'modify');"><img
													src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_option_modify.gif"
													alt="변경"></a>
											</div>
											<div class="close">
												<a href="#none" onclick="$('.optionModify').hide();"><img
													src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
													alt="닫기"></a>
											</div>
										</div> <!-- //참고 --></li>
								</ul></td>
							<td class="price">
								<div class="">
									<strong>KRW 39,000</strong>
									<p class="displaynone"></p>
								</div>
								<div class="displaynone">
									<strong>KRW 39,000</strong>
									<p class="displaynone"></p>
								</div>
							</td>
							<td><span class="quantity"><input id="quantity_id_0"
									name="quantity_name_0" size="2" value="1" type="text"><a
									href="javascript:;"
									onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_up.gif"
										alt="증가" class="QuantityUp"></a><a href="javascript:;"
									onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img
										src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_quantity_down.gif"
										alt="감소" class="QuantityDown"></a></span> <a href="javascript:;"
								onclick="Basket.modifyQuantity()"><img
									src="/images/btn_quantity_modify.gif" alt="변경"></a></td>
							<td class="mileage">-</td>
							<td class="delivery">기본배송
								<div class="displaynone">(해외배송가능)</div>
							</td>
							<td>
								<p class="">
									KRW 2,500<span class="displaynone"><br></span><br>
								</p>조건
							</td>
							<td class="total"><strong>KRW 39,000</strong>
								<div class="displaynone"></div></td>
							<td class="button"><a href="javascript:;"
								onclick="Basket.orderBasketItem(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order.gif"
									alt="주문하기"></a> <a href="javascript:;"
								onclick="BasketNew.moveWish(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
									alt="관심상품등록"></a> <a href="javascript:;"
								onclick="Basket.deleteBasketItem(0);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete.gif"
									alt="삭제"></a></td>
						</tr>
					</tbody>
				</table>
				<!-- 일반상품 (업체기본배송) -->
				<!-- 일반상품 (개별배송) -->
				<!-- 일반상품 (해외배송) -->
			</div>
			<!-- 무이자상품 -->
			<div class="orderListArea">

				<!-- 무이자상품 (기본배송)-->
				<!-- 무이자상품 (개별배송)-->
				<!-- 무이자상품 (해외배송) -->
			</div>
			<!-- 무이자할부 정보 (카드이미지 등) -->
			<div
				class="xans-element- xans-order xans-order-basketpriceinfoguide  ">
				<p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
				<p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인
					가능합니다.</p>
			</div>
			<!-- 선택상품 제어 버튼 -->
			<div class="xans-element- xans-order xans-order-selectorder ">
				<span class="left"> <strong class="ctrlTxt">선택상품을</strong> <a
					href="#none" onclick="Basket.deleteBasket()"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete2.gif"
						alt="삭제하기"></a> <a href="#none" onclick="Basket.addWishList()"
					class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
						alt="관심상품등록"></a> <a href="#none" onclick="Basket.moveOversea()"
					class=""><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_foreign.gif"
						alt="해외배송상품 장바구니로 이동"></a> <a href="#none"
					onclick="Basket.hopeProduct(''); return false;" class="displaynone"><img
						src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_product.gif"
						alt="상품조르기"></a>
				</span> <a href="#none" onclick="Basket.emptyBasket()"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_clear.gif"
					alt="장바구니비우기"></a> <a href="#none"
					onclick="Basket.estimatePrint(this)" link="/estimate/userform.html"><img
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_estimate.gif"
					alt="견적서출력"></a>
			</div>
			<!-- 총 주문금액 : 국내배송상품 -->
			<div class="xans-element- xans-order xans-order-totalsummary  ">
				<table border="1" summary="">
					<caption>총 주문금액</caption>
					<colgroup>
						<col style="width: 23%;">
						<col style="width: 24%;">
						<col style="width: 23%;" class="displaynone">
						<col style="width: auto;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><span>총 상품금액</span><a href="#none"
								onclick="OrderLayer.onDiv('order_layer_detail', event);"
								class="more displaynone"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기"></a></th>
							<th scope="col">총 배송비</th>
							<th scope="col" class="displaynone">총 할인금액<a href="#none"
								onclick="OrderLayer.onDiv('order_layer_benefit', event);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기"></a>
							</th>
							<th scope="col">결제예정금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="price"><div class="box">
									KRW <strong>39,000</strong> <span class="tail displaynone"></span>
								</div></td>
							<td class="option"><div class="box">
									<strong>+</strong>KRW <strong>2,500</strong> <span
										class="tail displaynone"></span>
								</div></td>
							<td class="discount displaynone"><div class="box">
									<strong>-</strong>KRW <strong>0</strong> <span
										class="tail displaynone"></span>
								</div></td>
							<td class="total"><div class="box">
									<strong>=</strong>KRW <strong>41,500</strong> <span
										class="tail displaynone"></span>
								</div></td>
						</tr>
					</tbody>
				</table>
				<!-- 총 상품금액 상세내역 레이어 -->
				<div id="order_layer_detail" class="totalDetail">
					<h3>총 상품금액 상세내역</h3>
					<div class="content">
						<p>KRW 39,000</p>
						<ul>
							<li><strong>상품금액</strong><span></span></li>
							<li class="displaynone"><strong>부가세</strong><span>KRW
									0</span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기"></a>
					</div>
				</div>
				<!-- 총 할인금액 내역보기 레이어 -->
				<div id="order_layer_benefit" class="totalDetail">
					<h3>총 할인금액 상세내역</h3>
					<div class="content">
						<p id="mTotalBenefitPrice">KRW 0</p>
						<ul>
							<li class="displaynone"><strong>기간할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>회원할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>재구매할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>대량구매할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>바로가기(링콘)할인</strong><span
								id="">KRW </span></li>
							<li class="displaynone"><strong>어바웃pbp할인</strong><span id="">KRW
							</span></li>
							<li class="displaynone"><strong>신규상품할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>결제수단할인</strong><span id="">KRW
							</span></li>
							<li class="displaynone"><strong>회원등급할인</strong><span id="">KRW
									0</span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none"
							onclick="OrderLayer.offDiv('order_layer_benefit');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기"></a>
					</div>
				</div>
			</div>
			<!-- 총 주문금액 : 해외배송상품 -->
			<div
				class="xans-element- xans-order xans-order-totaloversea displaynone ">
				<table border="1" summary="">
					<caption>총 주문금액</caption>
					<colgroup>
						<col style="width: 35%;">
						<col style="width: 30%;" class="displaynone">
						<col style="width: auto;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col"><span>총 상품금액</span><a href="#none"
								onclick="OrderLayer.onDiv('order_layer_detail', event);"
								class="more displaynone"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기"></a></th>
							<th scope="col" class="displaynone">총 할인금액<a href="#none"
								onclick="OrderLayer.onDiv('order_layer_benefit', event);"><img
									src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_list.gif"
									alt="내역보기"></a>
							</th>
							<th scope="col">총 합계</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="price"><div class="box">
									KRW <strong>39,000</strong><strong class="tail"></strong> <span
										class="tail displaynone"></span>
								</div></td>
							<td class="discount displaynone"><div class="box">
									<strong>-</strong>KRW <strong>0</strong> <span
										class="tail displaynone"></span>
								</div></td>
							<td class="total"><div class="box">
									<strong>=</strong>KRW <strong>41,500</strong><strong
										class="tail"></strong> <span class="tail displaynone"></span>
								</div></td>
						</tr>
					</tbody>
				</table>
				<!-- 총 상품금액 상세내역 레이어 -->
				<div id="order_layer_detail" class="totalDetail">
					<h3>총 상품금액 상세내역</h3>
					<div class="content">
						<p>KRW 39,000</p>
						<ul>
							<li><strong>상품금액</strong><span></span></li>
							<li class="displaynone"><strong>부가세</strong><span>KRW
									0</span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none" onclick="OrderLayer.offDiv('order_layer_detail');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기"></a>
					</div>
				</div>
				<!-- 총 할인금액 상세내역 레이어 -->
				<div id="" class="totalDetail">
					<h3>총 할인금액 상세내역</h3>
					<div class="content">
						<p id="mTotalBenefitPrice">KRW 0</p>
						<ul>
							<li class="displaynone"><strong>기간할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>회원할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>재구매할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>대량구매할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>바로가기(링콘)할인</strong><span
								id="">KRW </span></li>
							<li class="displaynone"><strong>어바웃pbp할인</strong><span id="">KRW
							</span></li>
							<li class="displaynone"><strong>신규상품할인</strong><span id="">KRW
									0</span></li>
							<li class="displaynone"><strong>결제수단할인</strong><span id="">KRW
							</span></li>
							<li class="displaynone"><strong>회원등급할인</strong><span id="">KRW
									0</span></li>
						</ul>
					</div>
					<div class="close">
						<a href="#none"
							onclick="OrderLayer.offDiv('order_layer_benefit');"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close.png"
							alt="닫기"></a>
					</div>
				</div>
			</div>
			<!-- 주문 버튼 -->
			<div class="xans-element- xans-order xans-order-totalorder">
				<a href="#none" onclick="Basket.orderSelectBasket(this)"
					link-order="/order/orderform.html?basket_type=all_buy"
					link-login="/member/login.html" class="">선택상품주문</a> <a href="#none"
					onclick="Basket.orderAll(this)"
					link-order="/order/orderform.html?basket_type=all_buy"
					link-login="/member/login.html" class=" ">전체상품주문</a><span
					class="right"> <a href="/">쇼핑계속하기</a>
				</span>
				<!-- 네이버 체크아웃 구매 버튼  -->
				<div id="NaverChk_Button"></div>
			</div>
		</div>
		<!-- //장바구니 모듈 Package -->

		<!-- 관심상품 목록 -->
		<div
			class="xans-element- xans-myshop xans-myshop-wishlist displaynone xans-record-">
			<!--
        $login_page = /member/login.html
        $count = 5
        $mode = basket
    -->
			<div class="title">
				<h3>관심상품</h3>
			</div>
			<table border="1" summary="">
				<caption>관심상품 목록</caption>
				<thead>
					<tr>
						<th scope="col" class="thumb">이미지</th>
						<th scope="col" class="product">상품정보</th>
						<th scope="col" class="price">판매가</th>
						<th scope="col" class="mileage">적립금</th>
						<th scope="col" class="delivery">배송구분</th>
						<th scope="col" class="charge">배송비</th>
						<th scope="col" class="total">합계</th>
						<th scope="col" class="button">선택</th>
					</tr>
				</thead>
			</table>
			<p class="empty ">관심상품 내역이 없습니다.</p>
		</div>


		<!-- 이용안내 -->
		<div class="xans-element- xans-order xans-order-basketguide help ">
			<div class="content">
				<h4>장바구니 이용안내</h4>
				<ul>
					<li class="item1">- 해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로
						결제해 주시기 바랍니다.</li>
					<li class="item2">- 해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로
						이동하여 결제하실 수 있습니다.</li>
					<li class="item3">- 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면
						됩니다.</li>
					<li class="item4">- [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
					<li class="item5">- 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로
						등록하실 수 있습니다.</li>
					<li class="item6">- 파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로
						교체됩니다.</li>
				</ul>
				<h4>무이자할부 이용안내</h4>
				<ul>
					<li class="item1">- 상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기]
						버튼을 눌러 주문/결제 하시면 됩니다.</li>
					<li class="item2">- [전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에
						대한 주문/결제가 이루어집니다.</li>
					<li class="item3">- 단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수
						없습니다.</li>
				</ul>
			</div>
		</div>
		<script>
fbq('track', 'AddToCart' );
</script>


	</div>
</div>
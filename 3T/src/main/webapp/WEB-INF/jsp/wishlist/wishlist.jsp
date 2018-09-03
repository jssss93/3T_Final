<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%> --%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
      $("#addOrderSelected").on("click", function(e) {
         e.preventDefault();
         fn_addOrderSelected();
      });
      $("#addOrderAll").on("click", function(e) { 
         e.preventDefault();
         checkAll2();
         fn_addOrderAll();
      });

      $("#addOrderOne").on("click", function(e) { 
         e.preventDefault();
         fn_addOrderAll();
      });
      $("#deleteOne").on("click", function(e) { 
         e.preventDefault();
         fn_Write();
      });
      
   });
   
   function fn_addOrderSelected() {
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/order/addSelected' />");
      comSubmit.submit();
   }
   function fn_addOrderAll() {
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/cart/Add/OnetoPayment' />");
      comSubmit.submit();
   }
   function fn_addOrderOne() {
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/cart/Add/OnetoPayment' />");
      comSubmit.submit();
   }
   function fn_deleteOne() {
      var comSubmit = new ComSubmit("frm");
      comSubmit.setUrl("<c:url value='/cart/deleteOne' />");

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
      
      console.log("price:"+price);
      console.log("totPrice:"+totprice);
      
        if($(tagName).is(":checked")){
          
             sum += totprice;
             
             if(sum>50000){
                delivery=0;
             }else{
                delivery=3000;
             }
             totalSum = sum + delivery;
              
             $("#totalPrice").html(comma(sum)+" KRW");
             $("#delivery").html(comma(delivery)+" KRW");
             $("#totalSum").html(comma(totalSum)+" KRW");
          $("#totalPrice2").html(comma(sum)+" KRW");
             $("#delivery2").html(comma(delivery)+" KRW");
             $("#totalSum2").html(comma(totalSum)+" KRW");
             
      }else{
         
          sum -=  totprice;
          
          if(sum>50000){
             delivery=0;
             }else{
                delivery=3000;
             }
          
            totalSum = sum + delivery;
                
                $("#totalPrice").html(comma(sum)+" KRW");
                $("#delivery").html(comma(delivery)+" KRW");
                $("#totalSum").html(comma(totalSum)+" KRW");
                $("#totalPrice2").html(comma(sum)+" KRW");
                $("#delivery2").html(comma(delivery)+" KRW");
                $("#totalSum2").html(comma(totalSum)+" KRW");
      } 
   };
   
   //체크박스 다중 선택
   var chkCount = $("input[type=checkbox]").length ;
   
   function checkAll(){    
      console.log("checkAll실행");
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
   
   function checkAll2(){    
      
      for(i=0;i<$("input[type=checkbox]").length-1;i++){
         if($("#checkbox"+i).is(":checked")){
         }
         else{
            $("#checkbox"+i).prop("checked",true);
            checkedRows(i); 
         }
      }
   }
   
   
   
   
   
   
</script>

<link rel="stylesheet" type="text/css"
   href="/ind-script/optimizer.php?filename=tZXBTgQhDIbvO159jromm6xXT3ozvkEHOgPZQgmF6L69s64HzcTEjHCkab_Cz08BJ4Fgf58hZZkzBsikUrMhMKowZYkFjIQg8WYJ3MJf8snsVLgWL3E3yvvGwlrK1qaMZ8rbSguOTL-UYkrwKJgtvH6HrOQhM1SlrOD88Xh32B8g1ZG9GVwJDGppsKR-jqAnHx8-GUFsZQLJljKMqCcqL2hOOFNDrjXPcZImwHBWJwnevDr2WnowE84-ztvJiwmklouY3jS5pxXwGvjf2afFgAMyN9zWYudlQatX0IpbfQdoEeHiUweyI-6BXYaCrab0IF-Mj4V6qIxjB-pqVDcD__g8GorAPcRdskyTQfjVYarMajJRbElVwmzcE6G9DocP&amp;type=css&amp;k=82e471e6421823158bbbaa252eb0adb8eb11482d&amp;t=1508869165">
<link rel="stylesheet" type="text/css"
   href="/ind-script/optimizer.php?filename=tdLNDcIwDAXgAcKVOQyHSmUExgiJ86MmdhQnoG5PywzmbL1Psp8hcUVAZ6ZgF0h5XW_LfYE2XyU7k0YtIB6NR8mRQLZMD3AiUNnPglDsznNA4ciD2-WYXEGHdHZg5L5rmi-23T8psCaa0HrsmqKMY_fzpCH8hSVNteeYhqlIU1P1_CFt89e-KVlGs26zEc2iyQfmofsHjul95DNTc6f7BQ&amp;type=css&amp;k=9a3cb7872486b57aea4134bfe28a5541c53ed81d&amp;t=1499901149">


<meta name="path_role" content="ORDER_BASKET">
<meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="keywords"
   content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디">
<script
   src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534724800800&amp;cv=9&amp;fst=1534724800800&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fasclo.com%2Forder%2Fbasket.html%3Fdelvtype%3DA&amp;ref=http%3A%2F%2Fasclo.com%2Fproduct%2Fdetail.html%3Fproduct_no%3D8171%26cate_no%3D1%26display_group%3D2&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4">
   
</script>
<title>CART</title>
<link href="<c:url value='/resources/css/cartTest.css'/>" rel="stylesheet" type="text/css" />
<style type="text/css">
#contentwrap {
    position: relative;
    float: left;
    width: 100%;
    /* height: 100%; */
}
</style>
</head>
<body>

	<form id="frm">
		<div id="contentwrap">
			<div id="contents">
				<div class="titleArea">
					<h2>WISH</h2>

				</div>

				<div class="xans-element- xans-order xans-order-basketpackage ">
					<div class="xans-element- xans-order xans-order-tabinfo ">
						<ul>
							<li class=" "><a href="/3T/cart/list">				CART LIST</a></li>
							<li class=" selected"><a href="/3T/wish/wishlist">	WISH LIST</a></li>
							<li class=" "><a href="/3T/order/list">				ORDER LIST</a></li>
						</ul>
						<p >*위시리스트 입니다.</p>
					</div>
					<!-- 장바구니 비어있을 때 -->
					<!-- 일반상품 -->
					<div class="orderListArea">
						<div class="xans-element- xans-order xans-order-normtitle title ">

							<c:if test="${MEMBER_ID!=null }">
								<h3>${session.MEMBER_ID } 님의 WISHLIST 목록</h3>
							</c:if>
							<c:if test="${MEMBER_ID==null }">
								<h3>${memberInfo.MEMBER_ID } 님의 WISHLIST 목록</h3>
							</c:if>

						</div>

						<!-- 일반상품 (기본배송) -->
						<table border="1" summary=""
							class="xans-element- xans-order xans-order-normnormal boardList xans-record-">

							<thead>
								<tr>
									<th scope="col" class="chk"><input type="checkbox"
										id="chkBox" onclick=checkAll()></th>
									<th scope="col" class="thumb">IMAGE</th>
									<th scope="col" class="product">PRODUCT INFO</th>
									<th scope="col" class="price">PRICE</th>
									<th scope="col" class="delivery">배송구분</th>
									<th scope="col" class="charge">배송비</th>
									<th scope="col" class="button">select</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td colspan="10"><strong class="type">[기본배송]</strong>
										상품구매금액 <strong id="totalPrice">0 KRW </strong> + 배송비 <strong
										id="delivery">3000 KRW </strong> -상품할인금액 0 <strong
										id="discount">0 KRW </strong> = 합계 : <strong id="totalSum">0
											KRW </strong></td>
								</tr>
							</tfoot>
							<tbody class="xans-element- xans-order xans-order-list">
								<c:choose>
									<c:when test="${fn:length(wishlist) > 0}">
										<c:forEach items="${wishlist }" var="row" varStatus="stat">

											<tr class="xans-record-">

												<td>
													<input type="checkbox" id="checkbox${stat.index}" name="CART_NO" id="CART_NO" value="${row.CART_NO}"
													onclick="javascript:checkedRows(${stat.index});">
												</td>
												<td class="thumb">
													<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
														<img width="50" height="50"	src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
													</a>
												</td>  
												<td class="product">
													<a href="/3T/goods/detail?GOODS_NO=${row.GOODS_NO }">
													<strong>${row.NAME }</strong> </a>
													<ul class="xans-element- xans-order xans-order-optionall option">
														<li class="xans-record-">
															[옵션: ${row.COLOR }/${row.GOODS_SIZE }] 
														</li>
													</ul></td>
												<td><span class="price" value="${row.PRICE}">${row.PRICE}</span></td>
												<td class="delivery">기본배송</td>
												<td><span class="">무료<br></span></td>
												<td class="button">
												
													<c:url var="deleteOne" value="/cart/deleteOne">
														<c:param name="CART_NO" value="${row.CART_NO }" />
													</c:url>
													
													<%-- <c:url var="addOne" value="/order/addOne"> --%>
													<c:url var="addOne" value="/cart/Add/OnetoPayment">
														<c:param name="CART_NO" value="${row.CART_NO }" />
														<c:param name="ATTRIBUTE_NO" value="${row.ATTRIBUTE_NO}" />
														<c:param name="GOODS_NO" value="${row.GOODS_NO }" />
														<c:param name="COUNT" value="${row.COUNT}" />
													</c:url>
													<a href="${addOne }" >
													<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order.gif" alt="주문하기"></a> 
													<a href="javascript:;" onclick="BasketNew.moveWish(0);">
													<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif" alt="관심상품등록"></a> 
													<c:if test="${memberInfo.MEMBER_ID!=null }">
														<a href="${deleteOne }" >
														<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete.gif" alt="삭제"></a>
													</c:if>
													<c:if test="${memberInfo.MEMBER_ID==null }">
														<a href="${deleteOne }" >
														<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete.gif" alt="삭제"></a>
													</c:if>
													
												</td>

											</tr>

										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="4">조회된 결과가 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<!-- 일반상품 (업체기본배송) -->
						<!-- 일반상품 (개별배송) -->
						<!-- 일반상품 (해외배송) -->
					</div>

					<div
						class="xans-element- xans-order xans-order-basketpriceinfoguide  ">
						<p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
					</div>

					<!-- 선택상품 제어 버튼 -->
					<div class="xans-element- xans-order xans-order-selectorder ">
						<span class="left"> <strong class="ctrlTxt">선택상품을</strong>
							<a href="#none" onclick="Basket.deleteBasket()"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_delete2.gif"
								alt="삭제하기"></a> <a href="#none" onclick="Basket.addWishList()"
							class="displaynone"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_wish.gif"
								alt="관심상품등록"></a> <a href="#none"
							onclick="Basket.moveOversea()" class=""><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_foreign.gif"
								alt="해외배송상품 장바구니로 이동"></a> <a href="#none"
							onclick="Basket.hopeProduct(''); return false;"
							class="displaynone"><img
								src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_product.gif"
								alt="상품조르기"></a>
						</span> <a href="#none" onclick="Basket.emptyBasket()"><img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/order/btn_clear.gif"
							alt="장바구니비우기"></a> <a href="#none"
							onclick="Basket.estimatePrint(this)"
							link="/estimate/userform.html"><img
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
								<col style="width: auto;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><span>총 상품금액</span></th>
									<th scope="col">총 배송비</th>
									<th scope="col">결제예정금액</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong id="totalPrice2">0 KRW</strong></td>
									<td><strong>+</strong><strong id="delivery2">3,000
											KRW</strong></td>
									<td class="discount displaynone">
										<div class="box">
											<strong>-</strong><strong>0</strong>
										</div>
									</td>
									<td><strong>=</strong><strong id="totalSum2">0
											KRW</strong></td>
								</tr>
							</tbody>
						</table>

					</div>

					<!-- 주문 버튼 -->
					<div class="xans-element- xans-order xans-order-totalorder">
						<a href="#this" id="addOrderSelected">선택상품주문</a> <a href="#this#"
							id="addOrderAll">전체상품주문</a> <span class="right"> <a
							href="/">쇼핑계속하기</a>
						</span>
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
				<script>
	fbq('track', 'AddToCart' );
	</script>
			</div>
		</div>
</form>

</body>
</html>
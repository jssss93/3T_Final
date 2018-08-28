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

<script type="text/javascript">

	$( document ).ready(function() {
		$('#dataTables-example').rowspan(0);
	}); 
	
	$.fn.rowspan = function(colIdx, isStats) {       
		return this.each(function(){      
			var that;     
			$('tr', this).each(function(row) {      
				$('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
					
					if ($(this).html() == $(that).html()
						&& (!isStats 
								|| isStats && $(this).prev().html() == $(that).prev().html()
								)
						) {            
						rowspan = $(that).attr("rowspan") || 1;
						rowspan = Number(rowspan)+1;

						$(that).attr("rowspan",rowspan);
						
						// do your action for the colspan cell here            
						$(this).hide();
						
						//$(this).remove(); 
						// do your action for the old cell here
						
					} else {            
						that = this;         
					}          
					
					// set the that if not already set
					that = (that == null) ? this : that;      
				});     
			});    
		});  
	}; 
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

<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tZXBTgQhDIbvO159jromm6xXT3ozvkEHOgPZQgmF6L69s64HzcTEjHCkab_Cz08BJ4Fgf58hZZkzBsikUrMhMKowZYkFjIQg8WYJ3MJf8snsVLgWL3E3yvvGwlrK1qaMZ8rbSguOTL-UYkrwKJgtvH6HrOQhM1SlrOD88Xh32B8g1ZG9GVwJDGppsKR-jqAnHx8-GUFsZQLJljKMqCcqL2hOOFNDrjXPcZImwHBWJwnevDr2WnowE84-ztvJiwmklouY3jS5pxXwGvjf2afFgAMyN9zWYudlQatX0IpbfQdoEeHiUweyI-6BXYaCrab0IF-Mj4V6qIxjB-pqVDcD__g8GorAPcRdskyTQfjVYarMajJRbElVwmzcE6G9DocP&amp;type=css&amp;k=82e471e6421823158bbbaa252eb0adb8eb11482d&amp;t=1508869165">
<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tdLNDcIwDAXgAcKVOQyHSmUExgiJ86MmdhQnoG5PywzmbL1Psp8hcUVAZ6ZgF0h5XW_LfYE2XyU7k0YtIB6NR8mRQLZMD3AiUNnPglDsznNA4ciD2-WYXEGHdHZg5L5rmi-23T8psCaa0HrsmqKMY_fzpCH8hSVNteeYhqlIU1P1_CFt89e-KVlGs26zEc2iyQfmofsHjul95DNTc6f7BQ&amp;type=css&amp;k=9a3cb7872486b57aea4134bfe28a5541c53ed81d&amp;t=1499901149">

<meta name="path_role" content="ORDER_BASKET">
<meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="keywords"
	content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디">
<script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534724800800&amp;cv=9&amp;fst=1534724800800&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fasclo.com%2Forder%2Fbasket.html%3Fdelvtype%3DA&amp;ref=http%3A%2F%2Fasclo.com%2Fproduct%2Fdetail.html%3Fproduct_no%3D8171%26cate_no%3D1%26display_group%3D2&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4">
	
</script>
<title>ORDER_LIST</title>
<link href="<c:url value='/resources/css/cartTest.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="frm">
		<div id="contentwrap">
			<div id="contents">
				<div class="titleArea">
					<h2>ORDER</h2>
				</div>
				<div class="xans-element- xans-order xans-order-basketpackage ">
					<div class="xans-element- xans-order xans-order-tabinfo ">
						<ul>
							<li class=""><a href="/3T/cart/list">CART LIST</a></li>
							<li class="selected "><a href="/3T/order/list">ORDER LIST</a></li>
						</ul>
						<p >총 구매금액에 따라 등급이 정해집니다.</p>
					</div>
					
					<div class="orderListArea">
						<div class="xans-element- xans-order xans-order-normtitle title ">
							<h3>${MEMBER_ID } 회원님의 주문 목록</h3>
							<br>
						</div>
						<table border="1" summary="" class="xans-element- xans-order xans-order-normnormal boardList xans-record-" id="dataTables-example">

							<thead>
								<tr>
									<th scope="col" class="thumb">ORDER NO.</th>
									<th scope="col" class="thumb">IMAGE</th>
									<th scope="col" class="product">PRODUCT INFO</th>
									<th scope="col" class="price">PRICE</th>
									<th scope="col" class="quantity">QUANTITY</th>
									<th scope="col" class="mileage">state</th>
									<th scope="col" class="delivery">배송구분</th>
									<th scope="col" class="charge">배송비</th>
									<th scope="col" class="total">total</th>
									
								</tr> 
							</thead>
							<tfoot>
								<tr>
									<td colspan="10">
										총 구매 금액 넣자 <strong id="totalPrice">0 KRW </strong> + 총 구매 금액 넣자 <strong
										id="delivery">3000 KRW </strong> -총 구매 금액 넣자 <strong
										id="discount">0 KRW </strong> = 합계 : <strong id="totalSum">0
											KRW </strong></td>
								</tr>
							</tfoot>
							<tbody class="xans-element- xans-order xans-order-list">
								<c:choose>
									<c:when test="${fn:length(list) > 0}">
										<c:forEach items="${list }" var="row" varStatus="stat">

											<tr class="xans-record-">
												<td>
													${row.ORDER_NO }
												</td>
												<td class="thumb">
													<a href="/product/detail.html?product_no=8171&amp;cate_no=1">
														<img width="50" height="50"
														src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" />
													</a>
												</td>  
												<td class="product">
													<a href="/product/detail.html?product_no=8171&amp;cate_no=1">
													<strong>${row.NAME }</strong> </a>
													<ul class="xans-element- xans-order xans-order-optionall option">
														<li class="xans-record-">
															[옵션: ${row.COLOR }/${row.GOODS_SIZE }] 
														</li>
													</ul>
												</td> 
												<td>
													<span class="price" value="${row.PRICE}">${row.PRICE} </span>
												</td> 
												<td>
													<strong>${row.COUNT }</strong>
												</td>
												<td class="mileage">c:if 문으로 상태 지정 해줄거</td>
												<td class="delivery">기본배송</td>
												<td><span class="totprice" value="${row.PRICE*row.COUNT}">${row.PRICE*row.COUNT}</span></td>
												<td class="total"><strong>${row.PRICE * row.COUNT }</strong></td>
												
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
					</div>
    			</div>
			</div>
		</div>
	</form>

</body>
</html>
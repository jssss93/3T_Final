<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
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
<!--[if lte IE 8]>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:200" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:400" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:500" />
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Lato:700" />
<![endif]-->
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
<!--[if IE]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
<!-- Facebook Pixel Code -->

<link rel="canonical" href="http://asclo.com/product/search.html">
<link rel="alternate" href="http://m.asclo.com/product/search.html">
<meta property="og:url" content="http://asclo.com/product/search.html">
<meta property="og:site_name" content="애즈클로">
<meta property="og:type" content="website">
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico">
<meta http-equiv="ImageToolbar" content="No">
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>


<style type="text/css">

</style>
</head>

<body>
	
		<div id="headerwrap"></div>

		<div id="contentwrap">

			<div id="contents">


				<div class="titleArea">
					<h2>search</h2>
				</div>

				<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
				<form id="searchForm" name="" action="/3T/goods/search" method="get" enctype="multipart/form-data">
					
					<div class="xans-element- xans-search xans-search-form ">
						<div class="searchbox">
							<fieldset>
								<legend>상품 검색</legend>
								<div class="item">
									<strong>CATEGORY</strong> <select id="CATEGORY" name="CATEGORY">
										<option value="" selected="selected">상품분류 선택</option>
										<option value="OUTER">OUTER</option>
										<option value="SUIT">SUIT</option>
										<option value="TOP">TOP</option>
										<option value="SHIRT">SHIRT</option>
										<option value="KNIT">KNIT</option>
										<option value="BOTTOM">BOTTOM</option>
										<option value="SHOES">SHOES</option>
										<option value="ACC">ACC</option>
									</select>
								</div>
								<div class="item">
									<strong>condition</strong> <select id="search_type" name="search_type">
										<option value="product_name" selected="selected">상품명</option>
									</select> 
									<input id="keyword" name="keyword" class="inputTypeText" placeholder="" size="15" value="<%=request.getParameter("keyword") %>" type="text">
								</div>
								
								<div class="item">
									<strong>PRICE</strong> 
									<input id="PRICE1" name="PRICE1"  class="input01" placeholder="" size="15" value="<%=request.getParameter("PRICE1") %>" type="text">
									 ~ 
									<input id="PRICE2" name="PRICE2"  class="input01" placeholder="" size="15" value="<%=request.getParameter("PRICE2") %>" type="text">
								</div>
								<!--
								<div class="item">
									<strong>Sort by</strong> <select id="order_by" name="order_by"
										fw-filter="" fw-label="검색정렬기준" fw-msg="">
										<option value="" selected="selected">::: 기준선택 :::</option>
										<option value="recent">신상품 순</option>
										<option value="name">상품명순</option>
										<option value="priceasc">낮은가격 순</option>
										<option value="price">높은가격 순</option>
										<option value="review">사용후기 순</option>
									</select>
								</div> -->
								<p class="button">
								
									<input type="image" src="/images/btn_search2.gif" alt="검색">
									<ul class="xans-element- xans-search xans-search-orderby listType">
									<input type="submit" id="NAME" name="NAME" value="NAME"> 
									<input type="submit" id="RowPrice" name="RowPrice" value="RowPrice">
									<input type="submit" id="HighPrice" name="HighPrice" value="HighPrice">		
									</ul>			
										</p>
							</fieldset>
						</div>
						<%-- <div class="searchResult">
							<p class="record">
								showing all <strong>${CNT}${search.CNT}</strong> items
							</p>
							<ul
								class="xans-element- xans-search xans-search-orderby listType">
								
								<!-- <li class="xans-record-"><a href="/3T/goods/search2">
									<input type="image"  alt="new">
								</a></li>
								<li class="xans-record-"><a href="">name</a></li>
								<li class="xans-record-"><a href="">low price</a></li>
								<li class="xans-record-"><a href="">high price</a></li>
								<li class="xans-record-"><a href="">brand</a></li> -->
							</ul>
						</div> --%>
					</div>
				</form>
				<!-- //참고 -->

				
				<div class="xans-element- xans-search xans-search-result">
					<!--
        $count = 40
    -->				<table cellspacing="10" cellpadding="10">
					<ul class="prdList column4">
				
					
					<tr>
						<c:choose>
									<c:when test="${fn:length(searchlist) > 0 }">
						<c:forEach items = "${searchlist}" var="search" varStatus="stat">
						<c:if test="${stat.index%4==0}">
							<tr></tr>
						</c:if>
						<td>
						<li id="anchorBoxId_7009" class="item xans-record-">
							<div class="box">
								<p class="prdImg">
								
									<a
										href="/product/detail.html?product_no=7009&amp;cate_no=60&amp;display_group=1"
										name="anchorBoxName_7009"><img id="myImg"
							src="/3T/resources/upload/${search.IMAGE.split(',')[0] }"
							width="350" height="450"></a> 
										<!-- <span
										class="wishIcon"><img
										src="/web/upload/icon_201808241610117600.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="7009" categoryno="1" icon_status="off"
										login_status="F" individual-set="F"></span> -->
								</p>

								<div class="status">
									
									
								</div>
								<p class="name">
									<a
										href="/product/detail.html?product_no=7009&amp;cate_no=60&amp;display_group=1"
										class=""> 
										<span style="font-size: 12px; color: #000000;">${search.NAME }</span></a>
								</p>
								<ul class="xans-element- xans-search xans-search-listitem">
									<li class=" xans-record-">
									<span style="font-size: 12px; color: #000000;">KRW ${search.PRICE}</span><span
										id="span_product_tax_type_text" style=""> </span></li>
								</ul>
							</div>
						</li>
						</td>
						</c:forEach>
						</c:when>
								<c:otherwise>
								<!--  검색된 상품이 없을때 -->
									
										<tr><td colspan="11" style="text-align:center;">검색된 상품이 없습니다</td></tr>
									
								</c:otherwise>
							</c:choose>
						</tr>
						
					</ul>
					</table>
				</div>

				

			</div>
		</div>

<script type="text/javascript">
function SearchCategory() {
	var f = document.frm;
	var ATTRIBUTE_NO = $(".ATTRIBUTE_NO2").eq(index).attr("value");
	console.log(ATTRIBUTE_NO);
	var GOODS_NO = f.GOODS_NO.value;
	  $.ajax({
	        url: "/3T/admin/goods/deleteAttribute",
	        type:"POST", 
	        data: ({
	        	CATEGORY : CATEGORY
	        	}),
	        success: function (){
	       
	        },
	        error: function() {
	            alert("error");
	        }
	    });
	
  }


</script>
</body>
</html>
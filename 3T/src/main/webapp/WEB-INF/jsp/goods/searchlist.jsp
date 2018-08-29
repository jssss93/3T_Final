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
<!-- <script async="" src="//www.google-analytics.com/analytics.js"></script> -->
<!-- <script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script> -->
<!-- <script
	src="https://connect.facebook.net/signals/config/829030643890604?v=2.8.25&amp;r=stable"
	async=""></script> -->
<!-- <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script> -->
<!-- <script src="/js/jquery.gray.js"></script> -->
<!--gray IE 용-->
<!-- <script type="text/javascript" src="/ec-js/common.js"></script> -->
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<!-- <script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery.als-1.6.min.js"></script> -->
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
<!-- <script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script> -->


<style type="text/css">

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div id="headerwrap"></div>

		<div id="contentwrap">

			<div id="contents">
			
				<div class="xans-element- xans-search xans-search-result">
					<!--
        $count = 40
    -->				<table cellspacing="10" cellpadding="10">
	
				
					
					<tr>
						<c:choose>
									<c:when test="${fn:length(searchlist) > 0 }">
						<c:forEach items = "${searchlist}" var="search" varStatus="stat">
						<c:if test="${stat.index%4==0}">
							<tr></tr>
						</c:if>
						<td>
							<div class="box" >
								<p class="prdImg">
								
									<a
										href="/product/detail.html?product_no=7009&amp;cate_no=60&amp;display_group=1"
										name="anchorBoxName_7009"><img id="myImg"
							src="/3T/resources/upload/${search.IMAGE.split(',')[0] }"
							width="320" height="370"></a> 
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
						</td>
						</c:forEach>
						</c:when>
								<c:otherwise>
								<!--  검색된 상품이 없을때 -->
									
										<tr><td colspan="11" style="text-align:center;">검색된 상품이 없습니다</td></tr>
									
								</c:otherwise>
							</c:choose>
						</tr>
						

					</table>
				</div>
			</div>
		</div>
</body>
</html>
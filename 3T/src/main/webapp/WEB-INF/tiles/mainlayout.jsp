<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#Left_layer_fixed {
    /* display: none !important; */
    float:right;
    right:0px;
    width:140px;
    top: 0px;
	height: 80%;
	z-index: 9;
	width: 12%;
	color: #555;
	font-size: 18px;
	position: fixed;
	left: 0px;
	-webkit-box-shadow: 0 1px 2px 0 #777;
 	box-shadow: 0 1px 2px 0 #777;
	background-color: white;
	opacity: 0.5;
}


#Left_layer_fixed ul{
font-family: FontAwesome;
    list-style:none;
}

/* #Left_layer_fixed ul li{
    background-color: white;
    border:1px solid #fff;

} */



#Right_layer_fixed {
	height: 100%;
	width: 6%;
	color: #555;
	font-size: 12px;
	position: fixed;
	z-index: 999;
	top: 0px;
	right: 0px;
	-webkit-box-shadow: 0 1px 2px 0 #777;
	box-shadow: 0 1px 2px 0 #777;
	background-color: white;
	opacity: 0.5;
}
</style>
</head>
<body>



	<div id="header" style="margin: 0 auto; height: 500">
		<tiles:insertAttribute name="header" ignore="true" />
	</div>

	<div style="width: 1900px; margin: 0 auto;">
		<div id="body" align="center">
			<tiles:insertAttribute name="body" ignore="true" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" ignore="true" />
		</div>
	</div>
	
	
	<!--  왼쪽 메뉴 고정 바 -->
	<div id="Left_layer_fixed">
		<table cellspacing="0" cellpadding="0"
			style="width: 100%; height: 100%;">
			<tr>
				<div id="left" >
					<h1 class="xans-element- xans-layout xans-layout-logotop ">
						<a href="/index.html"><img
							src="/3T/src/main/webapp/resources/images/3T.JPG"></a>
					</h1>

					<!--로그인메뉴-->


					<div class="left_login">
						<div class="xans-element- xans-layout xans-layout-statelogoff ">
							<a href="/3T/member/login" class="log">login</a> / 
							<a href="/3T/member/joinStep1">join</a>
							<br> 
							<a href="/3T/myshop/order/list.html">order</a> /
							<a href="/3T/myshop/index.html">mypage</a>
						</div>


					</div>
					<!-- //left_login -->




					<div>
						<div id="category"
							class="xans-element- xans-layout xans-layout-category">
							<div class="position">
								<ul>
									<li class="xans-record-"><a
										href="/3T/goods/catelist">OUTER</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=213">SUIT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=57">TOP</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=58">SHIRT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=190">KNIT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=59">BOTTOM</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=194">SHOES</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=60">ACC</a></li>
								</ul>
							</div>
						</div>

						<div class="xans-element- xans-layout xans-layout-boardinfo">
							<ul>
								<li class="xans-record-"><a
									href="/3T/notice/list">NOTICE</a></li>
								<li class="xans-record-"><a
									href="/3T/faq/list">FAQ</a></li>
								<li class="xans-record-"><a
									href="/3T/qa/list">Q&amp;A</a></li>
								<li class="xans-record-"><a
									href="/3T/review/list">REVIEW</a></li>
							</ul>
						</div>
					</div>

				</div>
			</tr>
		</table>
	</div>
	
	
	<!-- 오른쪽 메뉴 고정 바 -->
	<div id="Right_layer_fixed">
		<table cellspacing="0" cellpadding="0"
			style="width: 100%; height: 100%;">
			<tr>
				<td
					style="vertical-align: middle; padding-left: 20px; padding-right: 20px; top: 0px;">
					오른쪽 고정 메뉴바</td>
			</tr>
		</table>
	</div>


</body>
</html>
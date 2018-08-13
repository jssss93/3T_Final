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
	top: 0px;
	height: 100%;
	z-index: 9;
	width: 15%;
	color: #000000;
	font-size: 12px;
	position: fixed;
   /*  -webkit-box-shadow: 0 1px 2px 0 #777;
	box-shadow: 0 1px 2px 0 #777;   */
	background-color: rgba(255, 255, 255, 0.5);
	-ms-filter:alpha(opacity=0.5);
        filter:alpha(opacity=0.5);
/* 	opacity: 0.5; */
	padding: 40px 0 0 30px;
	/* font-weight: bold; */
	/* letter-spacing: 5px; 글자간격 */
	/* word-spacing: 3px; 단어간격*/
	line-height: 50%;
	font-weight: bold;
}

#Left_layer_fixed ul {
	list-style: none;
}

#Left_layer_fixed div.left_login {
	font-style: normal;
	font-variant-ligatures: normal;
	font-variant-caps: normal;
	font-variant-numeric: normal;
	font-variant-east-asian: normal;
	font-weight: normal;
	font-stretch: normal;
	font-size: 12px;
	line-height: normal;
	font-family: 맑은 고딕;
	font-weight: bold;
	padding: 40px 0 0 40px;
	line-height: 200%;
	color: #000000;
	
}

#Left_layer_fixed a.left_image {
	max-width:167px;
	width:auto;
	height:auto;
	text-align:left;
	margin:0 0 0 50px;	
}

#Left_layer_fixed li {
	font-style: normal;
	font-variant-ligatures: normal;
	font-variant-caps: normal;
	font-variant-numeric: normal;
	font-variant-east-asian: normal;
	font-weight: normal;
	font-stretch: normal;
	font-size: 14px;
	line-height: normal;
	font-family: 맑은 고딕;
	font-weight: bold;
	color: #000000;
}
#Right_layer_fixed {
	height: 100%;
	width: 15%;
	color: #000000;
	font-size: 12px;
	position: fixed;
	z-index: 9;
	top: 0px;
	right: 0px;
	/*     -webkit-box-shadow: 0 1px 2px 0 #777;
	box-shadow: 0 1px 2px 0 #777;  */
	background-color: rgba(255, 255, 255, 0.5);
	-ms-filter:alpha(opacity=0.5);
        filter:alpha(opacity=0.5);
/* 	opacity: 0.5; */
	padding: 0px 0 0 30px;
	font-weight: bold;
}

#Right_layer_fixed ul {
list-style: none;
}

#Right_layer_fixed a {
font-variant-ligatures: normal;
	font-variant-caps: normal;
	font-variant-numeric: normal;
	font-variant-east-asian: normal;
	font-weight: normal;
	font-stretch: normal;
	font-size: 14px;
	line-height: normal;
	font-family: 맑은 고딕;
	font-weight: bold;
	color: #000000;
}

#Right_layer_fixed li {
font-variant-ligatures: normal;
	font-variant-caps: normal;
	font-variant-numeric: normal;
	font-variant-east-asian: normal;
	font-weight: normal;
	font-stretch: normal;
	font-size: 16px;
	line-height: normal;
	font-family: 맑은 고딕;
	padding: 0px 0 0 0px;
	font-weight: bold;
	color: #000000;
}

</style>
</head>
<body>



	<div id="header" style="margin: 0 auto; height: 500">
		<tiles:insertAttribute name="header" ignore="true" />
	</div>

	<div style="width: 100%; margin: 0 auto;">
		<div id="body">
			<tiles:insertAttribute name="body" ignore="true" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" ignore="true" />
		</div>
	</div>


	<!--  왼쪽 메뉴 고정 바 -->
	<div id="Left_layer_fixed">
		<table cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;">
			<tr>
				<br>
				<div id="left">
					<h1 class="left_image">
						<a href="\3T\main"><img src="\main\webapp\resources\images\3T.JPG"></a>
					</h1>
					<br>

					<!--로그인메뉴-->


					<div class="left_login">
						<div class="xans-element- xans-layout xans-layout-statelogoff ">
							<a href="/3T/member/login" class="log">LOGIN</a> /
							<a href="/3T/member/joinStep1">JOIN</a> <br> <a
								href="/3T/myshop/order/list.html">ORDER</a> / <a
								href="/3T/myshop/index.html">MYPAGE</a> <br>
						</div>


					</div>
					<br><br><br><br>
					<!-- //left_login -->




					<div>
						<div id="category"
							class="xans-element- xans-layout xans-layout-category">
							<div class="position">
								<ul>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=56">OUTER</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=213">SUIT</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=57">TOP</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=58">SHIRT</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=190">KNIT</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=59">BOTTOM</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=194">SHOES</a></li><br>
									<li class="xans-record-"><a
										href="/3T/goods/list?cate_no=60">ACC</a></li>
								</ul>
							</div>
						</div>

						<br><br><br><br>

						<div class="xans-element- xans-layout xans-layout-boardinfo">
							<ul>
								<li class="xans-record-"><a href="/3T/notice/list">NOTICE</a></li><br>
								<li class="xans-record-"><a href="/3T/faq/list">FAQ</a></li><br>
								<li class="xans-record-"><a href="/3T/qa/list">Q&amp;A</a></li><br>
								<li class="xans-record-"><a href="/3T/review/list">REVIEW</a></li><br>
							</ul>
						</div>
					</div>

				</div>
			</tr>
		</table>
	</div>


	<!-- 오른쪽 메뉴 고정 바 -->
	<div id="Right_layer_fixed">
	<br><br><br><br><br><br><br><br><br><br>
		<table cellspacing="0" cellpadding="0" style="width: 100%; height: 100%;">
			<tr >
				<td
					style="vertical-align: left; padding-left: 20px; padding-right: 20px; top: 0px;">
				</td>
			</tr>
			<!-- <div class="fullscreen_menu_button">
            <a class="btn-open" href="#"><img src="\3T\src\main\webapp\resources\images\search_btn.png"></a>
           </div> -->
			
			<ul>
				<li class="cart_menu"><a href="/3T/basket/list"
					class="xans-element- xans-layout xans-layout-orderbasketcount ">CART
						<span> 0 </span>
				</a></li>
			</ul>
			<ul>
				<li class="bookmark"><a
					onclick="try{window.external.AddFavorite('https://www.asclo.com','ASCLO - エズクロ')} catch(e){alert('이용하시는 브라우져에서는 Ctrl 키와 D 키를 동시에 눌러서 즐겨찾기에 추가할 수 있습니다.')}; return false;">BOOKMARK</a></li>
                </a></li>

				<br><br>
			</ul>
			<!--다운메뉴-->
			<div class="downmenu">
				<ul>
					<li class="dep1"><a>CS CENTER<i class="fa fa-angle-down"
							aria-hidden="true"></i></a>
						<ul class="hide hideblock">
							<li><strong
								class="xans-element- xans-layout xans-layout-footer ">070-4477-9922</strong>
								<br> mon-fri 10am-4:30pm<br> lunch : 12:30-13:30<br>
								sat, sun, holiday off<br>
							<br> 예금주 : 서지우(애즈클로)<br> 국민 437201-04-192634<br>
							<br> 반품배송비 전용계좌<br> 국민 352601-01-336244<br></li>
						</ul></li>
						<br>
					<li class="dep1"><a>NOTICE <i class="fa fa-angle-down"
							aria-hidden="true"></i></a>
						<ul class="hide">
							<li>
								<!-- 공지사항 -->
								<div
									class="xans-element- xans-board xans-board-listpackage-1 xans-board-listpackage xans-board-1 ">
									<table border="1" summary="" class="mainborad">
										<caption>공지사항</caption>
										<tbody
											class="xans-element- xans-board xans-board-list-1 xans-board-list xans-board-1">
											<!--
                                    $count = 3              
                                    $subject_cut = 14
                                    $main_list = yes
                                    $main_list_reply_view = no
                                -->
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=248265&amp;board_no=1">교환
														및 반품과정 안내</a></td>
											</tr>
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=243324&amp;board_no=1">타상품
														교환 및 묶음배...</a></td>
											</tr>
											<tr class="xans-record-">
												<td class="title"><a
													href="/board/free/read.html?no=243323&amp;board_no=1">수제화
														관련해서 안내드...</a></td>
											</tr>
										</tbody>
									</table>
								</div> <!-- // 공지사항 -->
							</li>
						</ul></li>
				</ul>
			</div>



			<ul class="right_sns">
				<li><a href="http://blog.naver.com/asclohi" target="_blank"><img
						src="/web/upload/designfixy/images/sns_b.png"></a></li>
				<li><a href="https://www.instagram.com/hi880515/"
					target="_blank"><img
						src="/web/upload/designfixy/images/sns_i.png"></a></li>
				<li><a href="https://www.facebook.com/asclocom" target="_blank"><img
						src="/web/upload/designfixy/images/sns_f.png"></a></li>
				<li><a href="http://pf.kakao.com/_muhjE" target="_blank"><img
						src="/web/upload/designfixy/images/sns_k.png"></a></li>
			</ul>
			</div>
			</div>

		</table>
	</div>


</body>
</html>
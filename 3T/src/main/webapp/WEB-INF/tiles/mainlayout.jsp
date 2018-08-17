<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
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



	<div id="header" style="margin: 0 auto; height: 880">
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
							<c:if test="${sessionScope.MEMBER_ID == null}">
								<a href="/3T/member/loginForm" class="log">login</a> / 
							</c:if>
							<c:if test="${sessionScope.MEMBER_ID != null}">
								<a href="/3T/member/logout" class="log">logout</a> / 
							</c:if>
							<a href="/3T/member/joinStep1">join</a>
							<br> 
							<a href="/3T/csstest/csstest">order</a> /
							<a href="/3T/mypage/mypage">mypage</a>
						</div>


					</div>
					<!-- //left_login -->




					<div>
						<div id="category"
							class="xans-element- xans-layout xans-layout-category">
							<div class="position">
								<ul>
									<c:url var="OUTER" value="/goods/catelist">
										<c:param name="CATEGORY" value="OUTER" />
									</c:url>
									
									<li class="xans-record-"><a href="/3T/goods/catelist?CATEGORY=OUTER">OUTER</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=SUIT">SUIT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=TOP">TOP</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=SHIRT">SHIRT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=KNIT">KNIT</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=BOTTOM">BOTTOM</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=SHOES">SHOES</a></li>
									<li class="xans-record-"><a
										href="/3T/goods/catelist?CATEGORY=ACC">ACC</a></li>
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
			<tr>
			<td>
			<button type="button" id="moveupBtn">맨위로</button>
			<button type="button" id="movedownBtn">아래로</button>
			</td>
			</tr>
		</table>
	</div>
<script type="text/javascript">
      $(document).ready(function(){
        $("#moveupBtn").on("click",function(event){
          // 이동 버튼을 클릭시 태그로 스크롤의 위치가 이동되도록 한다.
 
          // 1. 태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
          var offset = $("#header").offset();
 
          // offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
          // position은 부모를 기준으로한 상대위치를 가져온다.
          $("html body").animate({scrollTop:offset.top},0);
 
        });
        
        $("#movedownBtn").on("click",function(event){
            // 이동 버튼을 클릭시 태그로 스크롤의 위치가 이동되도록 한다.
   
            // 1. 태그의 위치를 가지고 있는 객체를 얻어온다. => offset 객체
            var offset = $("#footer").offset();
   
            // offset은 절대 위치를 가져온다. offset.top을 통해 상단의 좌표를 가져온다.
            // position은 부모를 기준으로한 상대위치를 가져온다.
            $("html body").animate({scrollTop:offset.top},0);
   
          });
      }); // end of ready()
    </script>
</body>
</html>
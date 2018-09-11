<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String cp = request.getContextPath();
%>

<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>MODA 관리자페이지</title>
<link href="<%=cp%>/resources/admincss/bootstrapadmin.min.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="<%=cp%>/resources/admincss/sb-admin-2.css" rel="stylesheet">
<!-- jQuery -->

<script src="<%=cp%>/resources/admincss/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<%=cp%>/resources/admincss/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<%=cp%>/resources/admincss/sb-admin-2.js"></script>

<style type="text/css">
@media ( min-width :768px) {
	#page-wrapper {
		margin: 0 0 0 250px !important;
	}
}
.navbar-brand strong {
    margin-right: 5px;
    color: #fbfafa;
    font-weight: bold;
    font-family: 'Lato', 'NanumGothic';
    font-size: 18px;
}
.nav a {
    position: relative;
    display: block;
    padding: 10px 15px;
    text-align: left;
    color: #337ab7e8!important;
}
</style>
</head>
<body>
	<div id="wrapper"  >
		<!-- Navigation -->
		
		
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="  margin-bottom: 0; background-color: #337AB7">
			<div class="navbar-header" style="background-color: #337AB7">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: #fff;" href="/3T/admin/main"><strong>3T 관리자페이지</strong></a>
			</div>
			
			
			
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li>
							<a href="/3T/admin/main" style="background: #e7e7e7; border-bottom: 1px solid #F8F8F8;">
								<b class="fa fa-dashboard fa-fw">관리자홈</b>
							</a>
						</li>
						<li>
							<a href="/3T/main" style="background: #e7e7e7; border-bottom: 1px solid #F8F8F8;">
								<b class="fa fa-dashboard fa-fw">쇼핑몰로 이동</b>
							</a>
						</li>
						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">상품관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/goods/list">- 상품목록</a></li>
								<li><a href="/3T/admin/goods/write">- 상품등록</a></li>
							</ul>
						</li>
						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-dashboard fa-fw">회원관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/member/list">- 회원목록</a></li>
								<li><a href="/3T/admin/member/message">- 메시지목록</a></li>
							</ul> <!-- /.nav-second-level -->
						</li>
						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">메출관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/order/chartBasic">- 매출그래프</a></li>
							</ul>
						</li>

						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">주문관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/order/orderlist">- 주문목록</a></li>
								<li><a href="/3T/admin/order/changelist">- 교환목록</a></li>
								<li><a href="/3T/admin/order/refundlist">- 환불목록</a></li>
							</ul>
						</li>
						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">게시판관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/notice/list">- NOTICE</a></li>
								<li><a href="/3T/admin/faq/list">- FAQ</a></li>
								<li><a href="/3T/admin/review/list">- REVIEW</a></li>
								<li><a href="/3T/admin/qa/list">- Q&A</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
				
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		
	</div>
	
	 
	<div id="page-wrapper" >
		<tiles:insertAttribute name="body" />
	</div>
	
	
</body>
</html>
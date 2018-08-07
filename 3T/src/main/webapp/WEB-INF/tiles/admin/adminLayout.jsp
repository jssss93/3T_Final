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
<title>MODA 관리자페이지</title>

</head>
<body>
	<div id="wrapper" >
		<!-- Navigation -->
		
		
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="  margin-bottom: 0; background-color: #337AB7">
			<div class="navbar-header" style="background-color: #337AB7">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: #fff;" href="/3T/admin/main"><strong>MODA 관리자페이지</strong></a>
			</div>
			<!-- /.navbar-header -->
			
			
			
			<div class="navbar-default sidebar">
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
							</ul> <!-- /.nav-second-level -->
						</li>

						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">주문관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/order/list">- 주문목록</a></li>
								<li><a href="/3T/admin/refund/list">- 주문취소목록</a></li>
								<li><a href="/3T/admin/change/list">- 교환/반품목록</a></li>
							</ul>
						</li>
						<li class="active">
							<a href="#" style="background: #e7e7e7;">
								<b class="fa fa-bar-chart-o fa-fw">게시판관리</b>
								<span class="fa arrow">▼</span>
							</a>
							<ul class="nav nav-second-level">
								<li><a href="/3T/admin/notice/list">- 공지사항</a></li>
								<li><a href="/3T/admin/review/list">- 구매후기</a></li>
								<li><a href="/3T/admin/faq/list">- FAQ</a></li>
								<li><a href="/3T/admin/qa/list">- Q&A</a></li>
							</ul>
						</li>
					</ul>
				</div>
				
				
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>
		
		<!-- /#page-wrapper -->
	</div>
	<div id="page-wrapper">
			<!-- 메인container-->
			<tiles:insertAttribute name="body" />
			<!-- // container -->
		</div>
	<!-- /#wrapper -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
<script type="text/javascript">
	function delchk() {
		return confirm("삭제하시겠습니까?");
	}
</script>
<style type="text/css">
.paging {
	text-align: center;
	height: 32px;
	margin-top: 5px;
	margin-bottom: 15px;
}

.paging a, .paging strong {
	display: inline-block;
	width: 36px;
	height: 32px;
	line-height: 28px;
	font-size: 14px;
	border: 1px solid #e0e0e0;
	margin-left: 5px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
	-moz-box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
	box-shadow: 1px 1px 1px 0px rgba(235, 235, 235, 1);
}

.paging a:first-child {
	margin-left: 0;
}

.paging strong {
	color: #fff;
	background: #337AB7;
	border: 1px solid #337AB7;
}

.paging .page_arw {
	font-size: 11px;
	line-height: 30px;
}
</style>
</head>
<div class="row" style="padding-left: 15px; width: 900px;">
	<h1 class="page-header">회원목록</h1>
</div>
<div class="row">
	<div class="panel panel-default">
		<div class="panel-heading">회원목록페이지 검색, 수정, 삭제 기능하는 페이지입니다. </div>
		<div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom: 5px;">
						<div class="col-sm-6">
						<a href="/MODA/member/adminMemberList">
                        <button type="button" class="btn btn-outline btn-default">전체</button>
                        </a>
						</div>
						<div class="col-sm-6" style="text-align: right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 회원수 : ${memberAll.MEMBERALL}</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-striped table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 4%; text-align: center;">번호</th>
										<th style="width: 8%; text-align: center;">아이디</th>
										<th style="width: 11%; text-align: center;">쿠폰</th>
										<th style="width: 7%; text-align: center;">이름</th>
										<th style="width: 10%; text-align: center;">생년월일</th>
										<th style="width: 9%; text-align: center;">전화번호</th>
										<th style="width: 14%; text-align: center;">이메일</th>
										<th style="width: 20%; text-align: center;">주소</th>
										<th style="width: 8%; text-align: center;">가입날짜</th>
										<th style="width: 8%; text-align: center;">수정,삭제</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach var="memberList" items="${memberList}" varStatus="stat">
										<c:url var="viewURL" value="/admin/member/Detail">
											<input type="hidden" id="MEMBER_ID" name="MEMBER_ID" value="${memberList.MEMBER_ID}">
											<c:param name="MEMBER_ID" value="${memberList.MEMBER_ID }" />
										</c:url>
										<tr class="gradeA even" role="row">
											<td style="text-align: center; vertical-align: middle;">${memberList.MEMBER_NO}</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.MEMBER_ID}
											
											</td>
											<td style="text-align: center; vertical-align: middle;">
												<form action="/3T/admin/GiftCoupon">
													<input type="text" id="CONTENT" name="CONTENT" placeholder="ex)숫자만입력" style="width: 130px; text-align: center;">
													<input type="submit" value="주기">
													<input type="hidden" id="MEMBER_ID" name="MEMBER_ID" value="${memberList.MEMBER_ID}">
												</form>
											</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.NAME}</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.BIRTH}</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.PHONE}</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.EMAIL}</td>
											<td style="text-align: center; vertical-align: middle;">${memberList.ADDR1}&nbsp;${memberList.ADDR2}</td>
											<td style="text-align: center; vertical-align: middle;"><fmt:formatDate value="${memberList.REGDATE}" pattern="yyyyMMdd" /></td>
											<td style="text-align: center; vertical-align: middle;">
												<a href="${viewURL}">
													<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Cog_font_awesome.svg/32px-Cog_font_awesome.svg.png">
												</a>&nbsp;&nbsp;
												<c:url var="viewURL2" value="/admin/member/adminDeleteMember">
													<c:param name="MEMBER_ID" value="${memberList.MEMBER_ID}" />
												</c:url> 
												<a href="${viewURL2}">
													<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"
														onclick="return delchk()">
												</a>
											</td>
										</tr>
									</c:forEach>
									<!-- 회원이 없을때 -->
									<c:if test="${fn:length(memberList) le 0}">
										<tr>
											<td colspan="9" style="text-align: center;">회원이 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<div align="center">
							<c:if test="${not empty paginationInfo}">
								<ui:pagination paginationInfo="${paginationInfo}" type="text"
									jsFunction="fn_search" />
							</c:if>
							<input type="hidden" id="currentPageNo" name="currentPageNo" />
							</div>
							<table class="notice_button">
							</table>
							<br />
							<form action="/3T/admin/member/list">
								<select name="SearchNum" id="SearchNum"
									style="width: 100px; height: 30px;">
									<option value="MEMBER_ID">아이디</option>
									<option value="NAME">이름</option>
								</select> <input type="text" name="SearchKeyword" id="SearchKeyword"
									style="margin-left: 15px; width: 200px; height: 36px; border-radius: 5px 5px 5px 5px;" />
								<input type="submit" value="검색">
							</form>


							<br />
						</div>
					</div>
					
				</div>
			</div>
			<!-- /.table-responsive -->
		</div>
	</div>
	<!-- /.panel -->
</div>
<%@ include file="/WEB-INF/include/include-body.jspf"%>
<script type="text/javascript">
function fn_search(pageNo) {
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/admin/member/list' />");
	comSubmit.addParam("currentPageNo", pageNo);
	comSubmit.submit();
}
</script>
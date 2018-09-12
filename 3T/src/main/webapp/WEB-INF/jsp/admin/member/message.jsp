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
.btn {
    width: 80px;
}
</style>
</head>
<div class="row" style="padding-left: 15px; width: 900px;">
	<h1 class="page-header">메세지 목록</h1>
</div>
<div class="row"> 
	<div class="panel panel-default" style="width:1000px;">
		<div class="panel-heading">회원으로부터 온 메세지를 확인,검색,답장하는 페이지입니다. </div>
		<div class="panel-body">
			<div class="dataTable_wrapper" >
				<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer" >
					<div class="row" style="margin-bottom: 5px;">
						<div class="col-sm-6">
						<a href="/3T/admin/member/message">
                        <button type="button" class="btn btn-outline btn-default">전체</button>
                        </a>
						</div>
						<div class="col-sm-6" style="text-align: right;">
							<div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">총 메세지수 : ${messageAll.MESSAGEALL}</div>
						</div>
					</div>
					<div class="row" >
						<div class="col-sm-12">
							<table class="table table-striped table-bordered table-hover dataTable no-footer"
								id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
								<thead>
									<tr role="row">
										<th style="width: 5%; text-align: center;">번호</th>
										<th style="width: 8%; text-align: center;">아이디</th>
										<th style="width: 20%; text-align: center;">내용</th>
										<th style="width: 8%; text-align: center;">보낸날짜</th>
										<th style="width: 8%; text-align: center;">state</th>
										<th style="width: 13%; text-align: center;">삭제</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach var="row" items="${list}" varStatus="stat">
										<c:url var="viewURL" value="/admin/member/Detail">
											<%-- <input type="hidden" id="MEMBER_ID" name="MEMBER_ID" value="${memberList.MEMBER_ID}"> --%>
											<c:param name="MESSAGE_NO" value="${row.MESSAGE_NO }" />
										</c:url>
										
										<tr class="gradeA even" role="row">
											<td style="text-align: center; vertical-align: middle;">${row.MESSAGE_NO}</td>
											<td style="text-align: center; vertical-align: middle;">${row.SENDMEMBER}</td>
											<td style="text-align: center; vertical-align: middle;">${row.CONTENT}
                        	                <form action="/3T/admin/member/messageWrite">
                        		                <input class="btn" type="submit" value="답장">
                       			                <input type="hidden" id="SENDMEMBER" name="SENDMEMBER" value="${row.SENDMEMBER}"/>
                        	                </form>
											</td>
											<td style="text-align: center; vertical-align: middle;"><fmt:formatDate value="${row.REGDATE}" pattern="yyyy.MM.dd" /></td>
											<td style="text-align: center; vertical-align: middle;">
												<c:if test="${row.STATE==0}"> 답변대기중</c:if>
												<c:if test="${row.STATE==1}"> 답변완료</c:if>
											</td>
											<td style="text-align: center; vertical-align: middle;">
												<c:url var="viewURL2" value="/admin/member/deleteMessage">
													<c:param name="MESSAGE_NO" value="${row.MESSAGE_NO}" />
												</c:url> 
												<a href="${viewURL2}">
													<input type="image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"
														onclick="return delchk()">
												</a>
											</td>
										</tr>
									</c:forEach>
									<!-- 회원이 없을때 -->
									<c:if test="${fn:length(list) le 0}">
										<tr>
											<td colspan="9" style="text-align: center;">메세지가 없습니다.</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<c:if test="${not empty paginationInfo}">
								<ui:pagination paginationInfo="${paginationInfo}" type="text"
									jsFunction="fn_search" />
							</c:if>
							<input type="hidden" id="currentPageNo" name="currentPageNo" />
							<table class="notice_button">
							</table>
							<br />
							<form action="/3T/admin/member/message">
								<select class="form-control" name="SearchNum" id="SearchNum">
									<option value="MEMBER_ID">아이디</option>
									<option value="NAME">이름</option>
								</select> <input class="form-control" type="text"
									name="SearchKeyword" id="SearchKeyword" /> <span>
									<button type="submit" class="btn btn-default">검색</button>
								</span>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<h2>FAQ 게시판 목록</h2>
	<table width="80%" border="0" cellspacing="0" cellpadding="2">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="center" class="text01 formbar"><h2>FAQ List.</h2></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table class="board_list">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">FAQ_NO</th>
				<th scope="col">MEMBER_ID</th>
				<th scope="col">TITLE</th>
				<th scope="col">CONTENT</th>
				<th scope="col">REGDATE</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.FAQ_NO }</td>
							<td>${row.MEMBER_ID }</td>
							<td><a href="#this" name="title">${row.TITLE }</a> <input
								type="hidden" id="FAQ_NO" value="${row.FAQ_NO }">
							</td>

							<td>${row.CONTENT }</td>
							<td>${row.REGDATE }</td>

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

	<c:if test="${not empty paginationInfo}">
		<ui:pagination paginationInfo="${paginationInfo}" type="text"
			jsFunction="fn_search" />
	</c:if>
	<input type="hidden" id="currentPageNo" name="currentPageNo" />


	<br />
	<a href="write" class="btn" >FAQ 작성</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) { //글쓰기 버튼
				e.preventDefault();
				fn_WriteForm();
			});

			$("a[name='title']").on("click", function(e) { //상세보기
				e.preventDefault();
				fn_Detail($(this));
			});
		});
	
		function fn_WriteForm() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/write' />");
			comSubmit.submit();
		}

		function fn_Detail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/detail' />");
			comSubmit.addParam("FAQ_NO", obj.parent().find("#FAQ_NO")
					.val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>


</head>
<body>
	<h2>공지사항 게시판 목록</h2>
	<table width="80%" border="0" cellspacing="0" cellpadding="2">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="center" class="text01 formbar"><h2>NOTICE List.</h2></td>
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
				<th scope="col">NO</th>
				<th scope="col">WRITER</th>
				<th scope="col">SUBJECT</th>
				<th scope="col">CONTENT</th>
				<th scope="col">REGDATE</th>
				<th scope="col">READCNT</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.NOTICE_NO }</td>
							<%-- <td><img
								src="/3T/resources/upload/${row.GOODS_FILE_SAVNAME.split(',')[0] }" />
							</td> --%>
							<td>${row.NOTICE_WRITER }</td>
							<td><a href="#this" name="title">${row.NOTICE_SUBJECT }</a> <input
								type="hidden" id="NOTICE_NO" value="${row.NOTICE_NO }">
							</td>

							<td>${row.NOTICE_CONTENT }</td>
							<td>${row.NOTICE_REGDATE }</td>
							<td>${row.NOTICE_READCNT }</td>

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
	<a href="#this" class="btn" id="write">공지사항 작성</a>

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
			comSubmit.setUrl("<c:url value='/notice/writeForm' />");
			comSubmit.submit();
		}

		function fn_Detail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/detail' />");
			comSubmit.addParam("NOTICE_NO", obj.parent().find("#NOTICE_NO")
					.val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>
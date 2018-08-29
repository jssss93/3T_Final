<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<style>
a:link{
    text-decoration: none;
    color: #656565;
    margin-right: 5px;
    color: #353535;
    /* font-weight: bold; */
    font-family: 'Lato', 'NanumGothic';
    font-size: 12px;
}
</style>

</head>
<body>
	<table width="70%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">FAQ</font><span> ㅣ </span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="80%" align="center" border="0" cellspacing="0"
		cellpadding="2" class="board_review3">
		<tr>
			<td valign="middle"><strong>NO</strong></td>
		</tr>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.FAQ_NO }</td>
							<td class="subject"><a href="#this" name="title">${row.TITLE }</a> <input
								type="hidden" id="FAQ_NO" value="${row.FAQ_NO }"></td>
							<td align="center">${row.MEMBER_ID }</td>
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

	<br>
	<table class="notice_button">
		<tr>
			<td><a href="write" class="btn">WRITE</a></td>
		</tr>
	</table>
	<br />
	<form action="/3T/faq/list">
		<select class="btn" name="SearchNum" id="SearchNum"
			style="width: 100px; height: 30px;">
			<option value="TITLE">제목</option>
			<option value="MEMBER_ID">작성자</option>
		</select> <input type="text" class="btn" name="SearchKeyword"
			id="SearchKeyword"
			style="margin-left: 15px; width: 200px; height: 36px; border-radius: 5px 5px 5px 5px;" />
		<input type="submit" class="btn" value="검색">
	</form>


	<br />

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
			comSubmit.addParam("FAQ_NO", obj.parent().find("#FAQ_NO").val());
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
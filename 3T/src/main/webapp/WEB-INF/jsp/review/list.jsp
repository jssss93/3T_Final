<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<style>
.board_review3 td {
    font-family: Lato;
    font-size: 11px;
    font-style: normal;
    font-weight: normal;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    vertical-align: middle;
    text-align: center;
    border-top: 1px solid rgb(204, 204, 204);
    padding: 10px 0px;
    border-bottom: 1px solid rgb(204, 204, 204);
}
</style>
</head>
<body>

	<table width="100%" align="center" border="0" cellspacing="1"
		cellpadding="1" class="board_top">
        <br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>

			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">REVIEW</font>
				</h6></td>

		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="100%" align="center" border="0" cellspacing="0"
		cellpadding="2" class="board_review3">
		<tr>
			<td valign="middle"><strong>NO</strong></td>
			<td valign="middle"><strong>ITEM</strong></td>
			<td valign="middle"><strong>TITLE</strong></td>
			<td valign="middle"><strong>NAME</strong></td>
			<td valign="middle"><strong>DATE</strong></td>
		</tr>


		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.REVIEW_NO }</td>
							<td align="center"><img width="50" height="50"
								src="/3T/resources/upload/${row.IMAGE.split(',')[0] }" /></td>

							<td><div>${row.NAME }</div> <br /> <a href="#this"
								name="title">${row.TITLE }</a> <input type="hidden"
								id="REVIEW_NO" value="${row.REVIEW_NO }"> <input
								type="hidden" id="GOODS_NO" value="${row.GOODS_NO }"></td>
							<td>${row.MEMBER_ID }</td>
							<%-- <td>${row.CONTENT }</td> --%>
							<td><fmt:formatDate value="${row.REGDATE }" pattern="yyyy.MM.dd" /></td>
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
	<br>
	<c:if test="${not empty paginationInfo}">
		<ui:pagination paginationInfo="${paginationInfo}" type="text"
			jsFunction="fn_search" />
	</c:if>
	<input type="hidden" id="currentPageNo" name="currentPageNo" />
	<!-- 상품 디테일에서 GOODS_NO 보내서 쓰기 -->
	<table class="notice_button">
		<tr>
			<td>
				<form action="/3T/review/writeForm">

					<input type="submit" class="btn btn-default" value="WRITE">
				</form>
			</td>
		</tr>
	</table>

	<br />
	<form action="/3T/review/list">
		<select name="SearchNum" class="btn" id="SearchNum"
			style="width: 100px; height: 30px;">
			<option value="MEMBER_ID">작성자</option>
			<option value="TITLE">제목</option>
			<option value="CONTENT">내용</option>

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
				fn_openBoardWrite();
			});

			$("a[name='title']").on("click", function(e) { //제목 
				e.preventDefault();
				fn_openBoardDetail($(this));
			});
		});

		function fn_openBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/writeForm' />");
			comSubmit.submit();
		}
		function fn_openBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/detail' />");
			comSubmit.addParam("REVIEW_NO", obj.parent().find("#REVIEW_NO")
					.val());
			comSubmit
					.addParam("GOODS_NO", obj.parent().find("#GOODS_NO").val());
			comSubmit.submit();
		}
		function fn_search(pageNo) {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/list' />");
			comSubmit.addParam("currentPageNo", pageNo);
			comSubmit.submit();
		}
	</script>
</body>
</html>
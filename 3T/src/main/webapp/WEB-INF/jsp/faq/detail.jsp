<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<table class="board_view">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />
		</colgroup>
		<caption>게시글 상세</caption>
		<tbody>
			<tr>
				<th scope="row">글 번호</th>
				<td>${Detail.FAQ_NO }</td>
			</tr>
			<tr>
				<th scope="row">작성시간</th>
				<td>${Detail.REGDATE }</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${Detail.TITLE }</td>
			</tr>
			<tr>
				<th scope="row">내용</th>
				<td colspan="4">${Detail.CONTENT }</td>
			</tr>
		</tbody>
	</table>

	<input type="hidden" id="FAQ_NO" value="${Detail.FAQ_NO}">

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#update").on("click", function(e) { //수정하기 버튼
				e.preventDefault();
				fn_UpdateForm();
			});
			$("#delete").on("click", function(e) { //삭제하기 버튼
				e.preventDefault();
				fn_Delete();
			});
		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/list' />");
			comSubmit.submit();
		}

		function fn_UpdateForm() {
			var FAQ_NO = "${Detail.FAQ_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/updateForm' />");
			comSubmit.addParam("FAQ_NO", FAQ_NO);
			comSubmit.submit();
		}

		function fn_Delete() {
			var FAQ_NO = "${Detail.FAQ_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/delete' />");
			comSubmit.addParam("FAQ_NO", FAQ_NO);
			comSubmit.submit();
		}
	</script>
</body>
</html>
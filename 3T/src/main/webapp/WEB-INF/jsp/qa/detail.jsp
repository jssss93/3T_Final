<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">Q&A</font>
				</h6></td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" height="120" class="board_img">
		<tr>
			<td align="center" width="120"><img width="100" height="100"
				src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" /></td>
			<td>${list.NAME }<br /> KRW&nbsp;${list.PRICE } <br /> <br />
				&nbsp;
				<form action="/3T/goods/detail">
					<input class="btn" type="submit" value="상품 상세보기▶"> <input
						type="hidden" id="GOODS_NO" name="GOODS_NO"
						value="${list.GOODS_NO }" />
				</form>
			</td>

		</tr>
	</table>
	<br>
	<table border="1" align="center" class="board_view2">
		<tbody>
			<tr class="board_title">
				<th scope="row">SUBJECT</th>
				<td>${map.TITLE }</td>
			</tr>
			<tr class="board_title">
				<th scope="row">NAME</th>
				<td>${map.MEMBER_ID }</td>

			</tr>
			<table class="board_content">
				<br>
				<br />
				<tr>
					<td align="center">${map.CONTENT }</td>
				</tr>
				</tbody>
			</table>
			<br>
			<br />

			<table class="notice_button">
				<tr>
					<td><a href="#this" class="btn" id="list">LIST</a> <a
						href="#this" class="btn" id="update">UPDATE</a> <a href="#this"
						class="btn" id="delete">DELETE</a> <a href="#this" class="btn"
						name="writeReply">REPLY</a> <input type="hidden" id="QA_NO"
						value="${map.QA_NO }"></td>
				</tr>
			</table>

			<%@ include file="/WEB-INF/include/include-body.jspf"%>
			<script type="text/javascript">
				$(document).ready(function() {
					$("#list").on("click", function(e) { //목록으로 버튼
						e.preventDefault();
						fn_openBoardList();
					});

					$("#update").on("click", function(e) {
						e.preventDefault();
						fn_openBoardUpdate();
					});
					$("#delete").on("click", function(e) { //삭제하기 버튼
						e.preventDefault();
						fn_Delete();
					});
					$("a[name='writeReply']").on("click", function(e) {
						e.preventDefault();
						fn_WriteReply();

					});
				});

				function fn_openBoardList() {
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/qa/list' />");
					comSubmit.submit();
				}

				function fn_openBoardUpdate() {

					var comSubmit = new ComSubmit();
					comSubmit.addParam("QA_NO", $("#QA_NO").val());
					comSubmit.addParam("GOODS_NO", $("#GOODS_NO").val());
					comSubmit.setUrl("<c:url value='/qa/updateForm' />");

					comSubmit.submit();
				}

				function fn_Delete() {
					var comSubmit = new ComSubmit();
					comSubmit.addParam("REF", $("#QA_NO").val());
					comSubmit.setUrl("<c:url value='/qa/delete' />");
					comSubmit.submit();
				}
				function fn_WriteReply() {
					var comSubmit = new ComSubmit();
					comSubmit.addParam("QA_NO", $("#QA_NO").val());
					comSubmit.setUrl("<c:url value='/qa/writeReplyForm' />");
					comSubmit.submit();
				}
			</script>
</body>
</html>
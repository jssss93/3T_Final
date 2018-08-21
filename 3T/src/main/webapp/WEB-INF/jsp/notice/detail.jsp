<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style type="text/css">
@
board_view CONTENT {
	align-center: text-align: center;
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
					<font color="#000000">NOTICE</font><span><p>ㅣ 3T의
							공지사항입니다 :) 확인해주세요</p></span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table border="1" align="center" class="board_notice">
		<tbody>
			<tr class="board_title">
				<th scope="row">SUBJECT</th>
				<td>${Detail.TITLE }</td>
			</tr>
			<tr class="board_title">
				<th scope="row">NAME</th>
				<td>${Detail.MEMBER_ID }</td>
			</tr>
			<table class="board_content">
				<br>
				<br />
				<tr>
					<td align="center">${Detail.CONTENT }</td>
				</tr>
			</table>
		</tbody>
	</table>
	<br>
	<br />

	<input type="hidden" id="NOTICE_NO" name="NOTICE_NO"
		value="${Detail.NOTICE_NO}">

	<table class="notice_button">

		<tr>
			<td><a href="#this" class="btn" id="list">LIST</a> <a
				href="#this" class="btn" id="update">UPDATE</a> <a href="#this"
				class="btn" id="delete">DELETE</a></td>
		</tr>
	</table>

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
			comSubmit.setUrl("<c:url value='/notice/list' />");
			comSubmit.submit();
		}

		function fn_UpdateForm() {
			var NOTICE_NO = "${Detail.NOTICE_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/updateForm' />");
			comSubmit.addParam("NOTICE_NO", NOTICE_NO);
			comSubmit.submit();
		}

		function fn_Delete() {
			var NOTICE_NO = "${Detail.NOTICE_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/delete' />");
			comSubmit.addParam("NOTICE_NO", NOTICE_NO);
			comSubmit.submit();
		}
	</script>
</body>
</html>
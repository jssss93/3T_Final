<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
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
<body>
	<form id="frm">
		<table border="1" align="center" class="board_view2">

			<tbody>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>

				<tr class="board_title">
					<th scope="row">NAME</th>
					<td><input type="text" id="MEMBER_ID" name="MEMBER_ID"></input></td>
				</tr>

				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input type="text" id="PASSWD" name="PASSWD"></input></td>
				</tr>


				<tr>
					<td colspan="2" class="board_content2"><textarea rows="25"
							cols="248" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				<tr>
					<%-- <td> <input type="text" id="REF" name="REF" class="wdp_90" value="${REF.QA_NO }"></input></td> --%>
					<td><input type="hidden" id="REF" name="REF"
						value="${REF.QA_NO }"></td>
					<%-- <input type="hidden" id="GOODS_NO" name="GOODS_NO" value="${list.GOODS_NO }"> --%>
					<%--  <td><input type="hidden" id="QA_NO" name="QA_NO" value="${map.QA_NO }"></td> --%>
				</tr>
			</tbody>
		</table>

		<table class="notice_button">
			<tr>
				<td><a href="#this" class="btn" id="write">WRITE</a> <a
					href="#this" class="btn" id="list">LIST</a></td>
			</tr>
		</table>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/list' />");
			comSubmit.submit();
		}

		function fn_Write() {

			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/qa/writeReply' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>
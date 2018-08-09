<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>

<table width="60%" border="0" cellspacing="1" cellpadding="1">

		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">NOTICE UPDATE</font></h3></td>
		</tr>

		<tr>
			<td height="30"></td>
		</tr>
	</table>

	<form id="frm">
		<table class="board_view">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">NO</th>
					<td>${map.FAQ_NO }</td>
					</tr>
					<tr>
					<th scope="row">NAME</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr>
					<th scope="row">CREATION TIME</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr>
					<th scope="row">SUBJECT</th>
					<td colspan="3"><input type="text" id="TITLE" name="TITLE"
						class="wdp_90" value="${map.TITLE }" /></td>
				</tr>
				<table class="wdp_80">
				<br><br/>
				<tr>
					<td><input type="text" id="CONTENT" name="CONTENT"
						class="wdp_90" value="${map.CONTENT }" /></td>
				</tr>
				</table>

			</tbody>
		</table>
	</form>
	<br><br/>

	<input type="hidden" id="FAQ_NO" name="FAQ_NO" value="${map.FAQ_NO }">

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#update").on("click", function(e) { //저장하기 버튼
				e.preventDefault();
				fn_Update();
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

		function fn_Update() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/faq/update' />");
			comSubmit.addParam("FAQ_NO", $("#FAQ_NO").val());
			comSubmit.submit();
		}

		function fn_Delete() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/delete' />");
			comSubmit.addParam("FAQ_NO", $("#FAQ_NO").val());
			comSubmit.submit();

		}
	</script>
</body>
</html>
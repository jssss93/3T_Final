<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>

<table width="70%" align="center" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">
        <br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6><font color="#000000">FAQ</font><span> ㅣ </span></h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<form id="frm">
		<table border="1" align="center" class="board_view2">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<tbody>
				<tr class="board_title">
					<th scope="row">NO</th>
					<td>${map.FAQ_NO }</td>
					</tr>
			    <tr class="board_title">
					<th scope="row">NAME</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">CREATION TIME</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE"
						class="wdp_90" value="${map.TITLE }" /></td>
				</tr>
				<tr>
					<td colspan="4" class="board_content2">
					<textarea rows="25" cols="248" title="내용" id="CONTENT" name="CONTENT">${map.CONTENT }</textarea>
					</td>
				</tr>

			</tbody>
		</table>
	</form>
	<br><br/>

	<input type="hidden" id="FAQ_NO" name="FAQ_NO"
		value="${map.FAQ_NO }">
		
	<table class="notice_button">
    <tr>
	<td><a href="#this" class="btn" id="list">LIST</a>
	<a href="#this" class="btn" id="update">UPDATE</a>
	<a href="#this" class="btn" id="delete">DELETE</a></td>
	</tr>
	</table>

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
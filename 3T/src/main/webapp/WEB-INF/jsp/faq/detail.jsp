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
	
	<table border="1" align="center" class="board_notice">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />
		</colgroup>
		<tbody>
			<%-- <tr>
				<th scope="row">글 번호</th>
				<td>${Detail.FAQ_NO }</td>
			</tr>
			<tr>
				<th scope="row">작성시간</th>
				<td>${Detail.REGDATE }</td>
			</tr> --%>
			<tr class="board_title">
				<th scope="row">SUBJECT</th>
				<td colspan="3">${Detail.TITLE }</td>
			</tr>
			<tr class="board_title">
				<th scope="row">NAME</th>
				<td colspan="3">${Detail.MEMBER_ID }</td>
			</tr>
			<table class="board_content">
			<br><br/>
			<tr>
				<td style="text-align: center; ">${Detail.CONTENT }</td>
				<!-- style="text-align: center; -->
			</tr>
			</table>
		</tbody>
	</table>
<br><br/>
	<input type="hidden" id="FAQ_NO" name="FAQ_NO" value="${Detail.FAQ_NO}">
    
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
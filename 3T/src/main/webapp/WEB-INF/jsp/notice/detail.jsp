<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style type="text/css">
@board_view CONTENT{
align-center: text-align: center;

}

</style>

</head>
<body>
<table width="70%" align="center" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left"><h3><font color="#555555">NOTICE</font></h3><p>3T의 공지사항입니다 :) 확인해주세요!</p></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table align="center" class="board_view">
		<colgroup>
			<col width="15%" />
			<col width="35%" />
			<col width="15%" />
			<col width="35%" />
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">SUBJECT</th>
				<td colspan="3">${Detail.TITLE }</td>
			</tr>
			<tr>
				<th scope="row">NAME</th>
				<td colspan="3">${Detail.MEMBER_ID }</td>
			</tr>
			<table class="board_content">
			<br><br/>
			<tr>
				<td align="center">${Detail.CONTENT }</td>
				<!-- style="text-align: center; -->
			</tr>
			</table>
		</tbody>
	</table>
	<br><br/>
	
	<input type="hidden" id="NOTICE_NO" name="NOTICE_NO" value="${Detail.NOTICE_NO}">

    <table class="notice_button">
    
    <tr>
	<td><a href="#this" class="btn" id="list">list</a>
 	<a href="#this" class="btn" id="update">수정하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<style>
.form-control {
    display: block;
    width: 9%;
    height: 24px;
    text-align: center;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control2 {
    display: block!important;
    width: 11%!important;
    height: 24px!important;
    text-align: center!important;
    padding: 6px 12px!important;
    font-size: 14px!important;
    line-height: 1.42857143!important;
    color: #555!important;
    background-color: #fff!important;
    background-image: none!important;
    border: 1px solid #ccc!important;
    border-radius: 4px!important;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075)!important;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075)!important;
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s!important;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s!important;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s!important;
}
.notice_button td {
    padding: 15px 0 0 0px!important;
}
</style>
</head>
<div id="body" align="center" style="width: 100%;margin: 0px 0px 0 -130px;">
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
					<td><input class="form-control2" type="text" id="TITLE" name="TITLE"></input></td>
				</tr>

				<tr class="board_title">
					<th scope="row">NAME</th>
					<td><input class="form-control" type="text" id="MEMBER_ID" name="MEMBER_ID"></input></td>
				</tr>

				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input class="form-control" type="text" id="PASSWD" name="PASSWD"></input></td>
				</tr>


				<tr>
					<td colspan="2" class="board_content2"><textarea rows="25"
							cols="248" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				<tr>

					<td><input type="hidden" id="REF" name="REF"
						value="${REF.QA_NO }"></td>

				</tr>
			</tbody>
		</table>

		<table class="notice_button">
			<tr>
				<td><a href="#this" class="btn btn-default" id="write">WRITE</a> <a
					href="#this" class="btn btn-default" id="list">LIST</a></td>
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
</div>
</html>
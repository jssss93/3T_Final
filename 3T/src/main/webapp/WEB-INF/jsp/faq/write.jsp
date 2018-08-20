<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
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
		<table align="center" border="0"; style="width: 70%; height: 400px; display: block;" class="board_view2">
			<!-- <colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup> -->
			<tbody>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="board_content2">
						<textarea rows="20" cols="145" title="내용" id="CONTENT" name="CONTENT"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<br><br>
		<br><br>
		<br><br>
		
		<table class="notice_button">
		<tr>
		<td><a href="#this" class="btn" id="write">WRITE</a>
		<a href="#this" class="btn" id="list">LIST</a></td>
		</tr>
		</table>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_List();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
		});
		
		function fn_List(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/faq/list' />");
			comSubmit.submit();
		}
		
		function fn_Write(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/faq/write' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>
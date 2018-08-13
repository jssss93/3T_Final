<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>

<table width="70%" align="center" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">FAQ WRITE</font></h3></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<form id="frm">
		<table align="center" class="board_view">
			<!-- <colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup> -->
			<tbody>
				<tr>
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE" class="board_content2"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="board_content2">
						<textarea rows="20" cols="100" title="내용" id="CONTENT" name="CONTENT"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<!-- <input type="submit" value="작성하기!!!"> -->
		
		<table class="notice_button">
		<tr>
		<td><a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>

<form action="/3T/member/sendmessage">
	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#555555">MESSAGE</font>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>
	
		<table class="board_view6">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<!-- <th scope="row">메세지내용</th> -->
					<td colspan="2" class="view_text"><textarea rows="15"
							cols="100" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				
			</tbody>
		</table>
 
 <table class="notice_button">
 <tr>
 <td>
		<!-- <a href="#this" class="btn" id="write">작성하기</a>  -->
		<a href="#this"class="btn" id="list">목록으로</a>
			<input class="btn" type="submit" value="작성완료" >
			</td>
			</tr>
			</table>
		</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
</body>
</html>
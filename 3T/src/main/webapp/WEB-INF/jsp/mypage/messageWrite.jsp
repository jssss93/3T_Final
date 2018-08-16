<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>

<form action="/3T/mypage/sendmessage">
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center" class="text01 formbar"><h2>message</h2></td>
		</tr>
		<tr>
			<td height="20" colspan="2"></td>
		</tr>
	</table>
	
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">메세지내용</th>
					<td colspan="2" class="view_text"><textarea rows="10"
							cols="70" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				
			</tbody>
		</table>

		<!-- <a href="#this" class="btn" id="write">작성하기</a>  -->
		<a href="#this"class="btn" id="list">목록으로</a>
			<input type="submit" value="작성완료" >
		</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
</body>
</html>
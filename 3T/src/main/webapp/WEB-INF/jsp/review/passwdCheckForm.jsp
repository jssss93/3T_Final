<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
	<form action="/3T/review/commentDelete">
		<table width="100%" align="center" border="1" cellspacing="0"
			cellpadding="2" class="board_review3">
			<tr>
				<td width="100">댓글 작성시 비밀번호를 입력해주세요<br/><br/>
				password&nbsp;&nbsp; 
				<input type="text" id="PASSWD" name="PASSWD"></input> &nbsp;&nbsp; <input
					type="submit" value="확인"> <input type="hidden"
					id="REVIEW_NO" name="REVIEW_NO" value="${list.REVIEW_NO }">
					<input type="hidden" id="REVIEW_COMMENT_NO"
					name="REVIEW_COMMENT_NO" value="${list.REVIEW_COMMENT_NO }">
					<input type="hidden" id="GOODS_NO" name="GOODS_NO"
					value="${list.GOODS_NO }">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
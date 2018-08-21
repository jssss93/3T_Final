<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<h2>비밀번호 확인</h2>
	<form action="/3T/review/commentDelete">
		<table width="250" border="0" cellspacing="0" cellpadding="0">
			<tr bgcolor="#777777">
				<td height="1" colspan="2"></td>
			</tr>
			<tr>
				<td width="100">비밀번호 입력</td>
				<td width="150">&nbsp;&nbsp; <input type="text" id="PASSWD"
					name="PASSWD" class="wdp_90"></input> &nbsp;&nbsp; <input
					type="submit" value="확인"> <input type="hidden"
					id="REVIEW_NO" name="REVIEW_NO" value="${list.REVIEW_NO }">
					<input type="hidden" id="REVIEW_COMMENT_NO"
					name="REVIEW_COMMENT_NO" value="${list.REVIEW_COMMENT_NO }">
					<input type="hidden" id="GOODS_NO" name="GOODS_NO"
					value="${list.GOODS_NO }">
				</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="2"></td>
			</tr>
		</table>
	</form>
</body>
</html>
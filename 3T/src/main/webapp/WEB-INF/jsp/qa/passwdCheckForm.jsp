<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form action="/3T/qa/passwdCheckSuccess">
		<table width="100%" align="center" border="0" cellspacing="0"
			cellpadding="2" class="board_review3">
			<tr>
				<td width="100">비밀번호 입력</td>
				<td width="150">
					<%-- <td>${list.QA_NO }</td> --%> &nbsp;&nbsp; <input type="text"
					id="PASSWD" name="PASSWD" class="wdp_90"></input> &nbsp;&nbsp; <input
					type="submit" value="확인"> <input type="hidden" id="QA_NO"
					name="QA_NO" value="${list.QA_NO }">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
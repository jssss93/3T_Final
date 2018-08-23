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
	<form action="/3T/qa/passwdCheckSuccess">
		<table width="100%" align="center" border="" cellspacing="0"
			cellpadding="2" class="board_review3">
			<tr>
				<td width="100">이 글은 비밀글 입니다.<br/>
								비밀번호를 입력해 주세요.<br/>
												<br/>
					password &nbsp;&nbsp; <input type="text"
					id="PASSWD" name="PASSWD" ></input> &nbsp;&nbsp; <input
					 type="submit" value="확인"> <input type="hidden" id="QA_NO"
					name="QA_NO" value="${list.QA_NO }">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
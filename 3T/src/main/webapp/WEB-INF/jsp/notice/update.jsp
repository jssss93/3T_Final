<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>

<table width="70%" align="center" border="0" cellspacing="0" cellpadding="1" colspan="1" class="board_top">

		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h3><font color="#555555">NOTICE UPDATE</font></h3></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<form id="frm">
		<table align="center" class="board_view">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">NO</th>
					<td>${map.NOTICE_NO }</td>
				</tr>
					<tr>
					<th scope="row">NAME</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr>
					<th scope="row">CREATION TIME</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr>
			    	<th scope="row">SUBJECT</th>
                    <td colspan="3">
                        <input type="text" id="TITLE" name="TITLE" class="wdp_90" value="${map.TITLE}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENT" name="CONTENT">${map.CONTENT }</textarea>
                    </td>
                </tr>

			</tbody>
		</table>
		<input type="hidden" id="NOTICE_NO" name="NOTICE_NO" value="${map.NOTICE_NO}">
	</form>
	<br><br/>

	 <table class="notice_button">
    
	
    
    <tr>
	<td><a href="#this" class="btn" id="list">list</a>
 	<a href="#this" class="btn" id="update">저장하기</a>
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

			$("#update").on("click", function(e) { //저장하기 버튼
				e.preventDefault();
				fn_Update();
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

		function fn_Update() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/notice/update' />");
			comSubmit.submit();
		}

		function fn_Delete() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/notice/delete' />");
			comSubmit.submit();

		}
	</script>
</body>
</html>
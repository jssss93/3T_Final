<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
<script type="text/javascript">
	
		function check() {
			var f = document.Reg_form; 
			
			if (f.TITLE.value == "") {
				alert("제목을 입력해주십시오");
				f.TITLE.focus();
				return false;
			}
			if (f.CONTENT.value == "") {
				alert("내용을 입력해주십시오");
				f.CONTENT.focus();
				return false;
			}
			
		}
	</script>

	<form action="/3T/review/update" id="frm" name="Reg_form" onsubmit="return check()">
		<table class="board_view2">

			<caption>게시글 상세</caption>
			<tbody>
				<tr>
					<th scope="row">글 번호</th>
					<td>${map.REVIEW_NO } <input type="hidden" id="REVIEW_NO"
						name="REVIEW_NO" value="${map.REVIEW_NO}"> <input
						type="hidden" id="GOODS_NO" name="GOODS_NO"
						value="${map.GOODS_NO }">
					</td>
					
				</tr>
				<tr class="board_title">
					<th scope="row">NAME</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">DATE</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE"
						class="board_title" value="${map.TITLE}" /></td>
				</tr>
				<tr>
					<td colspan="4" class="board_content2"><textarea rows="25"
							cols="248" title="내용" id="CONTENT" name="CONTENT">${map.CONTENT }</textarea>
					</td>
				</tr>
			</tbody>
		</table>
	
	<br>

	<table class="notice_button">
		<tr>
			<td>
			 <a	href="#this" class="btn" id="list">LIST</a> <a href="#this"
				class="btn" id="update">UPDATE</a> <a href="#this" class="btn"
				id="delete">DELETE</a>
				<input type="submit" class="btn" value="수정">
			</td>
		</tr>
	</table>
</form>
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		/* var gfv_count = '${fn:length(list)+1}';  */
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});

			$("#update").on("click", function(e) { //저장하기 버튼
				e.preventDefault();
				fn_updateBoard();
			});

			$("#delete").on("click", function(e) { //삭제하기 버튼
				e.preventDefault();
				fn_deleteBoard();
			});

		});

		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/list' />");
			comSubmit.submit();
		}

		function fn_updateBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/review/update' />");
			comSubmit.submit();
		}

		function fn_deleteBoard() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/delete' />");
			comSubmit.addParam("REVIEW_NO", $("#REVIEW_NO").val());
			comSubmit.submit();

		}
	</script>

</body>
</html>
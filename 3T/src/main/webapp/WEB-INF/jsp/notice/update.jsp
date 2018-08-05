<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form id="frm">
		<table class="board_view">
			<colgroup>
				<col width="15%" />
				<col width="35%" />
				<col width="15%" />
				<col width="35%" />
			</colgroup>
			<caption>게시글 상세</caption>
			<tbody>
				<tr>
					<th scope="row">글 번호</th>
					<td>${map.NOTICE_NO }</td>
					<th scope="row">조회수</th>
					<td>${map.NOTICE_READCNT }</td>
				</tr>
				<tr>
					<th scope="row">상태</th>
					<td>${map.NOTICE_STATE }</td>
					<th scope="row">작성시간</th>
					<td>${map.NOTICE_REGDATE }</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3"><input type="text" id="NOTICE_SUBJECT" name="NOTICE_SUBJECT"
						class="wdp_90" value="${map.NOTICE_SUBJECT }" /></td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td colspan="4"><input type="text" id="NOTICE_CONTENT" name="NOTICE_CONTENT"
						class="wdp_90" value="${map.NOTICE_CONTENT }" /></td>
				</tr>

			</tbody>
		</table>
	</form>

	<input type="hidden" id="NOTICE_NO" name="NOTICE_NO"
		value="${map.NOTICE_NO }">

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>

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
			//특이점 파라미터를 Jquery 로 받았네
			comSubmit.addParam("NOTICE_NO", $("#NOTICE_NO").val());
			comSubmit.submit();

		}
	</script>
</body>
</html>
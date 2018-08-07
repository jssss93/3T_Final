<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
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
				<td>${Detail.GOODS_NO }</td>
				<th scope="row">조회수</th>
				<td>${Detail.GOODS_READCNT }</td>
			</tr>
			<tr>
				<th scope="row">색상</th>
				<td>${Detail.GOODS_COLOR }</td>
				<th scope="row">작성시간</th>
				<td>${Detail.GOODS_REGDATE }</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${Detail.GOODS_NAME }</td>
			</tr>
			<tr>
				<th scope="row">첨부파일</th>
				<td colspan="3">
                    <c:forEach var="row" items="${list }">
                        <input type="hidden" id="FILE_NO" name="FILE_NO" value="${row.FILE_NO }">
                        <a href="#this" name="file">${row.FILE_ORG_NAME }</a>
                        (${row.FILE_SIZE }kb)
                    </c:forEach>
                </td>
			</tr>
			
			<tr>
				<th scope="row">이미지</th>
				<td >
					<c:forEach var="row" items="${list }">
						<img width="50" height="50" src="/3T/resources/images/${row.FILE_SAV_NAME }" />
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th scope="row">내용</th>
				<td colspan="4">${Detail.GOODS_CONTENT }</td>
			</tr>
		</tbody>
	</table>

	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#update").on("click", function(e) { //수정하기 버튼
				e.preventDefault();
				fn_UpdateForm();
			});
			
			$("a[name='file']").on("click", function(e){ //파일 이름
	            e.preventDefault();
	            fn_downloadFile($(this));
	        });

		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/list' />");
			comSubmit.submit();
		}

		function fn_UpdateForm() {
			var goods_no = "${Detail.GOODS_NO}";
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/updateForm' />");
			comSubmit.addParam("GOODS_NO", goods_no);
			comSubmit.submit();
		}
		function fn_downloadFile(obj){
	        var file_no = obj.parent().find("#FILE_NO").val();
	        var comSubmit = new ComSubmit();
	        comSubmit.setUrl("<c:url value='/common/downloadFile' />");
	        comSubmit.addParam("FILE_NO", file_no);
	        comSubmit.submit();
	    }

	</script>
</body>
</html>
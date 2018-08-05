<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<form id="frm"  name="frm" enctype="multipart/form-data">
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
					<td>${map.GOODS_NO } <input type="hidden" id="GOODS_NO"
						name="GOODS_NO" value="${map.GOODS_NO }">
					</td>
					<th scope="row">조회수</th>
					<td>${map.GOODS_READCNT }</td>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td><input type="text" id="GOODS_NAME" name="GOODS_NAME" class="wdp_90"
						value="${map.GOODS_NAME }" /></td>
					<th scope="row">작성시간</th>
					<td>${map.GOODS_REGDATE }</td>
				</tr>
				<tr>
					<th scope="row">첨부파일</th>
					<td colspan="3">
						<div id="fileDiv">
							<c:forEach var="row" items="${list }" varStatus="var">
								<p>
									<input type="hidden" id="IDX" name="IDX_${var.index }"
										value="${row.IDX }"> <a href="#this"
										id="name_${var.index }" name="name_${var.index }">${row.ORIGINAL_FILE_NAME }</a>
									<input type="file" id="file_${var.index }"
										name="file_${var.index }"> (${row.FILE_SIZE }kb) <a
										href="#this" class="btn" id="delete_${var.index }"
										name="delete_${var.index }">삭제</a>
								</p>
							</c:forEach>
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td colspan="3"><input type="text" id="TITLE" name="GOODS_CONTENT"
						class="wdp_90" value="${map.GOODS_CONTENT }" /></td>
				</tr>

			</tbody>
		</table>
	</form>

	<a href="#this" class="btn" id="addFile">파일 추가</a>
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
			
			$("#addFile").on("click", function(e) { //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});

			$("a[name^='delete']").on("click", function(e) { //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});

		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/list' />");
			comSubmit.submit();
		}

		function fn_Update() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/goods/update' />");
			comSubmit.submit();
		}

		function fn_Delete() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/delete' />");
			//특이점 파라미터를 Jquery 로 받았네
			comSubmit.addParam("GOODS_NO", $("#GOODS_NO").val());
			comSubmit.submit();
		}
		function fn_addFile(){
            var str = "<p>" +
                    "<input type='file' id='file_"+(gfv_count)+"' name='file_"+(gfv_count)+"'>"+
                    "<a href='#this' class='btn' id='delete_"+(gfv_count)+"' name='delete_"+(gfv_count)+"'>삭제</a>" +
                "</p>";
            $("#fileDiv").append(str);
            $("#delete_"+(gfv_count++)).on("click", function(e){ //삭제 버튼
                e.preventDefault();
                fn_deleteFile($(this));
            });
        }         
        function fn_deleteFile(obj){
            obj.parent().remove();
        }
	</script>
</body>
</html>
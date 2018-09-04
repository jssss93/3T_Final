<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>


<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<script src="<c:url value='/summernote/summernote.js'/>" charset="utf-8"></script>
<script src="<c:url value='/summernote/summernote-ko-KR.js'/>" charset="utf-8"></script>
<style type="text/css">
.btn-group > .btn:first-child {
   width: 50;
   height: 26;
}
.btn-group .btn + .btn, .btn-group .btn + .btn-group, .btn-group .btn-group + .btn, .btn-group .btn-group + .btn-group {
  width: 40;
}
.note-popover .popover-content, .panel-heading.note-toolbar {
  height: 40px;
}
.note-icon-magic {
 margin: 0 0 0 10px;
    height:     32px;
}

@media(min-width:768px) {
    #page-wrapper {
        position: inherit;
        margin: auto;
        padding: 0 30px;
        width: 50%;
       /*  border-left: 1px solid #e7e7e7; */
    }
}



.note-btn btn btn-default btn-sm dropdown-toggle {
  height: 40px;
}
.note-btn-group btn-group {
  height: 30px;
}
</style>	


</head>

<table width="70%" align="center" border="0" cellspacing="0"
	cellpadding="1" colspan="1" class="board_top">
	<br>
	<tr>
		<td height="50"></td>
	</tr>
	<tr>
		<td align="left" class="text01 formbar"><h6>
				<font color="#000000">Q&A</font>
			</h6></td>
	</tr>

	<tr>
		<td height="50"></td>
	</tr>
</table>

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
	
	<form action="/3T/qa/update" id="frm" name="Reg_form" onsubmit="return check();">
		<table border="1" align="center" class="board_view2">
			
			<tbody>
				<tr class="board_title">
					<th scope="row">글 번호</th>
					<td>${map.QA_NO }<input type="hidden" id="QA_NO" name="QA_NO"
						value="${map.QA_NO}"> <input type="hidden" id="GOODS_NO"
						name="GOODS_NO" value="${map.GOODS_NO }">
				</tr>
				<tr class="board_title">
					<th scope="row">작성자</th>
					<td>${map.MEMBER_ID }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">작성시간</th>
					<td>${map.REGDATE }</td>
				</tr>
				<tr class="board_title">
					<th scope="row">제목</th>
					<td colspan="3"><input type="text" id="TITLE" name="TITLE"
						class="wdp_90" value="${map.TITLE}" /></td>
				</tr>
				<tr>
					<%-- <td colspan="4" class="board_content2"><textarea rows="25"
							cols="217" title="내용" id="CONTENT" name="CONTENT">${map.CONTENT }</textarea>
					</td> --%>
					<td colspan="2" class="board_content2">
						<div id="summernote" name="summernote" >${map.CONTENT }</div>
	
						<textarea id="noteArea" name="CONTENT" id="CONTENT"  style="display: none;"></textarea>
					</td>
				</tr>

			</tbody>
		</table>
	
	<br>

	<table class="notice_button">
		<tr>
			<td>
				<!-- <a href="#this" class="btn" id="addFile">파일 추가</a> --> <a
				href="#this" class="btn" id="list">LIST</a> <a href="#this"
				class="btn" id="update">UPDATE</a> <a href="#this" class="btn"
				id="delete">DELETE</a>
				<input  class="btn btn-default" id="submitBtn"  type="submit" class="btn" value="수정">
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
			
			$('#summernote').summernote({
				lang : 'ko-KR',
				height: 500,
				fontNames: ['맑은 고딕',  'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
				fontNamesIgnoreCheck: ['맑은 고딕'],
				callbacks: {
		      		onImageUpload: function(files, editor, welEditable) {
		          		for (var i = files.length - 1; i >= 0; i--) {
		            		sendFile(files[i], this);
		          		}
		        	}
		      	}
			});
			
			$("#submitBtn").click(function() {
				copyContent();
			})
			
			function copyContent() { 
				$("#noteArea").val($("#summernote").summernote('code'));
			}
			
			function sendFile(file, el) {
				var form_data = new FormData();
				form_data.append('file', file);
				
			    $.ajax({
			    	data: form_data,
			        type: "POST",
			        url: '/3T/image/body',
			        cache: false,
			        contentType: false,
			        enctype: 'multipart/form-data',
			        processData: false,
			        success: function(url) {
			         	$(el).summernote('editor.insertImage', "/3T/resources/upload/" + url, function($image) {
			         		$image.css('width', '480px');	
			         		$image.css('height', 'auto');
			         	});
			        }
			   });
			}
			
		});
		
		
		function fn_openBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/list' />");
			comSubmit.submit();
		}

		function fn_updateBoard() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/qa/update' />");
			comSubmit.submit();
		}

		function fn_deleteBoard() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/qa/delete' />");
			comSubmit.addParam("QA_NO", $("#QA_NO").val());
			comSubmit.submit();

		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- jQuery --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 등록하기</title>
</head>


<div class="row" style="padding-left: 15px; width: 1000px;">
	<h1 class="page-header">공지사항 작성</h1>
</div>
<body>
	<div class="row" style="padding-left: 15px; width: 1000px;">
		<div class="panel panel-default">
			<div class="panel-heading">공지사항 등록 페이지입니다. ${map.CONTENT }</div>
			<%-- <div class="panel-body">
				<form id="frm" enctype="multipart/form-data" onsubmit="return joinValidation(this)">
					<table class="notice_view">
						<colgroup>
							<col width="15%">
							<col width="*" />
						</colgroup>
						<caption>게시글 작성</caption>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td>
									<input type="text" id="NOTIFY_TITLE" name="NOTIFY_TITLE" class="wdp_90" />
								</td>
							</tr>
							<tr>
								<th scope="row">내용</th>
								<td colspan="2" class="view_text">
									<textarea rows="20" cols="80" title="내용" id="NOTIFY_CONTENT" name="NOTIFY_CONTENT"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
					<br/>
					<!-- <input type="file" id="NOTIFY_IMAGE" name="NOTIFY_IMAGE" style="width: initial;" /> <br/> -->
					<input type="submit" name="업로드" value="작성하기" id="notifyWrite" class="btn btn-primary"/>
					<button type="button" onclick="onList()" id="notifyList" class="btn btn-primary">목록</button>
				</form>
				</div> --%>
				
				<textarea name="content" id="summernote" value="${map.CONTENT }"></textarea>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#notifyList").on("click", function(e) { //목록으로 버튼
					e.preventDefault();
					fn_notifyList();
				});

				$("#notifyWrite").on("click", function(e) { //작성하기 버튼
					e.preventDefault();
					fn_notifyWrite();
					});
				});

				function fn_notifyList() {
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/notify/adminNotifyList' />");
					comSubmit.submit();
				}

				function fn_notifyWrite() {
					var comSubmit = new ComSubmit("frm");
					comSubmit.setUrl("<c:url value='/notify/adminInsertNotify' />");
					comSubmit.submit();
				}

				$('.searchOption').val($('.searchOptionVal').val());
				
				var onList = function() {
					location.href = 'adminNotifyList';
				};
				
				$('#summernote').summernote({
					lang: 'ko-KR',
				  	height: 300,                 // set editor height
				  	minHeight: null,             // set minimum height of editor
				 	maxHeight: null,             // set maximum height of editor
				 	focus: true                  // set focus to editable area after initializing summernote
				});
				
				
		</script>
</body>
</html>
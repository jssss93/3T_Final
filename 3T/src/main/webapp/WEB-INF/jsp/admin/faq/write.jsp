<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<script src="<c:url value='/summernote/summernote.js'/>" charset="utf-8"></script>
<script src="<c:url value='/summernote/summernote-ko-KR.js'/>" charset="utf-8"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${map.TITLE==NULL }">
			<form action="write"method="post" >
		</c:when>
		<c:otherwise>
			<form action="update"method="post" >
		</c:otherwise>
	</c:choose>
	
	<input type="hidden" name="FAQ_NO" value="${map.FAQ_NO }"><br/>
	
	<input type="text" class="form-control" name="TITLE" placeholder="제목을 입력해주세요" value="${map.TITLE }"><br/>
	
	<div id="summernote" value="4">${map.CONTENT }</div>
	
	<textarea id="noteArea" name="CONTENT"  style="display: none;"></textarea>
	
	<c:choose>
		<c:when test="${map.TITLE == NULL }"><input type="submit" class="btn btn-default" id="submitBtn" value="등록" />	</c:when>
		<c:when test="${map.TITLE != NULL }"><input type="submit" class="btn btn-default" id="submitBtn" value="수정" /></c:when>
	</c:choose>
	
	</form>
</body>
<script>
$(document).ready(function() {

	
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
</script>
</html>
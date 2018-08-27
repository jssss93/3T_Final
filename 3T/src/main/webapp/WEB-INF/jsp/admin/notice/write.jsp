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
<body>
	<c:choose>
		<c:when test="${map.TITLE==NULL }"><form action="write"method="post" ></c:when>
		<c:otherwise><form action="update"method="post" ></c:otherwise>
	</c:choose>
	<input type="hidden" name="NOTICE_NO" value="${map.NOTICE_NO }">
	<br/>
	<input type="text" class="form-control" name="title" placeholder="제목을 입력해주세요" value="${map.TITLE }"><br/>
	<div id="summernote" value="4">${map.CONTENT }</div>
	<textarea rows="25" cols="130" id="noteArea" name="content"  style="display: none;"></textarea>
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
	        	console.log("들어감?");
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
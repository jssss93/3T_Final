<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<script language="javascript">
	  function check() {

		var f = document.Reg_form; 
	
		if (f.TITLE.value == "") {
			alert("제목을 입력해주십시오");
			f.TITLE.focus();
			return false;
		}
		
		 /* if(document.getElementById("summernote").value==null){
			alert("내용를 입력해주십시오");
			f.content.focus();
			return false;
		}  */
	}   
	</script>
	
	<c:if test="${map.FAQ_NO eq null}">
<div class="row" style="padding-left: 15px; width: 800px;">
	<h1 class="page-header">FAQ 쓰기</h1>
</div>
</c:if>
<c:if test="${map.FAQ_NO ne null}">
<div class="row" style="padding-left: 15px; width: 800px;">
	<h1 class="page-header">FAQ 상세</h1>
</div>
</c:if>
<div class="row" style="padding-left: 15px; width: 800px;">
	<div class="panel panel-default">
	<c:if test="${map.FAQ_NO eq null}">
		<div class="panel-heading">FAQ 쓰기 페이지입니다.</div>
		</c:if>
		<c:if test="${map.FAQ_NO ne null}">
		<div class="panel-heading">FAQ 상세보기 페이지입니다.</div>
		</c:if>
	
	<c:choose>
		<c:when test="${map.TITLE==NULL }">
			<form action="write" name="Reg_form" method="post" onsubmit="return check()">
		</c:when>
		<c:otherwise>
			<form action="update" name="Reg_form"  method="post" onsubmit="return check()" >
		</c:otherwise>
	</c:choose>
	
	 <c:if test="${map.FAQ_NO ne null}">
				<div class="form-group">
					<label>FAQ 글번호</label> 
					<input type="text" class="form-control" value="${map.FAQ_NO}" style="width: initial;" readonly />
				</div>
		</c:if>
	
	<input type="hidden" name="FAQ_NO" value="${map.FAQ_NO }"><br/>
	<div class="form-group">
					<label>작성자</label> 
					<input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" value="ADMIN" style="width: 250px;"  readonly />
				</div>
	<div class="form-group">
					<label>제목</label> 
	<input type="text" class="form-control" name="TITLE" placeholder="제목을 입력해주세요" value="${map.TITLE }" style="width: initial;" ><br/>
	</div>
	
				<div class="form-group">
					<label>내용</label>
	<div id="summernote" name="summernote" >${map.CONTENT }</div>
	

	<textarea rows="25" cols="130" id="noteArea" name="CONTENT"   style="display: none;"></textarea>
</div>
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
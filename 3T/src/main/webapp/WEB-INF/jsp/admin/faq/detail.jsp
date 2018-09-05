<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<script type="text/javascript">
	function button1_click(frm) {
		var theForm = document.frm;
		theForm.action = "update?FAQ_NO=${map.FAQ_NO}";
	}
	
	function previewImage(targetObj, View_area) {
		var preview = document.getElementById(View_area); //div id
		var ua = window.navigator.userAgent;

		//ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document
						.getElementById("ie_preview_error_" + View_area);

				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(View_area); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
						+ src + "', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + View_area)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + View_area;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
			//ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for (var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				var img = document.createElement("img");
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '100px';
				img.style.height = '100px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">FAQ 상세보기</h1>
</div>

<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">FAQ 상세보기 페이지입니다.</div>
		<div class="panel-body">
			            <form:form id="frm" name="frm" action="frm" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>FAQ 글번호</label> 
					<input type="text" class="form-control" value="${map.FAQ_NO}" style="width: initial;" readonly />
				</div>

			
				<div class="form-group">
					<label>제목</label> 
					<input type="text" class="form-control" id="TITLE" name="TITLE" value="${map.TITLE}" style="width: initial;" />
				</div>
				
				<%-- <div class="form-group">
					<label>내용</label>
					<textarea class="form-control" id="CONTENT" name="CONTENT" rows="10" cols="30">${map.CONTENT}</textarea>
				</div> --%>
				<div id="summernote" name="summernote" >${map.CONTENT }</div>
	
				<textarea id="noteArea" name="CONTENT"  style="display: none;"></textarea>
				<c:choose>
					<c:when test="${qnaDetail.QNA_IMAGE1 != null}">
						<div class="form-group">
							<label>등록 이미지</label>
						</div>
						<div class="form-group">
							<img src="/MODA/file/qnaFile/${qnaDetail.QNA_IMAGE1}" alt="" onerror="this.src='/MODA/file/noimg_130.gif'" style="width: 650px;" />
						</div>
					</c:when>
				</c:choose>
				<div class="form-group">
					<label>작성날짜</label> 
					<input type="text" class="form-control" id="QNA_REGDATE" name="QNA_REGDATE"
						value="<fmt:formatDate value="${map.REGDATE}" pattern="YY.MM.dd HH:mm" />"
						style="width: initial;" readonly />
				</div>
		
				<br/>
				
					<button type="submit" class="btn btn-success" onclick="button1_click();">수정</button>
				
				<a href="/3T/admin/faq/list">
					<button type="button" class="btn btn-outline btn-default">목록으로</button>
				</a>
			</form:form>
		</div>
	</div>
</div>
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
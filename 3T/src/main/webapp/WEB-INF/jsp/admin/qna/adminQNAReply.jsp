<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<script type="text/javascript">
	function joinValidation(frm) {

		if (frm.QNA_CATEGORY.value == "") {
			alert("카테고리를 선택해 주세요.");
			return false;
		} else if (frm.QNA_TITLE.value == "") {
			alert("제목을 입력해 주세요.");
			return false;
		}

		alert("작성이 완료되었습니다.");
	}

	function button1_click(frm) {
		var theForm = document.frm;
		theForm.action = "adminQnaReply";
	}

	function button2_click(frm) {
		var theForm = document.frm;
		theForm.action = "adminQnaReply";
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
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "', sizingMethod='scale')";
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
	<h1 class="page-header">Q&A등록</h1>
</div>

<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">Q&A등록 페이지입니다.</div>
		<div class="panel-body">
			<form:form id="frm" name="frm" action="frm" method="post" enctype="multipart/form-data" onsubmit="return joinValidation(this)">
				<input type="hidden" id="QNA_NUMBER" name="QNA_NUMBER" value="${qnaDetail.QNA_NUMBER}" />
				<input type="hidden" id="GOODS_NUMBER" name="GOODS_NUMBER" value="${qnaDetail.GOODS_NUMBER}" />
				<input type="hidden" id="MEMBER_NUMBER" name="MEMBER_NUMBER" value="${qnaDetail.MEMBER_NUMBER}" />
				<input type="hidden" id="QNA_PASSWORD" name="QNA_PASSWORD" value="${qnaDetail.QNA_PASSWORD}" />
				<input type="hidden" class="form-control" id="QNA_IMAGE1" name="QNA_IMAGE1" value="${qnaDetail.QNA_IMAGE1}" />
				<div class="form-group">
					<label>QNA 글번호</label> 
					<input type="text" class="form-control" value="${qnaDetail.QNA_NUMBER}" style="width: initial;" readonly />
				</div>
				<div class="form-group">
					<label>QNA 카테고리</label> 
					<input type="text" class="form-control" id="QNA_CATEGORY" name="QNA_CATEGORY" value="${qnaDetail.QNA_CATEGORY}" style="width: initial;" />
				</div>
				<div class="form-group">
					<label>제목</label> 
					<input type="text" class="form-control" id="QNA_TITLE" name="QNA_TITLE" value="${qnaDetail.QNA_TITLE}" style="width: initial;" />
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" id="QNA_CONTENT" name="QNA_CONTENT" rows="10" cols="30" readonly>${qnaDetail.QNA_CONTENT}</textarea>
				</div>

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
					<label>답변</label>
					<textarea class="form-control" id="QNA_REPCONTENT" name="QNA_REPCONTENT" rows="10" cols="30"><c:if test="${qnaDetail.QNA_REPCONTENT ne null }">${qnaDetail.QNA_REPCONTENT}</c:if></textarea>
				</div>

				<c:choose>
					<c:when test="${qnaDetail.QNA_REPCONTENT ne null}">
						<button type="submit" class="btn btn-success" onclick="button1_click();">수정</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn btn-success" onclick="button2_click();">등록</button>
					</c:otherwise>
				</c:choose>
				<a href="/MODA/qna/adminQnaList">
					<button type="button" class="btn btn-outline btn-default">목록으로</button>
				</a>
			</form:form>
		</div>
	</div>
</div>

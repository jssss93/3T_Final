<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<script type="text/javascript">
	function button1_click(frm) {
		var theForm = document.frm;
		 theForm.action = "write?NOTICE_NO=${map.NOTICE_NO}";		
	}
	function button3_click(frm) {
		var theForm = document.frm;
		theForm.action = "update?NOTICE_NO=${map.NOTICE_NO}";
	
	}
	function button2_click(frm) {
		var theForm = document.frm;
		theForm.action = "delete?NOTICE_NO=${map.NOTICE_NO}";
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
<c:if test="${map.NOTICE_NO eq null}">
<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">NOTICE 쓰기</h1>
</div>
</c:if>
<c:if test="${map.NOTICE_NO ne null}">
<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">NOTICE 상세</h1>
</div>
</c:if>
<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
	<c:if test="${map.NOTICE_NO eq null}">
		<div class="panel-heading">NOTICE 쓰기 페이지입니다.</div>
		</c:if>
		<c:if test="${map.NOTICE_NO ne null}">
		<div class="panel-heading">NOTICE 상세보기 페이지입니다.</div>
		</c:if>
		<div class="panel-body">
			            <form:form id="frm" name="frm" action="frm" method="post" enctype="multipart/form-data" >
			            <c:if test="${map.NOTICE_NO ne null}">
				<div class="form-group">
					<label>NOTICE 글번호</label> 
					<input type="text" class="form-control" value="${map.NOTICE_NO}" style="width: initial;" readonly />
				</div>
		</c:if>
				
				<div class="form-group">
					<label>제목</label> 
					<input type="text" class="form-control" id="TITLE" name="TITLE" value="${map.TITLE}" style="width: initial;"  />
				</div>
				<c:if test="${qnaDetail.GOODS_NUMBER ne null }">
				<div class="form-group">
					<label>상품번호</label> 
					<input type="text" class="form-control" id="GOODS_NUMBER" name="GOODS_NUMBER" value="${qnaDetail.GOODS_NUMBER}" style="width: 250px;"  />
				</div>
				</c:if>
				<div class="form-group">
					<label>작성자</label> 
					<input type="text" class="form-control" id="MEMBER_ID" name="MEMBER_ID" value="ADMIN" style="width: 250px;"  readonly />
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" id="CONTENT" name="CONTENT" rows="10" cols="30">${map.CONTENT}</textarea>
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
				<c:if test="${map.NOTICE_NO ne null}">
				<div class="form-group">
					<label>작성날짜</label> 
					<input type="text" class="form-control" id="REGDATE" name="REGDATE"
						value="<fmt:formatDate value="${map.REGDATE}" pattern="YY.MM.dd HH:mm" />"
						style="width: initial;" readonly />
				</div>
				 </c:if>
				<c:if test="${map.NOTICE_NO eq null}">
					<button type="submit" class="btn btn-success" onclick="button1_click();">작성</button>
				</c:if>
				<c:if test="${map.NOTICE_NO ne null}">
					<button type="submit" class="btn btn-success" onclick="button3_click();">수정</button>
					<button type="submit" class="btn btn-success" onclick="button2_click();">삭제</button>
				</c:if>
				<a href="/3T/admin/notice/list">
					<button type="button" class="btn btn-outline btn-default">목록으로</button>
				</a>
			</form:form>
		</div>
	</div>
</div>

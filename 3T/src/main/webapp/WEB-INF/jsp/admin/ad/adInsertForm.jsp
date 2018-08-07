<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<head>
<script type="text/javascript">
function joinValidation(frm){
	if(frm.AD_NAME.value==""){
		alert("이름을 입력해 주세요.");
		return false;
	}
	
	if(frm.AD_IMAGE.value==""){
		alert("이미지를 입력해 주세요.");
		return false;
	}
	
	alert("작성이 완료되었습니다.");
	
}

function button1_click(frm) {
	var theForm = document.frm;
	theForm.action = "adInsert";
}
function button2_click(frm) {
	var theForm = document.frm;
	theForm.action = "adModify";
}

function previewImage(targetObj, View_area) {
	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;

  //ie일때(IE8 이하에서만 작동)
	if (ua.indexOf("MSIE") > -1) {
		targetObj.select();
		try {
			var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
			var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


			if (ie_preview_error) {
				preview.removeChild(ie_preview_error); //error가 있으면 delete
			}

			var img = document.getElementById(View_area); //이미지가 뿌려질 곳

			//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
			img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
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
		for ( var i = 0; i < files.length; i++) {
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

<div class="row" style="padding-left:15px;width:700px;">    
	<h1 class="page-header">광고</h1>
</div>

<div class="row" style="padding-left:15px;width:700px;">
	<div class="panel panel-default">
	 <c:choose>
        <c:when test="${ad.AD_NUMBER == null}">
			<div class="panel-heading" >광고등록 페이지입니다.</div>
		</c:when>
		<c:otherwise>
			<div class="panel-heading" >광고수정 페이지입니다.</div>
		</c:otherwise>
		</c:choose>
			<div class="panel-body">
				<form:form id="frm" name="frm" enctype="multipart/form-data" onsubmit="return joinValidation(this)">	
					<input type="hidden" id="AD_NUMBER" name="AD_NUMBER" value="${ad.AD_NUMBER}">	
                    <div class="form-group">
                    	<label>광고번호</label>                            
                        <input type="text" class="form-control" value="${ad.AD_NUMBER}" style="width:initial;" readonly/>                            
                    </div>
                    <div class="form-group">
                    	<c:choose>
        					<c:when test="${ad.AD_NUMBER == null}">
								<label>등록 이미지</label> 
							</c:when>
							<c:otherwise>
								<label>수정 후 이미지</label> 
							</c:otherwise>
						</c:choose>
                    </div>
                    <div id='View_area' style='position:relative; width: 100px; height: 100px; color: black; border: 0px solid black; dispaly: inline; ' ></div>
                    <p/>
                    	<c:choose>
                        	<c:when test="${ad.AD_IMAGE != null}">
	                        	<div class="form-group">
	                        		<label>수정 전 이미지</label> 
	                        	</div>
	                        	<div class="form-group">
	                        		<img src="/MODA/file/adFile/${ad.AD_IMAGE}" width="100" height="100" alt=""  onerror="this.src='/MODA/file/noimg_130.gif'" />
	                        	</div>
	                        	<div class="form-group">
	                        		<label>이미지 찾기</label>
	                           		<input type="hidden" class="form-control" id="AD_IMAGE2" name="AD_IMAGE2" value="${ad.AD_IMAGE}" style="width:initial;"/>
	                           		<input type="file" id="AD_IMAGE1" name="AD_IMAGE1"  style="width:initial;" onchange="previewImage(this,'View_area')"/>
	                        	</div>
                        	</c:when>
                        	<c:otherwise>
                        		<div class="form-group">
                            		<label>이미지 찾기</label>
                            		<input type="file" id="AD_IMAGE" name="AD_IMAGE"  style="width:initial;" onchange="previewImage(this,'View_area')"/>
                        		</div>
                        	</c:otherwise>
                        </c:choose>
                        <div class="form-group">
                            <label>광고이름</label>
                            <input type="text" class="form-control" id="AD_NAME" name="AD_NAME" value="${ad.AD_NAME}" style="width:initial;"/>
                        </div>
                        <c:choose>
	                        <c:when test="${ad.AD_NUMBER == null}">
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="1" onclick="button1_click();">상단광고1</button>
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="2" onclick="button1_click();">상단광고2</button>
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="0" onclick="button1_click();">비활성</button>
							</c:when>
							<c:otherwise>
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="1" onclick="button2_click();">상단광고1</button>
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="2" onclick="button2_click();">상단광고2</button>
								<button type="submit" class="btn btn-success" id="posting" name="posting" value ="0" onclick="button2_click();">비활성</button>
							</c:otherwise>
						</c:choose>
						<a href="/MODA/ad/adList">
							<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">목록으로</button>
						</a>		
				</form:form>
			</div>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<script type="text/javascript">
	function button1_click(frm) {
		var theForm = document.frm;
		theForm.action = "adminCommentWrite?REVIEW_NO=${map.REVIEW_NO}";
	}
	function button2_click(frm) {
		var theForm = document.frm;
		theForm.action = "adminCommentDelete?REVIEW_NO=${map.REVIEW_NO}";
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
	<h1 class="page-header">REVIEW 상세보기</h1>
</div>

<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">REVIEW 상세보기 페이지입니다.</div>
		<div class="panel-body">
			            <form:form id="frm" name="frm" action="frm" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>REVIEW 글번호</label> 
					<input type="text" class="form-control" value="${map.REVIEW_NO}" style="width: initial;" readonly />
				</div>

			<%-- 	<div class="form-group">
					<label>REVIEW 카테고리</label> 
					<input type="text" class="form-control" id="QNA_CATEGORY" name="QNA_CATEGORY" value="${map.CATEGORY}" style="width: initial;" readonly />
				</div> --%>
				<div class="form-group">
					<label>제목</label> 
					<input type="text" class="form-control" id="REVIEW_TITLE" name="REVIEW_TITLE" value="${map.TITLE}" style="width: initial;" readonly />
				</div>
				<c:if test="${qnaDetail.GOODS_NUMBER ne null }">
				<div class="form-group">
					<label>상품번호</label> 
					<input type="text" class="form-control" id="GOODS_NUMBER" name="GOODS_NUMBER" value="${qnaDetail.GOODS_NUMBER}" style="width: 250px;" readonly />
				</div>
				</c:if>
				<div class="form-group">
					<label>회원 아이디</label> 
					<input type="text" class="form-control" id="QNA_MEMBER_ID" name="QNA_MEMBER_ID" value="${map.MEMBER_ID}" style="width: 250px;" readonly />
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" id="QNA_CONTENT" name="QNA_CONTENT" rows="10" cols="30" readonly>${map.CONTENT}</textarea>
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
					<label>문의날짜</label> 
					<input type="text" class="form-control" id="QNA_REGDATE" name="QNA_REGDATE"
						value="<fmt:formatDate value="${map.REGDATE}" pattern="YY.MM.dd HH:mm" />"
						style="width: initial;" readonly />
				</div>
				
				<table class="board_view2">

					<c:forEach items="${list }" var="list">
						<tr height="10" width="130" align="center">
						
							<td>${list.NAME }<br />
							<fmt:formatDate value="${list.REGDATE}" pattern="YY.MM.dd HH:mm" />
							</td>
							<td>${list.CONTENT }<br /> <br /></td> 	
						 <td>${list.REVIEW_COMMENT_NO }
						<input type="hidden" id="REVIEW_COMMENT_NO" name="REVIEW_COMMENT_NO" value="${list.REVIEW_COMMENT_NO }"></td>
							<td><button type="submit" class="btn btn-success" onclick="button2_click();">삭제</button></td>
							
						</tr>
					</c:forEach>
					<c:if test="${fn:length(list) le 0}">
										<tr><td colspan="11" style="text-align:center;">등록된 리뷰 댓글이 없습니다</td></tr>
									</c:if> 
				</table>
				<br/>
				
                         <div class="form-group">
                            <label>작성자</label>
                            <input type="text" class="form-control" id="NAME" name="NAME" value="ADMIN" style="width:100px;" readonly/>
                        </div>
                         <div class="form-group">
                            <label>비밀번호</label>
                            <input type="text" class="form-control" id="PASSWD" name="PASSWD" value="<%-- ${map.PASSWD} --%>" style="width:100px;"/>
                        </div>
                        <input type="hidden" id="REVIEW_ORIGIN_NO"
								name="REVIEW_ORIGIN_NO" value="${map.REVIEW_NO }">
						
				<div class="form-group">
					<label>댓글</label>
					 <textarea class="form-control" rows="10" cols="30"  id="CONTENT" name="CONTENT">소중한후기 감사합니다 :)</textarea>
				</div>
				<c:if test="${map2.CONTENT ne null}">
					<div class="form-group">
						<label>답변날짜</label> 
						<input type="text" class="form-control" id="QNA_REGDATE" name="QNA_REPDATE"
							value="<fmt:formatDate value="${map2.REGDATE}" pattern="YY.MM.dd HH:mm" />"
							style="width: initial;" readonly />
					</div>
				</c:if>
				<c:if test="${map2.CONTENT eq null}">
					<button type="submit" class="btn btn-success" onclick="button1_click();">댓글달기</button>
					
				</c:if>
				
				<a href="/3T/admin/review/list">
					<button type="button" class="btn btn-outline btn-default">목록으로</button>
				</a>
			</form:form>
		</div>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/include/include-header.jspf"%>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<script src="<c:url value='/summernote/summernote.js'/>" charset="utf-8"></script>
<script src="<c:url value='/summernote/summernote-ko-KR.js'/>" charset="utf-8"></script>

<script type="text/javascript">
		function open_win_noresizable(url, name) {
			var oWin = window
					.open(url, name,
							"scrollbars=no, status=no, resizable=no, width=700, height=500");

		}
		
</script>
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
.btn btn-default2 {
  border-color: #adadad;
}
.btn {
  border: 1px solid #ccc;
}

.note-btn btn btn-default btn-sm dropdown-toggle {
  height: 40px;
}
.note-btn-group btn-group {
  height: 30px;
}
.notice_button td {
  padding: 0px 0 0 129px!important;
}
.board_list2 tbody td {
  font: 14px 'Hind Madurai','맑은 고딕','Malgun Gothic',AppleGothic,sans-serif;
}
.board_top {
  width: 80%!important;
}
.board_top h6 {
  font-size: 15px!important;
}
</style>	
</head>
<body>
 <script type="text/javascript">
 function chkBox(bool) { // 전체선택/해제 
		var obj = document.getElementsByName("join");
		for ( var i = 0; i < obj.length; i++)
			obj[i].checked = bool;
	}
	function check() {
		
		var f = document.Reg_form;
		if (f.agree.checked == false) {
			alert("이용약관에  동의해 주시기 바랍니다.");
			return false;
		}
		
		if (f.TITLE.value == "") {
			alert("제목을 입력해주세요.");
			f.TITLE.focus();
			return false;
		}if (f.MEMBER_ID.value == "") {
			alert("이름을 입력해주세요.");
			f.MEMBER_ID.focus();
			return false;
		} if (f.PASSWD.value == "") {
			alert("비밀번호를 입력해주세요.");
			f.PASSWD.focus();
			return false;
		}/* if (f.CONTENT.value == "") {
			alert("내용을 입력해주세요.");
			f.CONTENT.focus();
			return false;
		} */
	}
</script>

	<table width="100%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br />
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">REVIEW</font>
				</h6></td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table border="1" align="center" class="board_list2">
		<c:choose>
			<c:when test="${list.GOODS_NO > 0 }">

				<tr class="board_subject2">
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" />
					<td>${list.NAME }<br /> KRW&nbsp;<fmt:formatNumber value="${list.PRICE }"
                                             pattern="#,###" /> <br> 
					<a class="board_subject4" type="button" onclick="javascript:open_win_noresizable('reviewGoodsSelect', write)">
							<img src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_select.gif" alt="상품정보선택">
					</a> <input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />


						<a href="/3T/goods/detail?GOODS_NO=${list.GOODS_NO}" type="submit"> <img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_detail.gif"
							alt="상품상세보기"> <input type="hidden" name="GOODS_NO"
							value="${list.GOODS_NO }" /></a>  	
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr class="board_subject2">
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/images/QA.PNG" /></td>
					<td class="board_subject"><a type="button"
						onclick="javascript:open_win_noresizable('reviewGoodsSelect', write)">
							<img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_select.gif"
							alt="상품정보선택">
					</a> <input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
					</td>
				</tr>
			</c:otherwise>
		</c:choose>
 
	</table>

	<br />
	<br />
	
<c:if test="${map.CONTENT eq null}">				
	<form action="/3T/review/write" name="Reg_form" onsubmit="return check();" method="post">		
	</c:if>
	<c:if test="${map.CONTENT ne null}">				
	<form action="/3T/review/update" name="Reg_form" onsubmit="return check();" method="post">		
	</c:if>
		<table border="1" class="board_list2">
			<tbody>
				<tr class="board_title2">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_25" value="${map.TITLE}"></input> </td>
				</tr>
				 <c:if test="${ID =! null }"> 
				<tr>
					<th scope="row">NAME</th>
					<td><input type="text" id="MEMBER_ID" name="MEMBER_ID" class="wdp_25" value="${IDX}"></input></td>
				</tr>
				 </c:if> 
				 <c:if test="${ID == null }"> 
				<tr>
					<th scope="row">NAME1</th>
					<td><input type="text" id="MEMBER_ID" name="MEMBER_ID" class="wdp_25" value="${map.MEMBER_ID}"></input></td>
				</tr>
				 </c:if> 
				<tr>

					<td colspan="2" class="board_content2">
						<div id="summernote" name="summernote" >${map.CONTENT }</div>
	
						<textarea id="noteArea" name="CONTENT" id="CONTENT"  style="display: none;"></textarea>
					</td>
							
				</tr>
					
				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input type="text" id="PASSWD" name="PASSWD"
						class="wdp_25" value="${map.PASSWD }"></input></td>
				</tr>
				<tr class="board_title">
					<th scope="row">개인정보수집 및 <br />이용 동의
					</th>
					<td colspan="2" class="board_content2"><textarea rows="10"
							cols="80" title="내용" id="AGREE" name="AGREE">■ 개인정보의 수집·이용 목적

서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
■ 수집하려는 개인정보의 항목
이름, 주소, 연락처 등
■ 개인정보의 보유 및 이용 기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.
#개인정보의 위탁 처리애즈클로는 서비스 향상을 위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의 개인정보를 외부에 위탁하여 처리하고 있습니다. 애즈클로의 개인정보처리 수탁자와 그 업무의 내용은 다음과 같습니다. - 수탁자 : (주)루나소프트- 위탁 업무 내용 : 카카오 알림톡 발송 업무 직송 등 일부 배송형태에 따라, 전자상거래소비자보호법 제 21조에 의거 협력사에 배송정보가 제공 됩니다.</textarea>
						<br /> 개인정보 수집 및 이용에 동의 하십니까?<input id="agree" type="checkbox" name="open"
						value="open" />동의함 
				</tr>


			</tbody>

		</table>
		<br> <br>	
		<table class="notice_button">
			<tr>
				<td><a href="#this" class="btn btn-default2" id="list">목록으로</a> <input
					type="submit" class="btn btn-default2" id="submitBtn" value="작성완료">
					 <input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
					 <input type="hidden" name="REVIEW_NO" value="${map.REVIEW_NO }" />
					</td>
			</tr>
		</table>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_Write();
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

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/list' />");
			comSubmit.submit();
		}

		function fn_Write() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/review/write' />");
			comSubmit.submit();
		}
	</script>
	
</body>
</html>
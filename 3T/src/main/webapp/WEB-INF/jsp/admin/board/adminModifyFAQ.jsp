<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<c:set var="dbVal" value="${faqDetail.FAQ_CATEGORY }" />
<script type="text/javascript">
	function joinValidation(frm) {
		if (frm.FAQ_TITLE.value == "") {
			alert("제목을 입력해 주세요.");
			return false;
		} else if (frm.FAQ_CONTENT.value == "") {
			alert("내용을 입력해 주세요.");
			return false;
		}
		alert("수정되었습니다.")
	}
	
	$(function() {
		   var $dbVal = '${dbVal}';
		   var $elmSelect = $('[name="FAQ_CATEGORY"]').find('option');

		   $elmSelect.each(function() {
		   if( $dbVal == $(this).val() ) {
		   $(this).attr('selected', true);
		   }
		   });
		   });
	
	$('.searchOption').val($('.searchOptionVal').val());
	
	var onList = function() {
		location.href = 'faqAdmin';
	};
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left: 15px; width: 700px;">
	<h1 class="page-header">게시글 수정</h1>
</div>

<div class="row" style="padding-left: 15px; width: 700px;">
	<div class="panel panel-default">
		<div class="panel-heading">자주묻는질문 수정 페이지입니다.</div>
		<div class="panel-body">
			<form:form id="faqAdminModify" action="faqAdminModify" method="post" name="joinform"
				onsubmit="return joinValidation(this)" enctype="multipart/form-data">
				
		<%-- <form:form commandName="goodsModel" action="faqAdminModify" enctype="multipart/form-data" method="post" name="joinform" onsubmit="return validateForm(this)"> --%>	
				
				<input type="hidden" id="FAQ_NUMBER" name="FAQ_NUMBER"	value="${faqDetail.FAQ_NUMBER}">

				<div class="form-group">
					<label>카테고리</label>
						<select name="FAQ_CATEGORY" onchange="FAQ_CATEGORYChange();" size=1>
						<OPTION value=''>카테고리</OPTION>
						<OPTION value='회원안내'>회원안내</OPTION>
						<OPTION value='배송안내'>배송안내</OPTION>
						<OPTION value='주문결제'>주문결제</OPTION>
						<OPTION value='주문취소/변경'>주문 취소/변경</OPTION>
						<OPTION value='교환/반품'>교환/반품</OPTION>
						<OPTION value='환불'>환불</OPTION>
						<OPTION value='상품'>상품</OPTION>
						<OPTION value='A/S'>A/S</OPTION>
						<OPTION value='거래증빙서류안내'>거래증빙서류안내</OPTION>
						<OPTION value='사이트이용안내'>사이트 이용안내</OPTION>
						 
						</select>
					
				</div>
				
				<div class="form-group">
					<label>제목</label> <input type="text" class="form-control"
						id="FAQ_TITLE" name="FAQ_TITLE" value="${faqDetail.FAQ_TITLE}"
						style="width: 500px;" />
				</div>
				<div class="form-group">
					<label>내용</label> 
					<textarea class="form-control" cols="10" rows="7" id="FAQ_CONTENT" name="FAQ_CONTENT" placeholder="내용을 입력하세요">${faqDetail.FAQ_CONTENT}</textarea>
					<%-- <input type="text" class="form-control"
						id="FAQ_CONTENT" name="FAQ_CONTENT" value="${faqDetail.FAQ_CONTENT}"					style="width: 500px;" />  --%>
						<%-- <img src="/SIRORAGI/file/faqFile/${map.FAQ_IMAGE1 }" /> --%>
				</div>
				  <div class="form-group">
                            <label>이미지</label>
                           	 기존 이미지 : <img src="/MODA/file/faqFile/FAQ_IMAGE_${faqDetail.FAQ_NUMBER}.jpg"  width="60" height="60" alt=""
							onerror="this.src='/MODA/file/noimg_130.gif'"/>
							<input type="file" id="FAQ_IMAGE1" name="FAQ_IMAGE1" style="width: initial;"/>
                            <input type="hidden" name="ORIGIANL_FAQ" value="${faqDetail.FAQ_IMAGE1}"/>
                        </div>
                       <%--  <div class="form-group">
                            <label>이미지2</label>
                            <input type="file" class="form-control" id="FAQ_IMAGE2" name="FAQ_IMAGE2" value="${map.FAQ_IMAGE2}" style="width:400px;"/>
                        </div> --%>
				<%-- <div class="form-group">
					<label>등록일자</label>
					<fmt:formatDate value="${map.FAQ_REGDATE}" pattern="YYYY.MM.dd" />
				</div> --%>

				<button type="submit" class="btn btn-success">수정</button>
				<button type="reset" class="btn btn-success">초기화</button>
				<button type="button" onclick="onList()" id="faqList" class="btn btn-success">목록</button>
			</form:form>
		</div>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<head>
<script type="text/javascript">
function joinValidation(adminModifyMember){

	if(adminModifyMember.MEMBER_PASSWORD.value==""){
		alert("비밀번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_NAME.value==""){
		alert("이름을 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_ZIPCODE.value==""){
		alert("우편번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_ADDRESS1.value==""){
		alert("주소를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_ADDRESS2.value==""){
		alert("상세주소를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_PHONE.value==""){
		alert("전화번호를 입력해 주세요.");
		return false;
	}
	else if(adminModifyMember.MEMBER_EMAIL.value==""){
		alert("이메일을 입력해 주세요.");
		return false;
	}
		alert("작성이 완료되었습니다.");
}

function button1_click() {
	alert("적립되었습니다.");
	MEMBER_NUMBER="${member.MEMBER_NUMBER}";
	// 스크립트에 value값 가지고 오기
	POINT_POINT=document.getElementById("POINT_POINT").value
	location.href="/MODA/member/adminMemberModifyPoint?MEMBER_NUMBER=" + MEMBER_NUMBER + "&POINT_POINT="+ POINT_POINT;
}
function button2_click() {
	alert("차감되었습니다.");
	MEMBER_NUMBER="${member.MEMBER_NUMBER}";
	// 스크립트에 value값 가지고 오기
	POINT_POINT=document.getElementById("POINT_POINT").value
	location.href="/MODA/member/adminMemberModifyPoint?MEMBER_NUMBER=" + MEMBER_NUMBER + "&POINT_POINT=-"+ POINT_POINT;
}
</script>
</head>

<!-- 메뉴 시작 -->

<div class="row" style="padding-left:15px;width:700px;">    
	<h1 class="page-header">회원수정</h1>
</div>

<div class="row" style="padding-left:15px;width:700px;">
	<div class="panel panel-default">
		<div class="panel-heading" >회원수정 페이지입니다.</div>
			<div class="panel-body">
				<form:form id="adminModifyMember" name="adminModifyMember" action="adminModifyMember" method="post" onsubmit="return joinValidation(this)">	
					<input type="hidden" id="MEMBER_NUMBER" name="MEMBER_NUMBER" value="${member.MEMBER_NUMBER}">	
                        <div class="form-group">
                            <label>아이디</label>                            
                            <input type="text" class="form-control" value="${member.MEMBER_ID}" style="width:initial;" readonly/>                            
                        </div>
                        <div class="form-group">
                            <label>비밀번호</label>
                            <input type="password" class="form-control" id="MEMBER_PASSWORD" name="MEMBER_PASSWORD" value="${member.MEMBER_PASSWORD}" style="width:initial;"/>
                        </div>
                        <div class="form-group">
                            <label>이름</label>
                            <input type="text" class="form-control" id="MEMBER_NAME" name="MEMBER_NAME" value="${member.MEMBER_NAME}" style="width:100px;"/>
                        </div>
                        <div class="form-group">
                            <label>우편번호</label>
                            <input type="text" class="form-control" id="MEMBER_ZIPCODE" name="MEMBER_ZIPCODE" value="${member.MEMBER_ZIPCODE}" style="width:100px;"/>
                            <p class="help-block">000-000 형식으로 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>주소</label>
                            <input type="text" class="form-control" id="MEMBER_ADDRESS1" name="MEMBER_ADDRESS1" value="${member.MEMBER_ADDRESS1}" style="width:400px;"/>
                       		 <p class="help-block">행정 구역 단위인 읍, 면, 동까지만 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>상세주소</label>
                            <input type="text" class="form-control" id="MEMBER_ADDRESS2" name="MEMBER_ADDRESS2" value="${member.MEMBER_ADDRESS2}" style="width:400px;"/>
                       		<p class="help-block">상세주소를 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>전화번호</label>
                            <input type="text" class="form-control" id="MEMBER_PHONE" name="MEMBER_PHONE" value="${member.MEMBER_PHONE}" style="width:initial;"/>
                            <p class="help-block">010-0000-0000 형식으로 입력해 주세요.</p>
                        </div>
                         <div class="form-group">
                            <label>이메일</label>
                            <input type="text" class="form-control" id="MEMBER_EMAIL" name="MEMBER_EMAIL" value="${member.MEMBER_EMAIL}" style="width:250px;" />
                        </div>
						<div class="form-group">
                            <label>포인트 수정</label>
                            <input type="text" class="form-control" id="POINT_POINT" name="POINT_POINT" style="width:250px;"/>
                        </div>
						<button type="button" class="btn btn-default" onclick="button1_click();">적립</button>
						<button type="button" class="btn btn-default" onclick="button2_click();">차감</button>
						<div class="form-group">
                            <label>포인트</label>
                            <input type="text" class="form-control" value="${member.MEMBER_POINT}" style="width:250px;" readonly/>
                        </div>
						<button type="submit" class="btn btn-success">회원수정</button>
						<a href="/MODA/member/adminMemberList?searchNum=0&isSearch=">
							<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">목록으로</button>
						</a>		
			</form:form>
		</div>
	</div>
</div>

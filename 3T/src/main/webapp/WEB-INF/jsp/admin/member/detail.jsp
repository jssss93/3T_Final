<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<input type="hidden" id="MEMBER_NO" name="MEMBER_NO" value="${memberDetail.MEMBER_NO}">	
                        <div class="form-group">
                            <label>아이디</label>                            
                            <input type="text" class="form-control" value="${memberDetail.MEMBER_ID}" style="width:initial;" readonly/>                            
                        </div>
                        <div class="form-group">
                            <label>비밀번호</label>
                            <input type="password" class="form-control" id="PASSWD" name="PASSRD" value="${memberDetail.PASSWD}" style="width:initial;"/>
                        </div>
                        <div class="form-group">
                            <label>이름</label>
                            <input type="text" class="form-control" id="NAME" name="NAME" value="${memberDetail.NAME}" style="width:100px;"/>
                        </div>
                        <div class="form-group">
                            <label>생일</label>
                            <input type="text" class="form-control" id="BIRTH" name="BIRTH" value="${memberDetail.BIRTH}" style="width:100px;"/>
                        </div>
                        <div class="form-group">
                            <label>우편번호</label>
                            <input type="text" class="form-control" id="ZIPCODE" name="ZIPCODE" value="${memberDetail.ZIPCODE}" style="width:100px;"/>
                            <p class="help-block">000-000 형식으로 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>주소</label>
                            <input type="text" class="form-control" id="ADDR1" name="ADDR1" value="${memberDetail.ADDR1}" style="width:400px;"/>
                       		 <p class="help-block">행정 구역 단위인 읍, 면, 동까지만 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>상세주소</label>
                            <input type="text" class="form-control" id="ADDR2" name="ADDR2" value="${memberDetail.ADD2}" style="width:400px;"/>
                       		<p class="help-block">상세주소를 입력해 주세요.</p>
                        </div>
                        <div class="form-group">
                            <label>전화번호</label>
                            <input type="text" class="form-control" id="PHONE" name="PHONE" value="${memberDetail.PHONE}" style="width:initial;"/>
                            <p class="help-block">010-0000-0000 형식으로 입력해 주세요.</p>
                        </div>
                         <div class="form-group">
                            <label>이메일</label>
                            <input type="text" class="form-control" id="MEMBER_EMAIL" name="EMAIL" value="${memberDetail.EMAIL}" style="width:250px;" />
                        </div>
						
						
						<button type="submit" class="btn btn-success">회원수정</button>
						<a href="/MODA/member/adminMemberList?searchNum=0&isSearch=">
							<button type="button" name="searchNum" id="searchNum" class="btn btn-outline btn-default">목록으로</button>
						</a>		
			</form:form>
		</div>
	</div>
</div>

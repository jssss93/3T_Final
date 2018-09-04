<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<style>
.xans-member-login .login fieldset .security {
      padding: 0px 0 0px 0px;
}
.xans-member-login .login fieldset .han {
      margin: -19px 0 0 84px;
}
.xans-member-login .login fieldset .han1 {
      margin: -26px 0 0 78!important;
      width: 107px;
}
.xans-member-login .login fieldset input {
	float: left;
	width: auto;
	height: 25px;
	padding: 15px 2px 2px 3px;
	border: 0 none;
	color: #111;
	margin: -6px 0 7 -9;
	font-size: 12px;
}
</style>
<script type="text/javascript">
		
$(document).ready(function(){

    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.

    var userInputId = getCookie("userInputId");

    $("input[name='MEMBER_ID']").val(userInputId);  
     
    if($("input[name='MEMBER_ID']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,

        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.

    }

    
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,

        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,

            var userInputId = $("input[name='MEMBER_ID']").val();

            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관

        }else{ // ID 저장하기 체크 해제 시,

            deleteCookie("userInputId");

        }

    });

     

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='MEMBER_ID']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,

        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,

            var userInputId = $("input[name='MEMBER_ID']").val();

            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관

        }

    });

});


function setCookie(cookieName, value, exdays){

    var exdate = new Date();

    exdate.setDate(exdate.getDate() + exdays);

    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());

    document.cookie = cookieName + "=" + cookieValue;

}


function deleteCookie(cookieName){

    var expireDate = new Date();

    expireDate.setDate(expireDate.getDate() - 1);

    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();

}

function getCookie(cookieName) {

    cookieName = cookieName + '=';

    var cookieData = document.cookie;

    var start = cookieData.indexOf(cookieName);

    var cookieValue = '';

    if(start != -1){

        start += cookieName.length;

        var end = cookieData.indexOf(';', start);

        if(end == -1)end = cookieData.length;

        cookieValue = cookieData.substring(start, end);

    }

    return unescape(cookieValue);

} 

		function validation() {

			var frm = document.forms[0];

			if (frm.MEMBER_ID.value == "") {
				alert("아이디 항목은 필수 입력값입니다.");
				return false;
			} 
			 else if (frm.PASSWD.value == "") {
				alert("패스워드 항목은 필수 입력값입니다.");
				return false;
			
			}
			 
			return true;
		}
	</script>
</head>

<c:if test="${empty message}">
	<div id="container">
   <div id="headerwrap"></div>

   <div id="contentwrap">

      <div id="contents">

         <form id="member_form_6149332581" name=""
            action="/3T/login/" method="post" onsubmit="return validation();">
            
            <div class="xans-element- xans-member xans-member-login ">
               <!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>회원로그인</legend>
                     <span>ID</span> <label class="id"><input id="MEMBER_ID"
                        name="MEMBER_ID" fw-filter="isFill" fw-label="아이디" fw-msg=""
                        class="inputTypeText" placeholder="" value="" type="text"></label>
                     <span>PASSWORD</span><label class="password"><input
                        id="PASSWD" name="PASSWD"
                        fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
                        fw-msg="" value="" type="password"></label>
                     <li><a href="/3T/findIdForm">Forgot id? </a></li>
                     <li><a href="/3T/findPasswdForm">
                           Forgot password?</a></li>
                     <p class="security">
                        <input id="idSaveCheck" name="idSaveCheck"
                           fw-filter="" fw-label="아이디저장" fw-msg="" value="T"
                           type="checkbox"><label for="member_check_save_id0">아이디저장</label>
                           <input class="han" id="autoLogin" name="autoLogin"
                           fw-filter="" fw-label="자동로그인" fw-msg="" value="T"
                           type="checkbox"><label class="han1"for="autoLogin">자동로그인</label>
                     </p>

                     <p class="link">
                        
                        <span class="loginbtn"><input class="loginbtn" type="submit" value="Login"></span>
                        <span class="joinusbtn"><a href="/3T/joinStep1">Join
                              us</a></span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>
         </form>

      </div>
   </div>


</div>
</c:if>

<c:if test="${not empty message}">
	${message}
	<form action="/3T/loginForm">
		<input type="submit" value="닫기">
	</form>
</c:if>
</html>

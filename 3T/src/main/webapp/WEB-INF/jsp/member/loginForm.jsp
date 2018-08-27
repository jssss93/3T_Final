<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>

<script type="text/javascript">
	
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
                     <li><a href="/member/id/find_id.html">Forgot id? </a></li>
                     <li><a href="/member/passwd/find_passwd_info.html">
                           Forgot password?</a></li>
                     <p class="security">
                        <input id="member_check_save_id0" name="check_save_id"
                           fw-filter="" fw-label="아이디저장" fw-msg="" value="T"
                           type="checkbox"><label for="member_check_save_id0">아이디
                           저장</label>
                     </p>

                     <p class="link">
                        
                        <span class="loginbtn"><input class="loginbtn" type="submit" value="Login"></span>
                        <span class="joinusbtn"><a href="/3T/member/joinStep1">Join
                              us</a></span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>
         </form>

      </div>
   </div>


</div>
</html>
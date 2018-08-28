<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인</title>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>

<script type="text/javascript">
	
		function validation() {

			var frm = document.forms[0];

			if (frm.EMAIL.value == "") {
				alert("EMAIL 항목은 필수 입력값입니다.");
				return false;
			} 
			 else if (frm.NAME.value == "") {
				alert("NAME 항목은 필수 입력값입니다.");
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
            action="/3T/findId" method="post" onsubmit="return validation();">
            
            <div class="xans-element- xans-member xans-member-login ">
               <!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>아이디 찾기</legend>
                     <span>이메일</span> <label class="id"><input id="EMAIL"
                        name="EMAIL" fw-filter="isFill" fw-label="이메일" fw-msg=""
                        class="inputTypeText" placeholder="" value="" type="text"></label>
                     <span>이름</span> <label class="id"><input id="NAME"
                        name="NAME" fw-filter="isFill" fw-label="이름" fw-msg=""
                        class="inputTypeText" placeholder="" value="" type="text"></label>
                     

                     <p class="link">
                        
                         <span class="loginbtn"><input class="loginbtn" type="submit" value="  찾기  "></span>
                        <span class="joinusbtn"><a href="/3T/loginForm">취소</a></span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>
         </form>

      </div>
   </div>


</div>
</html>
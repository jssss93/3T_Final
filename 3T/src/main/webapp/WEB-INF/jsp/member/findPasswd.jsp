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

			if (frm.EMAIL.value == "") {
				alert("이메일을 입력하세요.");
				return false;
			} 
			 else if (frm.NAME.value == "") {
				alert("이름을 입력하세요.");
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
            action="/3T/main" method="post" onsubmit="return validation();">
            
            <div class="xans-element- xans-member xans-member-login ">
               <!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>비밀번호 찾기</legend>
                     <span>비밀번호</span> <label class="id">찾으신비밀번호는 ${PASSWD}</label>
                     
				
				     <p class="link">
                        
                        <span class="loginbtn"><input class="loginbtn" type="submit" value="메인으로 "></span>
                        <span class="joinusbtn"><a href="/3T/loginForm">로그인하기</a></span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>
         </form>

      </div>
   </div>


</div>
</html>
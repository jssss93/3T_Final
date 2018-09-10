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
.xans-member-login .login fieldset .link input.loginbtn {
    position: absolute;
    top: 7px;
    right: 119px;
    padding: 7px 105px 5px 92px;
    letter-spacing: 1px;
    text-transform: uppercase;
    font-size: 9px;
    color: #fff;
    line-height: 12px;
    background: #111;
    border: 0px solid #333;
    width: 66%;
    height: auto;
    margin: 0px 0 0px 0px;
}
.xans-member-login .login fieldset .id, .xans-member-login .login fieldset .password {
    overflow: hidden;
    display: block;
    width: auto;
    margin: 0 0 5px;
    border: 1px solid #d9d9d9;
    border-radius: 2px;
    color: #8F8F91;
    height: 25px;
    padding: 4px;
}
.han1{
    margin: -26px 0 0 135px;
}
.xans-member-login .login fieldset .id, .xans-member-login .login fieldset .password {
    width: 61%!important;
    margin: 4px 0 5px -130px!important;
    padding: -1px!important;
}
.xans-member-login .login fieldset .link input.loginbtn {
    right: 131px!important;
    padding: 7px 107px 5px 78px!important;
    width: 63%!important;
}
</style>
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

         <form id="member_form_6149332581" name="" action="/3T/findPasswdComplete" method="post" onsubmit="return validation();">
            <input type="hidden" name="modulus" id="modulus" value="${Modulus}">
         	<input type="hidden" name="exponent" id="exponent" value="${Exponent}">
            
            <div class="xans-element- xans-member xans-member-login ">
               <!--
        $defaultReturnUrl = /index.html
        $forbidIpUrl = member/adminFail.html
    -->
     <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>회원로그인</legend>
                     <span>비밀번호</span> 
                     <label class="id">
                     	<input id="PASSWD" name="PASSWD" type="password">
                       </label>
                       <p class="han1">1111</p>
                     <span>비밀번호 확인</span>
                     <label class="password">
                     	<input id="PASSWD2" name="PASSWD2" type="password">
                    </label>
                    
						
					<p class="link">
						<span class="loginbtn"><input id="findPass"
						class="loginbtn" type="submit" value="비밀번호 변경 "></span>
					</p>
				</fieldset>
            </div>
            </div>
         </form>

      </div>
   </div>


</div>

<script>
$(document).ready(function() {
	$("#modulus").val("${Modulus}");
	$("#exponent").val("${Exponent}");
	
	$("#findPass").click(function(event) {
		var rsa = new RSAKey();
	    rsa.setPublic($('#modulus').val(),$('#exponent').val());
	    
	    $("#PASSWD2").val(rsa.encrypt($("#PASSWD").val()));
	    return true;

	})
});
</script>
 <script type="text/javascript">
$("input[name=PASSWD]").blur(function(){ 
	var PASSWD = $(this).val();
	var p = $(this).parent();
    var chkNum = PASSWD.search(/[0-9]/g);  // 숫자
//  var chkEngA = PASSWD.search(/[A-Z]/g);  // 영문 대문자
//  var chkEnga = PASSWD.search(/[a-z]/g);  // 영문 소문자
  	var chkEngAa = PASSWD.search(/[A-Za-z]/g);  // 영문 대소문자
  	var chkSpecial = PASSWD.search(/[!@#$%^&*()\-_=+\\\/\[\]{};:\`",.<>\/?]/g);  // 특수문자
  	var chkCnt = 0;
	
    if(chkNum >= 0) { chkCnt += 1; }
//  if(chkEngA >= 0) { chkCnt += 1; }
//  if(chkEnga >= 0) { chkCnt += 1; }
  	if(chkEngAa >= 0) { chkCnt += 1; }
  	if(chkSpecial >= 0) { chkCnt += 1; }
	
	if (!PASSWD){
		$(".alertPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>필수정보입니다.</span>");
		//$("input[name=chkid]").val("");
	}
	else if (chkCnt < 3)
	{
		$(".alertPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>[비밀번호]는 숫자와 영대소문자 및 특수문자 중 3종류이상 혼용하여야 합니다.</span>");
		//$("input[name=chkid]").val(""); 
	} 
	else if(/(\w)\1\1\1/.test(PASSWD))
	{
		$(".alertPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>[비밀번호]에 같은 문자를 연속으로 4번이상 사용하실 수 없습니다.</span>");
		//$("input[name=chkid]").val("on"); 
	}
	else
	{
		$(".alertPass",p).removeClass("alert-negative").addClass("alert-positive").html("<span style='color:blue'>사용가능한 비밀번호 입니다.</span>");
	}
	
});


$("input[name=PASSWD2]").blur(function(){ 
	var PASSWD = $("input[name=PASSWD]").val();
	var PASSWD2 = $(this).val(); 
	var p = $(this).parent();
	
	console.log(PASSWD);
	console.log(PASSWD2);
	
	if (PASSWD == PASSWD2)
	{
		$(".alertPass2",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:blue'>비밀번호가 일치합니다.</span>");
		//$("input[name=chkid]").val(""); 
	} 
	else 
	{
		$(".alertPass2",p).removeClass("alert-negative").addClass("alert-positive").html("<span style='color:red'>비밀번호가 일치하지 않습니다. 다시작성해주세요.</span>");
		//$("input[name=chkid]").val("on"); 
	} 
	}); 
</script>

</html>
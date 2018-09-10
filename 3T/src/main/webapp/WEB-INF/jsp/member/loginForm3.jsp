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
.han123 {
    margin: 85px 0 0 0;
}
.fb_iframe_widget {
    top: 87px;
    right: 125px;
}
.xans-member-login .login fieldset>a {
    top: 182px!important;
    right: 3px!important;
</style>
<script type='text/javascript'>

// 카카오 script key 입력
Kakao.init('95db4ac62ef65afa94ce309801ff9014');

// 로그인 처리
  
function loginWithKakao(){
    
    Kakao.Auth.cleanup();
    Kakao.Auth.login({
        persistAccessToken: true,
        persistRefreshToken: true, 
        success : function(authObj) {
			Kakao.API.request({

			       url: '/v1/user/me',

			       success: function(res) {
			             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
			             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
			             
			             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
			             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
			             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근  // res.properties.nickname으로도 접근 가능 )
			             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
			             
			             id=res.id;
			         	$.ajax({ 
			         		type : "POST", 
			         		url : "/3T/kakaoLogin",
			         		data : ({
			         			id : id,
			         			token : authObj.access_token
			         		}),
			         		success : function() {
			         			alert("성공");
			         		},
			         		error : function(error, a, b) {
			         			alert("에러");
			         			console.log(error);
			         			console.log(a);
			         			console.log(b);
			         			window.location.href="/3T/main";
			         		}
			         	});
			       }
			})
        },
            fail: function(err) {
             alert(JSON.stringify(err));
        }
    });
}
</script> 
<script>
$(document).ready(function() {
	$("#modulus").val("${Modulus}");
	$("#exponent").val("${Exponent}");
	
	$("#login").click(function(event) {
		var rsa = new RSAKey();
	    rsa.setPublic($('#modulus').val(),$('#exponent').val());
	    
	    $("#PASSWD2").val(rsa.encrypt($("#PASSWD").val()));
	    return true;

	})
});
</script>

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
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>회원로그인</legend>
                     <input type="hidden" name="modulus" id="modulus">
                     <input type="hidden" name="exponent" id="exponent">
                     <input type="hidden" name="PASSWD2" id="PASSWD2">
                     <span>ID</span> 
                     <label class="id">
                     	<input id="MEMBER_ID" name="MEMBER_ID" type="text">
                       </label>
                     <span>PASSWORD</span>
                     <label class="password">
                     	<input id="PASSWD" name="PASSWD" type="password">
                     </label>
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
                        
                        <span class="loginbtn"><input class="loginbtn" type="submit" id="login" value="Login"></span>
                        <span class="joinusbtn"><a href="/3T/joinStep1">Join us</a></span>
                        <fb:login-button scope="public_profile,email"onlogin="checkLoginState();"><span>(서비스 준비중)</span></fb:login-button>
						<div class="han123"id="status"></div>
						<a id='custom-login-btn' href='javascript:loginWithKakao()'>
                			<img src='/3T/images/Kakao_login_btn.PNG' width='350' height='50' />
                		</a>
                		<a href="/3T/nonMember3" >비회원으로 이용하기2</a>
                		<span>비회원님도 상품구매가 가능하나<br>다양한회원혜택에서 제외됩니다. </span>  
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
<script>
		// This is called with the results from from FB.getLoginStatus().
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			// The response object is returned with a status field that lets the
			// app know the current login status of the person.
			// Full docs on the response object can be found in the documentation
			// for FB.getLoginStatus().
			if (response.status === 'connected') {
				// Logged into your app and Facebook.
				testAPI();
			} else {
				// The person is not logged into your app or we are unable to tell.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			}
		}

		// This function is called when someone finishes with the Login
		// Button.  See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}

		window.fbAsyncInit = function() {
			FB.init({
				appId : '514647905627480',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.8
			});

			// Now that we've initialized the JavaScript SDK, we call 
			// FB.getLoginStatus().  This function gets the state of the
			// person visiting this page and can return one of three states to
			// the callback you provide.  They can be:
			//
			// 1. Logged into your app ('connected')
			// 2. Logged into Facebook, but not your app ('not_authorized')
			// 3. Not logged into Facebook and can't tell if they are logged into
			//    your app or not.
			//
			// These three cases are handled in the callback function.

			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});

		};

		// Load the SDK asynchronously
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		// Here we run a very simple test of the Graph API after login is
		// successful.  See statusChangeCallback() for when this call is made.
		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me?fields=id,name,address,gender,hometown,email',function(response) {
				console.log(response);
				console.log('Successful login for: '+ response.name);
				document.getElementById('status').innerHTML = 'Thanks for logging in, ' + response.name + '!';
			});
		}
	</script>

</html>


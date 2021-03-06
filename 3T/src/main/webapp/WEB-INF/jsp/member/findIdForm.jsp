<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<style>
.modal-content {
    position: relative;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, .2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    width: 25%;
    height: 25%;
}
h4 {
    background-color: black;
    color:white;
    font-size:14px;
    font-weight:bold;
    height: 10%;
    padding: 5;
}
.form-horizontal .form-group {
    margin-right: 0;
    margin-left: 0px;
}
.form-control {
    display: block;
    width: 50%;
    height: 34px;
    padding: 6px 12px;
    font-size: 12px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        margin: 0 0 0 20;
    
}
.form-horizontal .control-label {
    padding: 7px 0 0 0;
    padding-top: 7px;
    padding-right: 0px;
}
.modal-body {
    position: relative;
    padding: 15px;
    left: -100;
}
.col-sm-20{
    margin:0 0 0 0;
}
.col-xs-20 {
   width: 550;
}
form-group.col-sm-4 control-label a{
font-size:15px;
}
.text-center {
    text-align: center;
    margin: -42 0 0 410;
}
.form-inline .form-control{
    margin: 0 0 0 2;
}
.btn {
    width: auto;
    font-weight: bold;
    letter-spacing: 0.05em;
    font-family: 'Lato';
    border: 1px solid #ccc;
    padding: 5px 12px;
    text-transform: uppercase;
    font-size: 9px;
    line-height: 20px;
    letter-spacing: 1px;
    background: white;
    margin: 0 0 0 10;
    
</style>



<div id="container">
	<div id="headerwrap"></div>

	<div id="contentwrap">

		<div id="contents">
         <form id="member_form" name="member_form"
            action="/3T/findId" method="post" onsubmit="return validation();">
			<div class="xans-element- xans-member xans-member-login ">
				<div class="login">
					<h3></h3>
					<fieldset>
						<legend>아이디 찾기</legend>
						<span>이메일</span> <a data-toggle="modal" data-target="#email">인증하기</a>
						<label class="id">
							<c:if test="${not empty EMAIL}">
								<input id="EMAIL" name="EMAIL"
									fw-filter="isFill" fw-label="이메일" fw-msg="" class="inputTypeText"
									placeholder="" value="${EMAIL}" type="text" readonly>
							</c:if>
							<c:if test="${empty EMAIL}">
								<input id="EMAIL" name="EMAIL"
									fw-filter="isFill" fw-label="이메일" fw-msg="" class="inputTypeText"
									placeholder="인증해주세요" value="" type="text" readonly>
							</c:if>
							
						</label> 
						<span>이름</span> 
						<label
							class="id"><input id="NAME" name="NAME"
							fw-filter="isFill" fw-label="이름" fw-msg="" class="inputTypeText"
							placeholder="" value="" type="text">
						</label>


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


<div class="modal fade" id="email">
	<div class="modal-content">
		<div class="modal-head">
			<a><h4>이메일 인증</h4></a>
			<button class="button">
				<span class="icon icon-dismiss-white"></span> <span class="sr-only">이창 닫기</span>
			</button>
		</div>
		<div class="modal-body">
			<form name="emailFrm" method="post" class="form-horizontal">
				<input name="agreement" value="o" type="hidden">
				<section style="padding: 50px 20px;">
					<div class="form-group">
						<label for="inputEmail3" class="col-xs-4 col-lg-4 control-label">이메일</label>
						<div class="col-xs-20 col-lg-20 form-inline">
							<input name="email1" id="email1" class="form-control" size="10"
								type="text"> @ <input name="email2" id="email2"
								class="form-control" size="10" type="text"> <a
								href="javascript:email_confirm();"
								class="btn btn-default form-control">인증번호받기</a>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-4 control-label"><a>인증번호</a></label>
						<div class="col-sm-20">
							<input name="sing_code" class="form-control" type="password">
							<div class="text-center" style="padding-top: 10px">
								<a href="javascript:findId();" class="btn btn-default">회원가입하기</a>
							</div>
						</div>
					</div>

				</section>
			</form>

			<div class="modal-foot"></div>
		</div>
		<div class="modal-foot"></div>
	</div>
	<script>
		function email_confirm() {
			var f = document.emailFrm;
			var email = f.email1.value + "@" + f.email2.value;

			if (email == '@') {
				alert("이메일을 입력하세요.");
			} else if (f.email1.value == "" || f.email2.value == "") {
				alert("이메일을 정확히 입력하세요.");
				console.log("로그 내용1+eamil:"+email);
			} else {
				console.log("들어가?1");
				$.ajax({ 
					type : "POST",
					url : "/3T/findId/modal_email_auth",
					data : ({
						mode : "email_confirm",
						email : email
					}),
					success : function(data) {
						console.log(data);
						if (data == 0) {
							alert("이미 가입된 이메일입니다.다른이메일을 입력해주세요");
						} else {
							alert("인증번호를 요청하신 이메일로 발송했습니다.");
						}

						if (data != null) {
							console.log("로그 내용2" + data);
						}
					},
					error : function(error, a, b) {
						console.log(error);
						console.log(a);
						console.log(b);
					}
				});
			}

		}

		function findId() {
			var f = document.emailFrm;

			var email = f.email1.value + "@" + f.email2.value;

			if (email == '@') {
				alert("이메일을 입력하세요.");
			} else if (f.email1.value == "" || f.email2.value == "") {
				alert("이메일을 정확히 입력하세요.");
				console.log("로그 내용1");
			} else {
				$.ajax({
					type : "POST",
					url : "/3T/findId/modal_email_auth_success",
					success : function(data) {
						console.log("로그 내용1");
						if (data != null) {
							if (!f.sing_code.value) {
								alert("인증번호를 입력해 주세요");
								f.sing_code.focus();
							} else if (f.sing_code.value != data) {
								alert("인증번호가 맞지 않습니다.");

							}  else {
								alert("인증되었습니다.");
								
								f.action = "./findIdForm";
							
								f.submit();
							}
						} else {
							alert("data값없음" + data);
							console.log("로그 내용3");
						}
					},
					error : function(e) {
						alert('error' + e);
					}
				});
			}
		}
		
		
		function validation() {

			var frm = document.member_form;

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
</div>


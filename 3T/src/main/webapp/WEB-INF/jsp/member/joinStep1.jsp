<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<div class="container">
	<section class="step-panels">
		<ol>
			<li class="c01 col-xs-24 col-sm-10 selected">
				<div>AUTHENTICATION</div>
			</li>
			<li class="c02 col-xs-7">
				<div>PRIVACY</div>
			</li>
			<li class="c03 col-xs-7">
				<div>WELCOME</div>
			</li>
		</ol>
	</section>
	<div class="register-verify">
		<div class="guide">
			<section>
				<div class="title">
					<span class="pancoat"></span> <strong>MODA 회원가입을 위해 본인인증을
						시작합니다.</strong>
				</div>
				<p>
					휴대폰 인증과 이메일 인증중에 원하는 방법을 선택하여 본인인증을 진행할 수 있습니다.<br> 본본인인증을 위해
					입력하신 개인정보는 회원가입을 위해서 확인하는 것이며,<br> 수집된 정보는 본인인증 외 어떠한 용도로도
					사용되거나 팬콧에 저장되지 않으므로 안심하시기 바랍니다.
				</p>
			</section>
		</div>
		<div class="verify row">
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">휴대폰 인증</h3>
					</div>
					<div class="section-body">
						<p>핸드폰 인증은 정보를 저장하지 않습니다. 입력하신 핸드폰으로 전송받은 인증 번호를 입력해서 인증을 받는
							방법입니다.</p>
						<p>※현재는 서비스를 지원하지 않습니다.</p>

					</div>
				</div>
			</section>
			<section class="col-md-12">
				<div class="box-shadow">
					<div class="section-head left border">
						<h3 class="title">이메일 인증</h3>
					</div>
					<div class="section-body">
						<p>이메일 인증은 따로 정보를 저장하지 않습니다. 해당 이메일로 전송받은 인증 번호를 입력해서 인증을 받는
							방법입니다.</p>
						<a href="/3T/member/joinStep1Email" class="button"	 target="modal" data-size="sm" data-label="이메일 인		증"> 
						
						<span class="button-label">이메일 인증</span>
						</a>
						<button class="btn btn-toggle" data-toggle="modal" data-target="#myModal">Show / Hide<button>
					</div>
				</div>
			</section>
		</div>
	</div>
	
	<div class="modal fade" id="myModal">
		<form name="frm" method="post" class="form-horizontal">
		<input name="agreement" value="o" type="hidden">
	<section style="padding:30px 20px;">
		<div class="form-group">
			<label for="inputEmail3" class="col-xs-4 col-lg-4 control-label">이메일</label>
			<div class="col-xs-20 col-lg-20 form-inline">
				<input name="email1" id="email1" class="form-control" size="10" type="text"> @ 
				<input name="email2" id="email2" class="form-control" size="10" type="text">  
				<a href="javascript:email_code();" class="btn btn-default form-control">인증번호받기</a>
				 
			</div>
		</div>
	 <div class="form-group">
			<label for="inputEmail3" class="col-sm-4 control-label">인증번호</label>
			<div class="col-sm-20">
				 <input name="sing_code" class="form-control" type="password">
			</div>
		</div>
	
		<div class="text-center" style="padding-top:10px">
			  <a href="javascript:member_send();" class="btn btn-default">회원가입하기(AJAX TEST)</a> 
			 <a href="/3T/member/joinStep2" class="btn btn-default">회원가입하기(AJAX 후에 기능 추가)</a> 
		</div> 
	
	</section>
</form></div>

<div class="modal-foot">
</div>

	<script>
		function email_code() {
			var f = document.frm;
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
					url : "/3T/joinStep1/modal_email_auth",
					data : ({
						mode : "email_code",
						email : email
					}),
					success : function(data) {
						console.log(data);
						if (data != 0) {
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

		function member_send() {
			var f = document.frm;

			var email = f.email1.value + "@" + f.email2.value;

			if (email == '@') {
				alert("이메일을 입력하세요.");
			} else if (f.email1.value == "" || f.email2.value == "") {
				alert("이메일을 정확히 입력하세요.");
				console.log("로그 내용1");
			} else {
				$.ajax({
					type : "POST",
					url : "/3T/joinStep1/modal_email_auth_success",
					success : function(data) {
						console.log("로그 내용1");
						if (data != null) {
							if (!f.sing_code.value) {
								alert("인증번호를 입력해 주세요");
								f.sing_code.focus();
							} else if (f.sing_code.value != data) {
								alert("인증번호가 맞지 않습니다.");

							} else {
								f.action = "./joinStep2";
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
	</script>
</div>


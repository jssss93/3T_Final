<%@ page contentType="text/html; charset=utf-8" %>
<form name="frm" method="post" class="form-horizontal">
<link rel="stylesheet" href="/MODA/css/memberDelete.css">


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
		 <!-- <a href="javascript:member_send();" class="btn btn-default">회원가입하기</a>  -->
		 <a href="/3T/member/joinStep2" class="btn btn-default">회원가입하기(AJAX 후에 기능 추가)</a> 
	</div> 

</section>
</form></div>

<div class="modal-foot">
</div>

<script>
		/* function email_code() {
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
					url : "./joinStep1/modal_email_auth",
					data : ({
						mode : "email_code",
						email : email
					}),
					//contentType: "text/plain; charset=euc-kr",
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
					error : function(e) {
						alert('error' + e);
					}
				});
			}

		} */

		function member_send() {
			var f = document.frm;

			var email = f.email1.value + "@" + f.email2.value;

			f.action = "./joinStep2";	
			
			
			/* if (email == '@') {
				alert("이메일을 입력하세요.");
			} else if (f.email1.value == "" || f.email2.value == "") {
				alert("이메일을 정확히 입력하세요.");
				console.log("로그 내용1");
			} else {
				$.ajax({
					type : "POST",
					url : "./joinStep1/modal_email_auth_success",
					//data: ({Id:$("#Id").val(), Pwd:$("#Pwd").val()}),
					//contentType: "text/plain; charset=euc-kr",
					success : function(data) {
						
						console.log("로그 내용1");
						if (data != null) {
							if (!f.sing_code.value) {
								alert("인증번호를 입력해 주세요");
								f.sing_code.focus();
							} else if (f.sing_code.value != data) {
								alert("인증번호가 맞지 않습니다.");

							} else {
								//alert("인증번호가 맞습니다.");
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
			} */
		}
	</script>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<div class="container">

<div id="container">
   <div id="headerwrap"></div>

   <div id="contentwrap">

      <div id="contents">

            <div class="xans-element- xans-member xans-member-login ">
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <legend>이메일인증</legend>
                     <span>
                     	<strong>3T 회원가입을 위해 이메일인증을 시작합니다.</strong>
                     </span>
                      <p class="link">
                      
                     <span>
                     	<a data-toggle="modal" data-target="#myModal">인증하기</a>
                     </span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>
</div>

    </div>
   </div>
  

<div class="modal fade" id="myModal">
	<form name="frm" method="post">
		<div class="xans-element- xans-member xans-member-login ">
               <div class="login">
                  <h3></h3>
                  <fieldset>
                     <span>EMAIL</span>
                     	<input name="email1" id="email1" class="form-control" size="10" type="text"> @ 
						<input name="email2" id="email2" class="form-control" size="10" type="text">  
						<a href="javascript:email_code();" class="btn btn-default form-control">인증번호받기</a>
                     <br/>
                     <span>인증번호</span>
                     	<label class="id">
                     		 <input name="sing_code" class="form-control" type="password">
                     	</label>
                     <p>

                     <p class="link">
                        
                        <span class="loginbtn">
                        	<a href="javascript:member_send();" class="btn btn-default">회원가입하기(AJAX TEST)</a>
                        </span>
                        <span class="joinusbtn">
                        	<a href="/3T/member/joinStep2" class="btn btn-default">일단 바로넘어가기</a> 
                        </span>
                     </p>

                     
                     
                  </fieldset>
               </div>
            </div>			
	</form>



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


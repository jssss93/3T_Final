<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/js/jquery.gray.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->

<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery.als-1.6.min.js"></script>
<script type="text/javascript">



	function check() {

		var f = document.Reg_form;

		
		if (f.MEMBER_ID.value == "") {
			alert("아이디를 입력해주십시오");
			f.MEMBER_ID.focus();
			return false;
		}

		/* if (f.confirm_id.value == "") {
			alert("아이디 중복체크를해주세요");
			f.M_ID.focus();
			
			return false;
		} */
		if (f.PASSWD.value == "") {
			alert("비밀번호를 입력해주십시오");
			f.PASSWD.focus();
			
			return false;
		}

		if (f.PASSWD.value != f.PASSWD2.value) {
			alert("비빌번호를 다르게 입력했습니다.");
			f.PASSWD2.select();
			return false;
		}

		if (f.NAME.value == "") {
			alert("이름을 입력해주십시오");
			f.NAME.focus();
			return false;
		}

		if (f.BRITH.value == "") {
			alert("주민등록번호를 입력해주십시오");
			f.BIRTH.focus();
			return false;
		}



		if (f.ZIPCODE.value == "") {
			alert("우편번호를 검색하여 입력해주십시오");
			f.ZIPCODE.focus();
			return false;
		}

		if (f.ADDR1.value == "") {
			alert("기본주소를 입력해주십시오");
			f.ADDR1.focus();
			return false;
		}

		if (f.ADDR2.value == "") {
			alert("상세주소를 입력해주십시오");
			f.ADDR2.focus();
			return false;
		}

		if (f.PHONE.value == "") {
			alert("전화번호를 입력해주십시오");
			f.PHONE.focus();
			return false;
		}


		if (f.EMAIL.value == "") {
			alert("이메일을 입력해주십시오");
			f.EMAIL.focus();
			return false;
		}
		

	}   

	  function openConfirmId(){
			var url="/checkId?MEMBER_ID="+ document.Reg_form.MEMBER_ID.value;
			var chk=document.Reg_form;
			if(chk.MEMBER_ID.value==""){
				alert("ID를 입력하세요");
				chk.MEMBER_ID.focus();
				return false;
			}
			if (chk.MEMBER_ID.value.length < 2) {
				alert("최소 2자리 이상 입력해주세요!");
				chk.MEMBER_ID.focus();
				return false;
			}
			open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
								 "scrollbars=no,resizable=no,width=400,height=200");
		}
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script language="Javascript">
	function checkemailaddy() {
		if (Reg_form.email3.value == '1') {
			Reg_form.EMAIL2.readonly = false;
			Reg_form.EMAIL2.value = '';
			Reg_form.EMAIL2.focus();
		} else {
			Reg_form.EMAIL2.readonly = true;
			Reg_form.EMAIL2.value = Reg_form.email3.value;
		}
	}
</script>



<script>
	function DaumPostcode() {

		new daum.Postcode(
				{

					oncomplete : function(data) {

						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.

						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.

						var fullAddr = ''; // 최종 주소 변수

						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.

						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우

							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)

							fullAddr = data.jibunAddress;

						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.

						if (data.userSelectedType === 'R') {

							//법정동명이 있을 경우 추가한다.

							if (data.bname !== '') {

								extraAddr += data.bname;

							}

							// 건물명이 있을 경우 추가한다.

							if (data.buildingName !== '') {

								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);

							}

							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.

							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');

						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.

						document.getElementById('ZIPCODE').value = data.zonecode; //5자리 새우편번호 사용

						document.getElementById('ADDR1').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.

						document.getElementById('ADDR2').focus();

					}

				}).open();

	}
</script>

<title>3T</title>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link href="<c:url value='/resources/css/joinTest.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<div id="contentwrap">

		<div id="contents">



			<div class="titleArea">
				<h2>회원 가입</h2>
			</div>
			<div class="xans-element- xans-member xans-member-join">
				<div class="ec-base-table typeWrite">

					<div id="authWrap" style="">
						<h3 class=" ">기본정보</h3>
							<input type="hidden" name="modulus" id="modulus">
                			<input type="hidden" name="exponent" id="exponent">
						<p class="required ">
							<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="필수"> 필수입력사항
						</p>
						
						<form name="Reg_form" action="/3T/mypageComplete" method="post" onsubmit="return check()">
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<caption>회원 기본정보</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
							
								<tbody>
									<c:forEach items="${mypageInfo }" var="row">
									<tr>
										<th scope="row">아이디 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="MEMBER_ID" name="MEMBER_ID"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
											value="${row.MEMBER_ID}" readonly type="text"> <span id="idMsg"></span>
											아이디는 변경할 수 없습니다.</td>
									</tr>
									
									<tr>
										<th scope="row">현재비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td>
											<div class="col-lg-21 col-md-20">
												<input id="Now_PASSWD" name="Now_PASSWD" maxlength="16" type="password"/>
												현재 사용하고 계신 비밀번호를 입력해주세요.
												<p class="alertNowPass alert-positive"></p>
											</div>
										</td>
									</tr>
									
<%-- 									<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="PASSWD" name="PASSWD"
											fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="${row.PASSWD}" type="password"> 영문/숫자를 이용하여 4~12자로 입력하세요</td>
									</tr>
								
									<tr>
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="PASSWD2"
											name="PASSWD2"
											fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인"
											fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> <span
											id="pwConfirmMsg"></span> 비밀번호를 재입력 해주세요</td>
									</tr> --%>
																		<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td>
											<div class="col-lg-21 col-md-20">
												<input id="PASSWD2" name="PASSWD" maxlength="16" type="password"/>
													영문/숫자를 이용하여 4~12자로 입력하세요
												<p class="alertPass alert-positive"></p>
											</div>	
										</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td>
											<div class="col-lg-21 col-md-20">
												<input id="PASSWD2" name="PASSWD2" maxlength="16" type="password"/>
												비밀번호를 확인해주세요.
												<p class="alertPass2 alert-positive"></p>
											</div>
										</td>
									</tr>
									
									<tr>
										<th scope="row">이름 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="NAME" name="NAME"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="이름" fw-msg="" class="inputTypeText" placeholder=""
											value="${row.NAME}" readonly type="text"> <span id="idMsg"></span>회원가입 후 수정이 불가능합니다</td>
									</tr>
									
									<tr>
										<th scope="row">주민등록번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="BIRTH" name="BIRTH" maxlength="8"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="주민등록번호" fw-msg="" class="inputTypeText" placeholder=""
											value="${row.BIRTH}" readonly type="text"> <span id="idMsg"></span></td>
									</tr>
									
									<tr>
										<th scope="row">우편번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input type="text" id="ZIPCODE" value="${row.ZIPCODE}"
								name="ZIPCODE" size="28" placeholder="검색버튼이용해주세요">
								<input type="button" value="검색" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
									</tr>
									
									<tr>
										<th scope="row">주소 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input type="text" id="ADDR1" value="${row.ADDR1}"
								name="ADDR1" placeholder="자동기입" size="60"> <br>
								<input type="text" id="ADDR2" value="${row.ADDR2}" name="ADDR2" placeholder="상제주소를 입력해주세요"size="60"> <span id="idMsg"></span></td>
									</tr>
								
									
									
									<tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="필수"></th>
										<td><input id="PHONE" name="PHONE" maxlength="11"
											fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="${row.PHONE}" type="text"></td>
									</tr>
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input name="EMAIL1" value="${row.EMAIL}" type="text" class="box" id="EMAIL1" size="25" readonly> 이메일 변경을 원할시 관리자에게 문의바랍니다.
										<!-- @ <input name="EMAIL2" type="text"
										class="box" id="EMAIL2" size="20"> <select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>선택하세요</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">직접입력</option>
									</select> -->
									<span id="emailMsg"></span></td>
									</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
										
						<div class="btnArea center">
							<a href="/3T/member/mypage">수정취소</a> 
							<input type="submit" value="정보수정">
							<a href="/3T/member/deleteMemberForm">회원탈퇴</a>
						</div>
						</form>
						<!-- 회원 가입 정보 확인 레이어 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function() {
	$("#modulus").val("${Modulus}");
	$("#exponent").val("${Exponent}");
	
});

$("input[name=Now_PASSWD]").blur(function(){
	var NowPASSWD = $(this).val();
	var p = $(this).parent();
	
	var rsa = new RSAKey();
    rsa.setPublic($('#modulus').val(),$('#exponent').val());
	$.post("/3T/checkNowPass",{NowPASSWD:rsa.encrypt(NowPASSWD)},function(data)
	{
		if (!NowPASSWD){
			$(".alertNowPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>현재비밀번호를 입력해주세요.</span>");
			//$("input[name=chkid]").val("");
		} else if (data==1){
			$(".alertNowPass",p).removeClass("alert-negative").addClass("alert-positive").html("<span style='color:blue'>비밀번호가 확인되었습니다.</span>");
			//$("input[name=chkid]").val("");
		}
		else
		{
			$(".alertNowPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>비밀번호가 틀렸습니다.</span>");
		}
	});		
});

$("input[name=PASSWD]").blur(function(){ 
	var PASSWD = $(this).val();
	var ID = $("input[name=MEMBER_ID]").val();
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
  	

  	
	console.log(PASSWD);
	console.log(PASSWD2);
	
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
	else if (PASSWD.indexOf(ID) > -1)
	{
		$(".alertPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>[비밀번호]는 사용자ID와 동일하거나 이를 포함한 비밀번호를 사용하실 수 없습니다.</span>");
		
		if(!ID)
		{
			$(".alertPass",p).removeClass("alert-positive").addClass("alert-negative").html("<span style='color:red'>사용자 ID를 입력해주세요.</span>");
		}
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
		if(PASSWD2 == "")
		{
			$(".alertPass2",p).removeClass("alert-negative").addClass("alert-positive").html("<span style='color:red'>비밀번호를 작성해주세요</span>");
		}
		
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
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
#form td.tdstyle2 {background-color :#000000; border:#ccc 1px solid; width:400px; padding:20px; font-size:14px; font-weight:bold; color:#000;}

</style>
<script language="javascript">
	  function check() {

		var f = document.Reg_form; 
	

		if (f.M_ID.value == "") {
			alert("아이디를 입력해주십시오");
			f.M_ID.focus();
			return false;
		}

		/* if (f.confirm_id.value == "") {
			alert("아이디 중복체크를해주세요");
			f.M_ID.focus();
			
			return false;
		} */
		if (f.M_PASSWD.value == "") {
			alert("비밀번호를 입력해주십시오");
			f.M_PASSWD.focus();
			
			return false;
		}

		if (f.M_PASSWD.value != f.M_PASSWD2.value) {
			alert("비빌번호를 다르게 입력했습니다.");
			f.M_PASSWD2.select();
			return false;
		}

		if (f.M_NAME.value == "") {
			alert("이름을 입력해주십시오");
			f.M_NAME.focus();
			return false;
		}

		if (f.M_JUMIN1.value == "") {
			alert("주민등록번호를 입력해주십시오");
			f.M_JUMIN1.focus();
			return false;
		}

		if (f.M_JUMIN2.value == "") {
			alert("주민등록번호를 입력해주십시오");
			f.M_JUMIN2.focus();
			return false;
		}

		if (f.M_ZIPCODE.value == "") {
			alert("우편번호를 검색하여 입력해주십시오");
			f.M_ZIPCODE.focus();
			return false;
		}

		if (f.M_ADDR1.value == "") {
			alert("기본주소를 입력해주십시오");
			f.M_ADDR1.focus();
			return false;
		}

		if (f.M_ADDR2.value == "") {
			alert("상세주소를 입력해주십시오");
			f.M_ADDR2.focus();
			return false;
		}

		if (f.M_PHONE.value == "") {
			alert("전화번호를 입력해주십시오");
			f.phone.focus();
			return false;
		}


		if (f.M_EMAIL.value == "") {
			alert("이메일을 입력해주십시오");
			f.M_EMAIL.focus();
			return false;
		}
		
		

		
	}   

	  function openConfirmId(){
			var url="CheckIdAction.action?M_ID="+ document.Reg_form.M_ID.value;
			var chk=document.Reg_form;
			if(chk.M_ID.value==""){
				alert("ID를 입력하세요");
				chk.M_ID.focus();
				return false;
			}
			if (chk.M_ID.value.length < 2) {
				alert("최소 2자리 이상 입력해주세요!");
				chk.M_ID.focus();
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
			Reg_form.M_EMAIL2.readonly = false;
			Reg_form.M_EMAIL2.value = '';
			Reg_form.M_EMAIL2.focus();
		} else {
			Reg_form.M_EMAIL2.readonly = true;
			Reg_form.M_EMAIL2.value = Reg_form.email3.value;
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

						document.getElementById('M_ZIPCODE').value = data.zonecode; //5자리 새우편번호 사용

						document.getElementById('M_ADDR1').value = fullAddr;

						// 커서를 상세주소 필드로 이동한다.

						document.getElementById('M_ADDR2').focus();

					}

				}).open();

	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<link href="/3T/user/member/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
	<form name="Reg_form" action="joinAction.action" method="post" onsubmit="return check()">


		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" style="padding: 50px;">
					<table width="700" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="40" align="center" class="text01 formbar" colspan="2">회원가입</td>
						</tr>
						<tr>
							<td height="60"></td>
						</tr>
					</table>
					<table width="700" border="0" cellspacing="0" cellpadding="0"
						id="form">
						<tr>
							<td align="left" class="tdstyle2" colspan="2">기본정보</td>
						</tr>
						<tr>
							<td class="tdstyle1">아이디<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_ID" maxlength="20"
								size="28"> <input type="button" name="confirm_id"
								value="중복확인" onclick="openConfirmId()" >
								<input type="hidden" name="confirm_id" value=""> 영문/숫자를
								이용하여 4~12자로 입력하세요</td>
						</tr>
						<tr>
							<td class="tdstyle1">비밀번호<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="password" maxlength="14"
								name="M_PASSWD" size="30"> 영문/숫자를 이용하여 4~12자로 입력하세요</td>
						</tr>
						<tr>
							<td class="tdstyle1">비밀번호확인<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="password"  maxlength="14"
								name="M_PASSWD2" size="30"> 비밀번호를 재입력 해주세요</td>
						</tr>
						<tr>
							<td class="tdstyle1">이 름<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_NAME"
								size="28"> 회원가입 후 수정이 불가능합니다</td>
						</tr>
						<tr>
							<td class="tdstyle1">주민등록번호<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_JUMIN1" 
								size="6" maxlength="6"> - <input type="password" name="M_JUMIN2"
								size="7"maxlength="7"></td>
						</tr>
						<tr>
							<td class="tdstyle1">우편번호<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="M_ZIPCODE"
								name="M_ZIPCODE" size="28" placeholder="검색버튼이용해주세요">
								<input type="button" value="검색" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
						</tr>
						<tr>
							<td class="tdstyle1">주 소<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="M_ADDR1"
								name="M_ADDR1" placeholder="자동기입" size="60"> <br>
								<input type="text" id="M_ADDR2" name="M_ADDR2" placeholder="상제주소를 입력해주세요"size="60"></td>
						</tr>

						<tr>
							<td class="tdstyle1">휴대폰번호<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_PHONE" maxlength="11"
								size="28" placeholder="ex)01055551111"> "-" 없이 숫자만 입력하세요</td>
						</tr>
						<tr>
							<td class="tdstyle1">이메일<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">
									<input name="M_EMAIL1" type="text" class="box" id="M_EMAIL1"
										size="15"> @ <input name="M_EMAIL2" type="text"
										class="box" id="M_EMAIL2" size="20"> <select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>선택하세요</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">직접입력</option>
									</select>


								
						</tr>


					</table>
					<table width="700" border="0" cellspacing="0" cellpadding="0"
						id="form">

						<tr>
							<td align="left" class="tdstyle2" colspan="2">회원추가정보</td>
						</tr>
						<tr>
							<td class="tdstyle1">환불계좌 정보<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">예금주<input type="text"
								name="M_DEPOSITOR" size="28"><br> <br>
								은행명<input type="text" name="M_NAME_BANK" size="28"><br>
								<br> 계좌번호<input type="text" name="ACCOUNT_NO" size="28"
								placeholder="ex)111-212-555000"><br>
							</td>

						</tr>

						</td>
						</tr>
						<tr>
							<td colspan="2" align="center" style="border: 0px;"><input
								type="submit" value="회원가입" class="submit"> <input
								type="button" value="취 소"
								onclick="location.href='main.action'" class="hreflink"></td>
						</tr>
					</table>


					</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,300,400,500,700,900,100italic,300italic,400italic,700italic,900italic"
	rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin" rel="stylesheet"
	type="text/css">
<link href="//fonts.googleapis.com/css?family=Cabin:700"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/fonts/font-awesome.css">
<link
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"
	rel="stylesheet">
<meta name="format-detection" content="telephone=no">
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="http://www.google-analytics.com/ga.js"></script>
<script
	src="https://connect.facebook.net/signals/config/829030643890604?v=2.8.25&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script src="/js/jquery.gray.js"></script>
<!--gray IE 용-->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery.als-1.6.min.js"></script>
<!--[if IE]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '829030643890604'); // Insert your pixel ID here.
	fbq('track', 'PageView');
</script>
<link rel="canonical" href="http://asclo.com/member/join.html">
<link rel="alternate" href="http://m.asclo.com/member/join.html">
<meta property="og:url" content="http://asclo.com/member/join.html">
<meta property="og:site_name" content="애즈클로">
<meta property="og:type" content="website">
<link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico">
<meta http-equiv="ImageToolbar" content="No">
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

<script type="text/javascript">
	var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
		"common_member_id_crypt" : ""
	};
</script>

<!-- <script type="text/javascript">
	var EC_SDE_SHOP_NUM = 1;
	var SHOP = {
		getLanguage : function() {
			return "ko_KR";
		},
		getCurrency : function() {
			return "KRW";
		},
		getFlagCode : function() {
			return "KR";
		},
		isMultiShop : function() {
			return true;
		},
		isDefaultShop : function() {
			return true;
		},
		isDefaultLanguageShop : function(sLanguageCode) {
			return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode);
		},
		isKR : function() {
			return true;
		},
		isUS : function() {
			return false;
		},
		isJP : function() {
			return false;
		},
		isCN : function() {
			return false;
		},
		isTW : function() {
			return false;
		},
		isES : function() {
			return false;
		},
		isPT : function() {
			return false;
		},
		isLanguageShop : function(sLanguageCode) {
			return sLanguageCode === "ko_KR";
		},
		getDefaultShopNo : function() {
			return 1;
		},
		getProductVer : function() {
			return 2;
		},
		isSDE : function() {
			return true;
		}
	};
	var EC_COMMON_UTIL = {
		convertSslForString : function(sString) {
			return sString.replace(/http:/gi, '');
		},
		convertSslForHtml : function(sHtml) {
			return sHtml
					.replace(
							/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig,
							'$1$2');
		},
		getProtocol : function() {
			return 'http';
		},
		moveSsl : function() {
			if (EC_COMMON_UTIL.getProtocol() === 'http') {
				var oLocation = jQuery(window.location);
				var sUrl = 'https://' + oLocation.attr('host')
						+ oLocation.attr('pathname') + oLocation.attr('search');
				window.location.replace(sUrl);
			}
		}
	};
</script>
<script type="text/javascript">
	var EC_ROOT_DOMAIN = "cafe24.com";
	var EC_GLOBAL_INFO = (function() {
		var oData = {
			"base_domain" : "hi880515.cafe24.com",
			"root_domain" : "cafe24.com",
			"is_global" : false,
			"country_code" : "KR",
			"language_code" : "ko_KR"
		};

		return {
			getBaseDomain : function() {
				return oData['base_domain'];
			},

			getRootDomain : function() {
				return oData['root_domain'];
			},

			isGlobal : function() {
				return oData['is_global'];
			},

			getCountryCode : function() {
				return oData['country_code'];
			},

			getLanguageCode : function() {
				return oData['language_code'];
			}
		};
	})();
</script> -->
<script language="javascript">
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

<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=tZXNSgQxDMfvO159jrjCwnr1pFffoB-ZaTVtStqC-_bWD0QZBJlpjw3JL8k_JAXHAeF4K5CEF1EBBDNXMQgmZ5iFYwHDIXC8aoZr-I8_mkNmqsVzPGh-3RhYS9malNQFZVtoUZrwj1CVEtyzEgtPPyEredBMNaNkcP58vjkdT5CqJm8mVwJBtjhZzH6JkF98vPtgBLaVEAIGjQLP7HfwWvdcC2iVvelS4Ar4adjX8dyUnxRRx7LaHNsDV-Pvxa1-ALQwU_FpANkhjcC2bbDVlBFktfioCo5QWekB1NWN6gb-dTU7ikAjxG1epsv5-8owV6JsBDH2pGZUYtwDKrvnOKy5xAsXTj2Rpi3BwnLpydTvH9djnLkn1H2r-QY&amp;type=css&amp;k=f17a190bd4804f6def26a3d625199fc1a17f114c&amp;t=1508869165">
<link rel="stylesheet" type="text/css"
	href="/ind-script/optimizer.php?filename=rczBDcMgDEDRAei1c7g9IKXjEHDACtgIm1bdvukOnL_-gyINAaObikOh0LY9_NNDn3ul6Iq1CprQJVTKDHoSvyCqQpM0K0INX5kGasGwSpbjuF31DotZXqkOysVcQ54r1SQfXm3uEkZyldR6iGfI6PxK_hAxHCvFKPy-fhLu8e_-AA&amp;type=css&amp;k=bd8e2d0a1c12081773378621cd32acfc0ff27aac&amp;t=1499901149">

<title>3T</title>
<meta name="path_role" content="MEMBER_JOIN">
<meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰">
<meta name="keywords"
	content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디">
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534494017641&amp;cv=9&amp;fst=1534494017641&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fasclo.com%2Fmember%2Fjoin.html&amp;ref=http%3A%2F%2Fasclo.com%2F&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4"></script>

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
											(영문소문자/숫자, 4~16자)</td>
									</tr>
									<tr>
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
										<td><input name="EMAIL1" value="${row.EMAIL}" type="text" class="box" id="EMAIL1"
										size="15"> @ <input name="EMAIL2" type="text"
										class="box" id="EMAIL2" size="20"> <select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>선택하세요</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">직접입력</option>
									</select>
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
</html>
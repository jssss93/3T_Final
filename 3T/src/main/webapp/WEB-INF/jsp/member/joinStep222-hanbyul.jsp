<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
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

<script type="text/javascript">
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
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<caption>회원 기본정보</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">아이디 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="member_id" name="member_id"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text"> <span id="idMsg"></span>
											(영문소문자/숫자, 4~16자)</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="passwd" name="passwd"
											fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> (영문
											대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
									</tr>
									<tr>
										<th scope="row">비밀번호 확인 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="user_passwd_confirm"
											name="user_passwd_confirm"
											fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인"
											fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> <span
											id="pwConfirmMsg"></span></td>
									</tr>
									<tr class="">
										<th scope="row">비밀번호 확인 질문 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><select id="hint" name="hint" fw-filter="isFill"
											fw-label="hint" fw-msg="">
												<option value="hint_01">기억에 남는 추억의 장소는?</option>
												<option value="hint_02">자신의 인생 좌우명은?</option>
												<option value="hint_03">자신의 보물 제1호는?</option>
												<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
												<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
												<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
												<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
												<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
												<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
												<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
												<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
												<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
												<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
												<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
												<option value="hint_15">내가 좋아하는 캐릭터는?</option>
										</select></td>
									</tr>
									<tr class="">
										<th scope="row">비밀번호 확인 답변 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="hint_answer" name="hint_answer"
											fw-filter="isFill" fw-label="비밀번호 확인시 답변" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text"></td>
									</tr>
									<tr>
										<th scope="row" id="nameTitle">이름 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><span id="nameContents"></span> <span id="under14Msg"
											class="displaynone">14세 미만 사용자는 법정대리인 동의가 필요합니다.</span></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">이름(영문) <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="name_en" name="name_en"
											fw-filter="isMax[30]" fw-label="이름(영문)" fw-msg=""
											class="ec-member-name" placeholder="" maxlength="30" value=""
											type="text"> (이름 - 성 형식으로 입력해 주세요.)</td>
									</tr>
									<!-- 외국인 회원 정보 -->
									<tr style="display: none;">
										<th scope="row" id="ssnTitle"></th>
										<td id="ssnContents"></td>
									</tr>
									<!-- //외국인 회원 정보 -->
									<tr id="companyRow" style="display: none;">
										<th scope="row">상호명 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td id="companyName"><input id="cname" name="cname"
											fw-filter="isMax[20]" fw-label="상호명" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text"></td>
									</tr>
									<tr id="companyNoRow" style="display: none;">
										<th scope="row">사업자번호 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td id="companySsn"><input id="cssn" name="cssn"
											fw-filter="isMax[20]" fw-label="사업자 번호" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text"></td>
									</tr>
									<tr id="nation" style="display: none;">
										<th>국적 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><select id="citizenship" name="citizenship"
											fw-filter="" fw-label="국적" fw-msg="">
												<option value="" selected="selected">선택하세요</option>
												<option value="AF">AFGHANISTAN</option>
												<option value="AL">ALBANIA</option>
												<option value="DZ">ALGERIA</option>
												<option value="AS">AMERICAN SAMOA</option>
												<option value="AD">ANDORRA</option>
												<option value="AO">ANGOLA</option>
												<option value="AI">ANGUILLA</option>
												<option value="AQ">ANTARCTICA</option>
												<option value="AG">ANTIGUA AND BARBUDA</option>
												<option value="AR">ARGENTINA</option>
												<option value="AM">ARMENIA</option>
												<option value="AW">ARUBA</option>
												<option value="AU">AUSTRALIA</option>
												<option value="AT">AUSTRIA</option>
												<option value="AZ">AZERBAIJAN</option>
												<option value="BS">BAHAMAS</option>
												<option value="BH">BAHRAIN</option>
												<option value="BD">BANGLADESH</option>
												<option value="BB">BARBADOS</option>
												<option value="BE">BELGIUM</option>
												<option value="BZ">BELIZE</option>
												<option value="BJ">BENIN</option>
												<option value="BM">BERMUDA</option>
												<option value="BT">BHUTAN</option>
												<option value="BO">BOLIVIA</option>
												<option value="BA">BOSNIA HERCEGOVINA</option>
												<option value="BW">BOTSWANA</option>
												<option value="BV">BOUVET ISLAND</option>
												<option value="BR">BRAZIL</option>
												<option value="IO">BRITISH INDIAN OCEAN TERRITORY</option>
												<option value="BN">BRUNEI DARUSSALAM</option>
												<option value="BG">BULGARIA</option>
												<option value="BF">BURKINA FASO</option>
												<option value="BI">BURUNDI</option>
												<option value="BY">BELARUS</option>
												<option value="KH">CAMBODIA</option>
												<option value="CM">CAMEROON</option>
												<option value="CA">CANADA</option>
												<option value="CV">CAPE VERDE</option>
												<option value="KY">CAYMAN ISLANDS</option>
												<option value="CF">CENTRAL AFRICAN REPUBLIC</option>
												<option value="TD">CHAD</option>
												<option value="CL">CHILE</option>
												<option value="CN">CHINA</option>
												<option value="CX">CHRISTMAS ISLAND</option>
												<option value="CC">COCOS (KEELING) ISLANDS</option>
												<option value="CO">COLOMBIA</option>
												<option value="KM">COMOROS</option>
												<option value="CG">CONGO</option>
												<option value="CK">COOK ISLANDS</option>
												<option value="CR">COSTA RICA</option>
												<option value="CI">COTE D'IVOIRE</option>
												<option value="HR">CROATIA</option>
												<option value="CU">CUBA</option>
												<option value="CY">CYPRUS</option>
												<option value="CZ">CZECH REPUBLIC</option>
												<option value="CS">CZECHOSLOVAKIA</option>
												<option value="DK">DENMARK</option>
												<option value="DJ">DJIBOUTI</option>
												<option value="DM">DOMINICA</option>
												<option value="DO">DOMINICAN REPUBLIC</option>
												<option value="TP">EAST TIMOR</option>
												<option value="EC">ECUADOR</option>
												<option value="EG">EGYPT</option>
												<option value="SV">EL SALVADOR</option>
												<option value="GQ">EQUATORIAL GUINEA</option>
												<option value="EE">ESTONIA</option>
												<option value="ET">ETHIOPIA</option>
												<option value="FK">FALKLAND ISLANDS</option>
												<option value="FO">FAROE ISLANDS</option>
												<option value="FJ">FIJI</option>
												<option value="FI">FINLAND</option>
												<option value="FR">FRANCE</option>
												<option value="GF">FRENCH GUIANA</option>
												<option value="PF">FRENCH POLYNESIA</option>
												<option value="TF">FRENCH SOUTHERN TERRITORIES</option>
												<option value="GA">GABON</option>
												<option value="GM">GAMBIA</option>
												<option value="GE">GEORGIA</option>
												<option value="DE">GERMANY</option>
												<option value="GH">GHANA</option>
												<option value="GI">GIBRALTAR</option>
												<option value="GR">GREECE</option>
												<option value="GL">GREENLAND</option>
												<option value="GD">GRENADA</option>
												<option value="GP">GUADELOUPE</option>
												<option value="GU">GUAM</option>
												<option value="GT">GUATEMALA</option>
												<option value="GN">GUINEA</option>
												<option value="GW">GUINEA-BISSAU</option>
												<option value="GY">GUYANA</option>
												<option value="HT">HAITI</option>
												<option value="HM">HEARD AND MC DONALD ISLANDS</option>
												<option value="HN">HONDURAS</option>
												<option value="HK">HONG KONG</option>
												<option value="HU">HUNGARY</option>
												<option value="IS">ICELAND</option>
												<option value="IN">INDIA</option>
												<option value="ID">INDONESIA</option>
												<option value="IR">IRAN (ISLAMIC REPUBLIC OF)</option>
												<option value="IQ">IRAQ</option>
												<option value="IE">IRELAND</option>
												<option value="IL">ISRAEL</option>
												<option value="IT">ITALY</option>
												<option value="JM">JAMAICA</option>
												<option value="JP">JAPAN</option>
												<option value="JO">JORDAN</option>
												<option value="KZ">KAZAKHSTAN</option>
												<option value="KE">KENYA</option>
												<option value="KI">KIRIBATI</option>
												<option value="KP">KOREA, DEMOCRATIC PEOPLE'S
													REPUBLIC OF</option>
												<option value="KR">KOREA, REPUBLIC OF</option>
												<option value="KW">KUWAIT</option>
												<option value="KG">KYRGYZSTAN</option>
												<option value="LA">LAO PEOPLE'S DEMOCRATIC REPUBLIC</option>
												<option value="LV">LATVIA</option>
												<option value="LB">LEBANON</option>
												<option value="LS">LESOTHO</option>
												<option value="LR">LIBERIA</option>
												<option value="LY">LIBYAN ARAB JAMAHIRIYA</option>
												<option value="LI">LIECHTENSTEIN</option>
												<option value="LT">LITHUANIA</option>
												<option value="LU">LUXEMBOURG</option>
												<option value="MO">MACAU</option>
												<option value="MG">MADAGASCAR</option>
												<option value="MW">MALAWI</option>
												<option value="MY">MALAYSIA</option>
												<option value="MV">MALDIVES</option>
												<option value="ML">MALI</option>
												<option value="MT">MALTA</option>
												<option value="MH">MARSHALL ISLANDS</option>
												<option value="MQ">MARTINIQUE</option>
												<option value="MR">MAURITANIA</option>
												<option value="MU">MAURITIUS</option>
												<option value="MX">MEXICO</option>
												<option value="FM">MICRONESIA</option>
												<option value="MD">MOLDOVA, REPUBLIC OF</option>
												<option value="MC">MONACO</option>
												<option value="MN">MONGOLIA</option>
												<option value="MS">MONTSERRAT</option>
												<option value="MA">MOROCCO</option>
												<option value="MZ">MOZAMBIQUE</option>
												<option value="MM">MYANMAR</option>
												<option value="NA">NAMIBIA</option>
												<option value="NR">NAURU</option>
												<option value="NP">NEPAL</option>
												<option value="NL">NETHERLANDS</option>
												<option value="AN">NETHERLANDS ANTILLES</option>
												<option value="NT">NEUTRAL ZONE</option>
												<option value="NC">NEW CALEDONIA</option>
												<option value="NZ">NEW ZEALAND</option>
												<option value="NI">NICARAGUA</option>
												<option value="NE">NIGER</option>
												<option value="NG">NIGERIA</option>
												<option value="NU">NIUE</option>
												<option value="NF">NORFOLK ISLAND</option>
												<option value="MP">NORTHERN MARIANA ISLANDS</option>
												<option value="NO">NORWAY</option>
												<option value="OM">OMAN</option>
												<option value="PK">PAKISTAN</option>
												<option value="PW">PALAU</option>
												<option value="PA">PANAMA</option>
												<option value="PG">PAPUA NEW GUINEA</option>
												<option value="PY">PARAGUAY</option>
												<option value="PE">PERU</option>
												<option value="PH">PHILIPPINES</option>
												<option value="PN">PITCAIRN</option>
												<option value="PL">POLAND</option>
												<option value="PT">PORTUGAL</option>
												<option value="PR">PUERTO RICO</option>
												<option value="QA">QATAR</option>
												<option value="RE">REUNION</option>
												<option value="RO">ROMANIA</option>
												<option value="RU">RUSSIAN FEDERATION</option>
												<option value="RW">RWANDA</option>
												<option value="SH">ST. HELENA</option>
												<option value="KN">SAINT KITTS AND NEVIS</option>
												<option value="LC">SAINT LUCIA</option>
												<option value="PM">ST. PIERRE AND MIQUELON</option>
												<option value="VC">SAINT VINCENT AND THE GRENADINES</option>
												<option value="WS">SAMOA</option>
												<option value="SM">SAN MARINO</option>
												<option value="ST">SAO TOME AND PRINCIPE</option>
												<option value="SA">SAUDI ARABIA</option>
												<option value="SN">SENEGAL</option>
												<option value="SC">SEYCHELLES</option>
												<option value="SL">SIERRA LEONE</option>
												<option value="SG">SINGAPORE</option>
												<option value="SK">SLOVAKIA</option>
												<option value="SI">SLOVENIA</option>
												<option value="SB">SOLOMON ISLANDS</option>
												<option value="SO">SOMALIA</option>
												<option value="ZA">SOUTH AFRICA</option>
												<option value="ES">SPAIN</option>
												<option value="LK">SRI LANKA</option>
												<option value="SD">SUDAN</option>
												<option value="SR">SURINAME</option>
												<option value="SJ">SVALBARD AND JAN MAYEN ISLANDS</option>
												<option value="SZ">SWAZILAND</option>
												<option value="SE">SWEDEN</option>
												<option value="CH">SWITZERLAND</option>
												<option value="SY">SYRIAN ARAB REPUBLIC</option>
												<option value="TW">TAIWAN, PROVINCE OF CHINA</option>
												<option value="TJ">TAJIKISTAN</option>
												<option value="TZ">TANZANIA, UNITED REPUBLIC OF</option>
												<option value="TH">THAILAND</option>
												<option value="TG">TOGO</option>
												<option value="TK">TOKELAU</option>
												<option value="TO">TONGA</option>
												<option value="TT">TRINIDAD AND TOBAGO</option>
												<option value="TN">TUNISIA</option>
												<option value="TR">TURKEY</option>
												<option value="TM">TURKMENISTAN</option>
												<option value="TC">TURKS AND CAICOS ISLANDS</option>
												<option value="TV">TUVALU</option>
												<option value="UG">UGANDA</option>
												<option value="UA">UKRAINE</option>
												<option value="AE">UNITED ARAB EMIRATES</option>
												<option value="GB">UNITED KINGDOM</option>
												<option value="US">UNITED STATES</option>
												<option value="UM">UNITED STATES MINOR OUTLYING
													ISLANDS</option>
												<option value="UY">URUGUAY</option>
												<option value="SU">USSR</option>
												<option value="UZ">UZBEKISTAN</option>
												<option value="VU">VANUATU</option>
												<option value="VA">VATICAN CITY STATE (HOLY SEE)</option>
												<option value="VE">VENEZUELA</option>
												<option value="VN">VIET NAM</option>
												<option value="VG">VIRGIN ISLANDS (BRITISH)</option>
												<option value="VI">VIRGIN ISLANDS (U.S.)</option>
												<option value="WF">WALLIS AND FUTUNA ISLANDS</option>
												<option value="EH">WESTERN SAHARA</option>
												<option value="YE">YEMEN, REPUBLIC OF</option>
												<option value="YU">YUGOSLAVIA</option>
												<option value="ZR">ZAIRE</option>
												<option value="ZM">ZAMBIA</option>
												<option value="ZW">ZIMBABWE</option>
										</select></td>
									</tr>
									<tr class="">
										<th scope="row">주소 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="필수"></th>
										<td><input id="postcode1" name="postcode1"
											fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											maxlength="14" value="" type="text"> <a href="#none"
											onclick="" id="postBtn"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif"
												alt="우편번호"></a><br> <input id="addr1" name="addr1"
											fw-filter="isFill" fw-label="주소" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											value="" type="text"> 기본주소<br> <input id="addr2"
											name="addr2" fw-filter="" fw-label="주소" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text">
											나머지주소</td>
									</tr>
									<tr class="">
										<th scope="row">일반전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="phone1" name="phone[]"
											fw-filter="isNumber&amp;isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="">
												<option value="02">02</option>
												<option value="031">031</option>
												<option value="032">032</option>
												<option value="033">033</option>
												<option value="041">041</option>
												<option value="042">042</option>
												<option value="043">043</option>
												<option value="044">044</option>
												<option value="051">051</option>
												<option value="052">052</option>
												<option value="053">053</option>
												<option value="054">054</option>
												<option value="055">055</option>
												<option value="061">061</option>
												<option value="062">062</option>
												<option value="063">063</option>
												<option value="064">064</option>
												<option value="0502">0502</option>
												<option value="0503">0503</option>
												<option value="0504">0504</option>
												<option value="0505">0505</option>
												<option value="0506">0506</option>
												<option value="0507">0507</option>
												<option value="070">070</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="phone2" name="phone[]" maxlength="4"
											fw-filter="isNumber&amp;isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="" value="" type="text">-<input
											id="phone3" name="phone[]" maxlength="4"
											fw-filter="isNumber&amp;isNumber" fw-label="일반전화"
											fw-alone="N" fw-msg="" value="" type="text"></td>
									</tr>
									<tr class="">
										<th scope="row">휴대전화 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="필수"></th>
										<td><select id="mobile1" name="mobile[]"
											fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="mobile2" name="mobile[]" maxlength="4"
											fw-filter="isNumber&amp;isFill" fw-label="휴대전화" fw-alone="N"
											fw-msg="" value="" type="text">-<input id="mobile3"
											name="mobile[]" maxlength="4" fw-filter="isNumber&amp;isFill"
											fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"></td>
									</tr>
									<tr>
										<th scope="row">이메일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="필수"></th>
										<td><input id="email1" name="email1" fw-filter="isFill"
											fw-label="이메일" fw-alone="N" fw-msg="" class="mailId" value=""
											type="text">@<input id="email2" name="email2"
											fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg=""
											class="mailAddress" readonly="readonly" value="" type="text"><select
											id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N"
											fw-msg="">
												<option value="" selected="selected">- 이메일 선택 -</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="empas.com">empas.com</option>
												<option value="korea.com">korea.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">직접입력</option>
										</select> <span id="emailMsg"></span></td>
									</tr>
									<!-- <tr class="">
									<th scope="row">평생회원</th>
									<td><input id="is_lifetime0" name="is_lifetime"
										fw-filter="" fw-label="is_lifetime" fw-msg="" value="T"
										type="radio"><label for="is_lifetime0">동의함</label> <input
										id="is_lifetime1" name="is_lifetime" fw-filter=""
										fw-label="is_lifetime" fw-msg="" value="F" type="radio"
										checked="checked"><label for="is_lifetime1">동의안함</label>
										<ul class="txtDesc">
											<li>평생회원으로 가입하시면 <strong>애즈클로</strong> 회원 탈퇴시까지는 휴면회원으로
												전환되지 않으며, 고객님의 개인정보가 탈퇴시까지 안전하게 보관됩니다.
											</li>
											<li class="displaynone">지금 평생회원으로 가입하시면 쿠폰혜택을 드립니다.
												(쿠폰혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.)</li>
										</ul></td>
								</tr> -->
								</tbody>
							</table>
						</div>
						<h3 class=" ">추가정보</h3>
						<div class="ec-base-table typeWrite ">
							<table border="1" summary="">
								<caption>회원 추가정보</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr class="displaynone">
										<th scope="row">별명 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="nick_name" name="nick_name" fw-filter=""
											fw-label="별명" fw-msg="" class="inputTypeText" placeholder=""
											maxlength="20" value="" type="text">
											<p id="nickMsg"></p></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">성별 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="is_sex0" name="is_sex" fw-filter=""
											fw-label="성별" fw-msg="" value="M" type="radio"><label
											for="is_sex0">남자</label> <input id="is_sex1" name="is_sex"
											fw-filter="" fw-label="성별" fw-msg="" value="F" type="radio"><label
											for="is_sex1">여자</label></td>
									</tr>
									<tr class="">
										<th scope="row">생년월일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="필수"></th>
										<td><input id="birth_year" name="birth_year"
											fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="4" value=""
											type="text"> 년 <input id="birth_month"
											name="birth_month" fw-filter="isFill" fw-label="생년월일"
											fw-msg="" class="inputTypeText" placeholder="" maxlength="2"
											value="" type="text"> 월 <input id="birth_day"
											name="birth_day" fw-filter="isFill" fw-label="생년월일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> 일 <span class="gIndent20 "><input
												id="is_solar_calendar0" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="T"
												type="radio" checked="checked"><label
												for="is_solar_calendar0">양력</label> <input
												id="is_solar_calendar1" name="is_solar_calendar"
												fw-filter="isFill" fw-label="생년월일" fw-msg="" value="F"
												type="radio"><label for="is_solar_calendar1">음력</label></span>
										</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">결혼기념일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="marry_year" name="marry_year" fw-filter=""
											fw-label="결혼 기념일" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="4" value="" type="text"> 년
											<input id="marry_month" name="marry_month" fw-filter=""
											fw-label="결혼 기념일" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="2" value="" type="text"> 월
											<input id="marry_day" name="marry_day" fw-filter=""
											fw-label="결혼 기념일" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="2" value="" type="text"> 일</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">배우자생일 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="partner_year" name="partner_year"
											fw-filter="" fw-label="배우자 생일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="4" value=""
											type="text"> 년 <input id="partner_month"
											name="partner_month" fw-filter="" fw-label="배우자 생일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> 월 <input id="partner_day"
											name="partner_day" fw-filter="" fw-label="배우자 생일" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> 일</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">자녀 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="child" name="child" fw-filter="isFill"
											fw-label="child" fw-msg="">
												<option value="child_00">선택</option>
												<option value="child_01">없음</option>
												<option value="child_02">1</option>
												<option value="child_03">2</option>
												<option value="child_04">3</option>
												<option value="child_05">4</option>
												<option value="child_06">5</option>
												<option value="child_07">6</option>
												<option value="child_08">7</option>
												<option value="child_09">8</option>
												<option value="child_10">9</option>
												<option value="child_11">10 이상</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">최종학력 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="school" name="school" fw-filter="isFill"
											fw-label="school" fw-msg="">
												<option value="school_00">선택</option>
												<option value="school_01">초등학교재학</option>
												<option value="school_02">초등학교졸업</option>
												<option value="school_03">중학교재학</option>
												<option value="school_04">중학교졸업</option>
												<option value="school_05">고등학교재학</option>
												<option value="school_06">고등학교졸업</option>
												<option value="school_07">대학교재학</option>
												<option value="school_08">대학교졸업</option>
												<option value="school_09">대학원재학</option>
												<option value="school_10">대학원졸업이상</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">직종 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="job_class" name="job_class"
											fw-filter="isFill" fw-label="직종" fw-msg="">
												<option value="job_class_04">선택</option>
												<option value="job_class_05">서비스</option>
												<option value="job_class_06">교육</option>
												<option value="job_class_07">부동산/운송</option>
												<option value="job_class_08">농/임/수/광업</option>
												<option value="job_class_09">금융</option>
												<option value="job_class_10">유통</option>
												<option value="job_class_11">예술</option>
												<option value="job_class_12">의료</option>
												<option value="job_class_13">법률</option>
												<option value="job_class_14">제조/무역</option>
												<option value="job_class_15">건설업</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">직업 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="job" name="job" fw-filter="isFill"
											fw-label="직업" fw-msg="">
												<option value="job_00">선택</option>
												<option value="job_01">학생</option>
												<option value="job_02">회사원</option>
												<option value="job_03">자영업</option>
												<option value="job_04">무직</option>
												<option value="job_05">기타</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">연소득 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="earning" name="earning"
											fw-filter="isFill" fw-label="earning" fw-msg="">
												<option value="earning_00">선택</option>
												<option value="earning_01">없음</option>
												<option value="earning_02">1000만원 이하</option>
												<option value="earning_03">1200만원 이하</option>
												<option value="earning_04">1500만원 이하</option>
												<option value="earning_05">1800만원 이하</option>
												<option value="earning_06">2000만원 이하</option>
												<option value="earning_07">2500만원 이하</option>
												<option value="earning_08">3000만원 이하</option>
												<option value="earning_09">4000만원 이하</option>
												<option value="earning_10">5000만원 이하</option>
												<option value="earning_11">5000만원 이상</option>
												<option value="earning_12">기타</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">자동차 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="car" name="car" fw-filter="isFill"
											fw-label="car" fw-msg="">
												<option value="car_00">선택</option>
												<option value="car_01">없음</option>
												<option value="car_02">1000cc 이하</option>
												<option value="car_03">1000cc ~ 1500cc</option>
												<option value="car_04">1500cc ~ 2000cc</option>
												<option value="car_05">2000cc ~ 3000cc</option>
												<option value="car_06">3000cc ~ 4000cc</option>
												<option value="car_07">4000cc 이상</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">지역 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="region" name="region" fw-filter="isFill"
											fw-label="region" fw-msg="">
												<option value="region_00">선택</option>
												<option value="region_01">경기</option>
												<option value="region_02">서울</option>
												<option value="region_03">인천</option>
												<option value="region_04">강원</option>
												<option value="region_05">충남</option>
												<option value="region_06">충북</option>
												<option value="region_07">대전</option>
												<option value="region_08">경북</option>
												<option value="region_09">경남</option>
												<option value="region_10">대구</option>
												<option value="region_11">부산</option>
												<option value="region_12">울산</option>
												<option value="region_13">전북</option>
												<option value="region_14">전남</option>
												<option value="region_15">광주</option>
												<option value="region_16">제주</option>
												<option value="region_17">해외</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">인터넷 이용장소 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><select id="internet" name="internet"
											fw-filter="isFill" fw-label="internet" fw-msg="">
												<option value="internet_00">선택</option>
												<option value="internet_01">집</option>
												<option value="internet_02">회사</option>
												<option value="internet_03">PC방</option>
												<option value="internet_04">기타</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">관심분야 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td>
											<div class="interest">
												<input id="inter_check0" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="0" type="checkbox"><label
													for="inter_check0">애니메이션</label> <input id="inter_check1"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="1" type="checkbox"><label
													for="inter_check1">영화/연극</label> <input id="inter_check2"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="2" type="checkbox"><label
													for="inter_check2">놀이공원</label> <input id="inter_check3"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="3" type="checkbox"><label
													for="inter_check3">경품정보</label> <input id="inter_check4"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="4" type="checkbox"><label
													for="inter_check4">미술전시회</label> <input id="inter_check5"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="5" type="checkbox"><label
													for="inter_check5">클래식 콘서트</label> <input id="inter_check6"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="6" type="checkbox"><label
													for="inter_check6">패션/미용</label> <input id="inter_check7"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="7" type="checkbox"><label
													for="inter_check7">정치</label> <input id="inter_check8"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="8" type="checkbox"><label
													for="inter_check8">IT/정보통신</label> <input id="inter_check9"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="9" type="checkbox"><label
													for="inter_check9">스포츠</label> <input id="inter_check10"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="10" type="checkbox"><label
													for="inter_check10">요리/음식</label> <input id="inter_check11"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="11" type="checkbox"><label
													for="inter_check11">연예인</label> <input id="inter_check12"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="12" type="checkbox"><label
													for="inter_check12">여성/주부</label> <input id="inter_check13"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="13" type="checkbox"><label
													for="inter_check13">육아</label> <input id="inter_check14"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="14" type="checkbox"><label
													for="inter_check14">비즈니스/금융/부동산</label> <input
													id="inter_check15" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="15" type="checkbox"><label
													for="inter_check15">주식/증권</label> <input id="inter_check16"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="16" type="checkbox"><label
													for="inter_check16">스포츠/레져/취미</label> <input
													id="inter_check17" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="17" type="checkbox"><label
													for="inter_check17">경매/공동구매</label> <input
													id="inter_check18" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="18" type="checkbox"><label
													for="inter_check18">뉴스/정보</label> <input id="inter_check19"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="19" type="checkbox"><label
													for="inter_check19">컴퓨터/게임</label> <input
													id="inter_check20" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="20" type="checkbox"><label
													for="inter_check20">대학교/대학원정보</label> <input
													id="inter_check21" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="21" type="checkbox"><label
													for="inter_check21">건강/의료</label> <input id="inter_check22"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="22" type="checkbox"><label
													for="inter_check22">자동차/여행</label> <input
													id="inter_check23" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="23" type="checkbox"><label
													for="inter_check23">쇼핑/전자상거래</label> <input
													id="inter_check24" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="24" type="checkbox"><label
													for="inter_check24">구인/구직</label> <input id="inter_check25"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="25" type="checkbox"><label
													for="inter_check25">어학강좌</label> <input id="inter_check26"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="26" type="checkbox"><label
													for="inter_check26">기타등등</label>
											</div>
										</td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="add1" name="add1" fw-filter=""
											fw-label="추가항목1" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="add2" name="add2" fw-filter=""
											fw-label="추가항목2" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="add3" name="add3" fw-filter=""
											fw-label="추가항목3" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="add4" name="add4" fw-filter=""
											fw-label="추가항목4" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">추천인 아이디 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td><input id="reco_id" name="reco_id" fw-filter=""
											fw-label="추천인 ID" fw-msg="" class="inputTypeText"
											placeholder="" value="" type="text"></td>
									</tr>
									<tr class="">
										<th scope="row">환불계좌 정보 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="필수"></th>
										<td>
											<dl class="ec-base-desc typeBullet">
												<dt>예금주</dt>
												<dd>
													<input id="bank_account_owner" name="bank_account_owner"
														fw-filter="" fw-label="예금주" fw-msg=""
														class="inputTypeText" placeholder="" autocomplete="off"
														value="" type="text">
												</dd>
												<dt>은행명</dt>
												<dd>
													<select id="refund_bank_code" name="refund_bank_code"
														fw-filter="" fw-label="은행명" fw-msg="">
														<option value="" selected="selected">- 은행선택 -</option>
														<option value="bank_02">산업은행</option>
														<option value="bank_03">기업은행</option>
														<option value="bank_04">국민은행</option>
														<option value="bank_05">외환은행</option>
														<option value="bank_07">수협중앙회</option>
														<option value="bank_11">농협중앙회</option>
														<option value="bank_12">농협개인</option>
														<option value="bank_13">농협</option>
														<option value="bank_20">우리은행</option>
														<option value="bank_209">유안타증권</option>
														<option value="bank_218">KB증권</option>
														<option value="bank_23">SC제일은행</option>
														<option value="bank_230">미래에셋증권</option>
														<option value="bank_238">대우증권</option>
														<option value="bank_240">삼성증권</option>
														<option value="bank_243">한국투자증권</option>
														<option value="bank_26">신한은행</option>
														<option value="bank_261">교보증권</option>
														<option value="bank_262">하이투자증권</option>
														<option value="bank_263">투자증권HMC</option>
														<option value="bank_266">SK증권</option>
														<option value="bank_267">대신증권</option>
														<option value="bank_269">한화증권</option>
														<option value="bank_270">하나대투증권</option>
														<option value="bank_278">신한금융투자</option>
														<option value="bank_279">동부증권</option>
														<option value="bank_280">유진투자증권</option>
														<option value="bank_287">메리츠증권</option>
														<option value="bank_289">NH투자증권</option>
														<option value="bank_291">신영증권</option>
														<option value="bank_292">케이뱅크</option>
														<option value="bank_293">카카오뱅크</option>
														<option value="bank_295">OK저축은행</option>
														<option value="bank_31">대구은행</option>
														<option value="bank_32">부산은행</option>
														<option value="bank_34">광주은행</option>
														<option value="bank_35">제주은행</option>
														<option value="bank_37">전북은행</option>
														<option value="bank_39">경남은행</option>
														<option value="bank_52">모건스탠리은행</option>
														<option value="bank_53">씨티은행</option>
														<option value="bank_57">유에프제이은행</option>
														<option value="bank_58">미즈호코퍼레이트은행</option>
														<option value="bank_59">미쓰비시도쿄은행</option>
														<option value="bank_60">뱅크오브아메리카</option>
														<option value="bank_71">우체국</option>
														<option value="bank_81">KEB하나은행</option>
														<option value="bank_82">농협회원조합</option>
														<option value="bank_83">도이치은행</option>
														<option value="bank_84">상호저축은행</option>
														<option value="bank_85">새마을금고</option>
														<option value="bank_86">수출입은행</option>
														<option value="bank_87">신용협동조합</option>
														<option value="bank_89">홍콩상하이은행(HSBC)</option>
														<option value="bank_90">에이비엔암로은행</option>
														<option value="bank_91">산림조합</option>
													</select>
												</dd>
												<dt>계좌번호</dt>
												<dd>
													<input id="bank_account_no" name="bank_account_no"
														fw-filter="" fw-label="계좌번호" fw-msg=""
														class="inputTypeText" placeholder="" autocomplete="off"
														value="" type="text"> ('-'와 숫자만 입력해주세요.)
												</dd>
											</dl>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<h3>전체 동의</h3>
						<div class="ec-base-box typeThinBg gStrong">
							<p>
								<label for="sAgreeAllChecked"><strong>이용약관 및
										개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</strong></label><span class="ec-base-chk"><input
									type="checkbox" id="sAgreeAllChecked"><em
									class="checkbox"></em></span>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[필수] 이용약관 동의</h3>
							<div class="content">
								<p>
									<font size="2">제1조(목적)<br>이 약관은&nbsp;애즈클로(전자상거래
										사업자)가 운영하는&nbsp;애즈클로 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하
										“서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리,의무 및 책임사항을 규정함을 목적으로 합니다.<br>※「PC통신,
										무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
									</font>
								</p>
								<p>
									<font size="2">제2조(정의)<br>① “몰”이란 OO 회사가 재화 또는
										용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할
										수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>②
										“이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>③
										‘회원’이라 함은 “몰”에 (삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는
										자를 말합니다.<br>④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는
										자를 말합니다.
									</font>
								</p>
								<p>
									<font size="2">제3조 (약관 등의 명시와 설명 및 개정) <br>① “몰”은 이
										약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
										전화번호,모사전송번호,전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알
										수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여
										볼 수 있도록 할 수 있습니다.<br>② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는
										내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는
										팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br>③ “몰”은 「전자상거래 등에서의
										소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,
										「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」,
										「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>④ “몰”이
										약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일
										이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일
										이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여
										이용자가 알기 쉽도록 표시합니다. <br>⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자
										이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로
										적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한
										개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>⑥
										이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의
										규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에
										따릅니다.
									</font>
								</p>
								<p>
									<font size="2">제4조(서비스의 제공 및 변경) <br>① “몰”은 다음과 같은
										업무를 수행합니다.<br>&nbsp; 1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br>&nbsp;
										2. 구매계약이 체결된 재화 또는 용역의 배송<br>&nbsp; 3. 기타 “몰”이 정하는 업무<br>②
										“몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화
										또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여
										현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br>③ “몰”이 제공하기로 이용자와
										계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를
										이용자에게 통지 가능한 주소로 즉시 통지합니다.<br>④ 전항의 경우 “몰”은 이로 인하여 이용자가
										입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
									</font>
								</p>
								<p>
									<font size="2">제5조(서비스의 중단) <br>① “몰”은 컴퓨터 등
										정보통신설비의 보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로
										중단할 수 있습니다.<br>② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여
										이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는
										그러하지 아니합니다.<br>③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를
										제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에
										따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는
										적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.
									</font>
								</p>
								<p>
									<font size="2">제6조(회원가입) <br>① 이용자는 “몰”이 정한 가입 양식에
										따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br>②
										“몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로
										등록합니다.<br>&nbsp; 1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한
										적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을
										얻은 경우에는 예외로 한다.<br>&nbsp; 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp;
										3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br>③
										회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.<br>④ 회원은 회원가입
										시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그
										변경사항을 알려야 합니다.
									</font>
								</p>
								<p>
									<font size="2">제7조(회원 탈퇴 및 자격 상실 등) <br>① 회원은 “몰”에
										언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br>② 회원이 다음 각 호의
										사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.<br>&nbsp; 1. 가입
										신청 시에 허위 내용을 등록한 경우<br>&nbsp; 2. “몰”을 이용하여 구입한 재화 등의 대금,
										기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br>&nbsp; 3.
										다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br>&nbsp;
										4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br>③
										“몰”이 회원 자격을 제한.정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지
										아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.<br>④ “몰”이 회원자격을 상실시키는
										경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의
										기간을 정하여 소명할 기회를 부여합니다.
									</font>
								</p>
								<p>
									<font size="2">제8조(회원에 대한 통지)<br>① “몰”이 회원에 대한 통지를
										하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br>② “몰”은
										불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.
										다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
									</font>
								</p>
								<p>
									<font size="2">제9조(구매신청) <br>① “몰”이용자는 “몰”상에서 다음 또는
										이와 유사한 방법에 의하여 구매를 신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기
										쉽게 제공하여야 합니다. (삭제)<br>&nbsp; 1. 재화 등의 검색 및 선택<br>&nbsp;
										2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br>&nbsp;
										3. 약관내용, 청약철회권이 제한되는 서비스, 배송료.설치비 등의 비용부담과 관련한 내용에 대한 확인<br>&nbsp;
										4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>&nbsp;
										5. 재화등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의<br>&nbsp; 6.
										결제방법의 선택<br>② “몰”이 제3자에게 구매자 개인정보를 제공?위탁할 필요가 있는 경우 실제
										구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은
										제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및 보유?이용 기간 등을 구매자에게
										명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보
										취급위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.
									</font>
								</p>
								<p>
									<font size="2">제10조 (계약의 성립)<br>① “몰”은 제9조와 같은
										구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는
										법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야
										합니다.<br>&nbsp; 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp;
										2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br>&nbsp;
										3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우<br>② “몰”의
										승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>③
										“몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한
										정보 등을 포함하여야 합니다.
									</font>
								</p>
								<p>
									<font size="2">제11조(지급방법)<br>“몰”에서 구매한 재화 또는 용역에 대한
										대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여
										재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br>1. 폰뱅킹, 인터넷뱅킹,
										메일 뱅킹 등의 각종 계좌이체 <br>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>3.
										온라인무통장입금<br>4. 전자화폐에 의한 결제<br>5. 수령 시 대금지급<br>6.
										마일리지 등 “몰”이 지급한 포인트에 의한 결제<br>7. “몰”과 계약을 맺었거나 “몰”이 인정한
										상품권에 의한 결제 <br>8. 기타 전자적 지급 방법에 의한 대금 지급 등
									</font>
								</p>
								<p>
									<font size="2">제12조(수신확인통지.구매신청 변경 및 취소)<br>① “몰”은
										이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br>② 수신확인통지를 받은 이용자는
										의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고
										“몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미
										대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.
									</font>
								</p>
								<p>
									<font size="2">제13조(재화 등의 공급)<br>① “몰”은 이용자와 재화 등의
										공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록
										주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를
										받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가
										재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br>② “몰”은
										이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이
										약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의.과실이 없음을
										입증한 경우에는 그러하지 아니합니다.
									</font>
								</p>
								<p>
									<font size="2">제14조(환급)<br>“몰”은 이용자가 구매신청한 재화 등이 품절
										등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의
										대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
									</font>
								</p>
								<p>
									<font size="2">제15조(청약철회 등)<br>① “몰”과 재화등의 구매에 관한
										계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한
										서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의
										공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여
										「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다. <br>②
										이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br>&nbsp;
										1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여
										포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br>&nbsp; 2. 이용자의 사용 또는 일부
										소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br>&nbsp; 3. 시간의 경과에 의하여
										재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br>&nbsp; 4. 같은 성능을 지닌
										재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br>③ 제2항제2호 내지
										제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
										시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br>④
										이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게
										이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일
										이내에 청약철회 등을 할 수 있습니다.
									</font>
								</p>
								<p>
									<font size="2">제16조(청약철회 등의 효과)<br>① “몰”은 이용자로부터 재화
										등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게
										재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률
										시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.<br>②
										“몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한
										때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록
										요청합니다.<br>③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다.
										“몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이
										표시?광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은
										“몰”이 부담합니다.<br>④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회
										시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.
									</font>
								</p>
								<p>
									<font size="2">제17조(개인정보보호)<br>① “몰”은 이용자의 개인정보 수집시
										서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. <br>② “몰”은 회원가입시
										구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에
										본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br>③
										“몰”은 이용자의 개인정보를 수집?이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br>④
										“몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게
										제공하는 경우에는 이용?제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에
										달리 정함이 있는 경우에는 예외로 합니다.<br>⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를
										받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및
										이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망
										이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는
										언제든지 이 동의를 철회할 수 있습니다.<br>⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의
										개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를
										집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지
										않습니다.<br>⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로
										제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자
										제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br>⑧ “몰” 또는 그로부터
										개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이
										파기합니다.<br>⑨ “몰”은 개인정보의 수집?이용?제공에 관한 동의란을 미리 선택한 것으로 설정해두지
										않습니다. 또한 개인정보의 수집?이용?제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고,
										필수수집항목이 아닌 개인정보의 수집?이용?제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을
										제한하거나 거절하지 않습니다.
									</font>
								</p>
								<p>
									<font size="2">제18조(“몰“의 의무)<br>① “몰”은 법령과 이 약관이
										금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화.용역을
										제공하는데 최선을 다하여야 합니다.<br>② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수
										있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.<br>③ “몰”이
										상품이나 용역에 대하여 「표시.광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시.광고행위를 함으로써
										이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br>④ “몰”은 이용자가 원하지 않는
										영리목적의 광고성 전자우편을 발송하지 않습니다.
									</font>
								</p>
								<p>
									<font size="2">제19조(회원의 ID 및 비밀번호에 대한 의무)<br>①
										제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br>② 회원은 자신의
										ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br>③ 회원이 자신의 ID 및 비밀번호를
										도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에
										따라야 합니다.
									</font>
								</p>
								<p>
									<font size="2">제20조(이용자의 의무)<br>이용자는 다음 행위를 하여서는 안
										됩니다.<br>1. 신청 또는 변경시 허위 내용의 등록<br>2. 타인의 정보 도용<br>3.
										“몰”에 게시된 정보의 변경<br>4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신
										또는 게시<br>5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>6. “몰”
										기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>7. 외설 또는 폭력적인 메시지, 화상,
										음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위
									</font>
								</p>
								<p>
									<font size="2">제21조(연결“몰”과 피연결“몰” 간의 관계)<br>① 상위
										“몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로
										연결된 경우, 전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br>②
										연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지
										않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증
										책임을 지지 않습니다.
									</font>
								</p>
								<p>
									<font size="2">제22조(저작권의 귀속 및 이용제한)<br>① “몰“이 작성한
										저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.<br>② 이용자는 “몰”을 이용함으로써
										얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송
										기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br>③ “몰”은
										약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.
									</font>
								</p>
								<p>
									<font size="2">제23조(분쟁해결)<br>① “몰”은 이용자가 제기하는 정당한
										의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치.운영합니다.<br>②
										“몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한
										경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br>③ “몰”과 이용자 간에 발생한
										전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시?도지사가 의뢰하는
										분쟁조정기관의 조정에 따를 수 있습니다.
									</font>
								</p>
								<p>
									<font size="2">제24조(재판권 및 준거법)<br>① “몰”과 이용자 간에 발생한
										전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는
										지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의
										경우에는 민사소송법상의 관할법원에 제기합니다.<br>② “몰”과 이용자 간에 제기된 전자상거래 소송에는
										한국법을 적용합니다.
									</font>
								</p>
								<p>
									<br>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">#</span>카카오 알림톡 시행에 관한 내용<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">신규 회원의 전화번호수집
										양식 및 기존 회원 대상의<span lang="EN-US">&nbsp;</span>공지<span
										lang="EN-US">&nbsp;</span>이메일 등을 통해 안내 주문<span lang="EN-US">,&nbsp;</span>배송
										정보 등 비광고성 정보를 카카오톡 알림톡으로 알려드리며<span lang="EN-US">,&nbsp;</span>만약
										알림톡 수신이 불가능하거나 수신 차단하신 경우에는 일반 문자 메시지로 보내드립니다<span
										lang="EN-US">.&nbsp;</span>와이파이 아닌 이동통신망으로 접속시 알림톡 수신 중 데이터요금이
										발생할 수 있습니다<span lang="EN-US">.&nbsp;</span>알림톡과는 다른 방식으로 정보
										수신을 원하시면 알림톡을 차단해주세요<span lang="EN-US">.<span></span></span>
									</font><br>
								</p>
							</div>
							<p class="check">
								<span>이용약관에 동의하십니까?</span> <input id="agree_service_check0"
									name="agree_service_check[]" fw-filter="/1/" fw-label="이용약관 동의"
									fw-msg="이용약관에 동의 하세요" value="1" type="checkbox"><label
									for="agree_service_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[필수] 개인정보 수집 및 이용 동의</h3>
							<div class="content">
								■ 수집하는 개인정보 항목<br>회사는 회원가입, 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를
								수집하고 있습니다.
								<p>
									ο 수집항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 비밀번호 질문과 답변 , 자택 전화번호
									, 자택 주소 , 휴대전화번호 , 이메일 , 직업 , 회사명 , 부서 , 직책 , 회사전화번호 , 취미 ,
									결혼여부 , 기념일 , 법정대리인정보 , 주민등록번호 , 서비스 이용기록 , 접속 로그 , 접속 IP 정보 ,
									결제기록<br>ο 개인정보 수집방법 : 홈페이지(회원가입) , 서면양식
								</p>
								<p>■ 개인정보의 수집 및 이용목적</p>
								<p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
								<p>
									ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송
									또는 청구지 등 발송<br>ο 회원 관리<br>회원제 서비스 이용에 따른 본인확인 , 개인 식별
									, 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인 , 고지사항 전달 ο 마케팅 및
									광고에 활용<br>접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
								</p>
								<p>■ 개인정보의 보유 및 이용기간</p>
								<p>회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</p>
								<p>
									<br>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">#</span>개인정보의 위탁 처리<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">애즈클로는 서비스 향상을
										위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의 개인정보를 외부에 위탁하여
										처리하고 있습니다<span lang="EN-US">.&nbsp;애즈클로의&nbsp;</span>개인정보처리
										수탁자와 그 업무의 내용은 다음과 같습니다<span lang="EN-US">.<span></span></span>
									</font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<span lang="EN-US"><font
										face="arial, helvetica, sans-serif">&nbsp;<span></span></font></span>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">-&nbsp;</span>수탁자<span lang="EN-US">&nbsp;:
											(</span>주<span lang="EN-US">)</span>루나소프트<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">-&nbsp;</span>위탁 업무 내용<span lang="EN-US">&nbsp;:&nbsp;</span>카카오
										알림톡 발송 업무<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<span lang="EN-US"><font
										face="arial, helvetica, sans-serif">&nbsp;<span></span></font></span>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">직송 등 일부 배송형태에
										따라<span lang="EN-US">,&nbsp;</span>전자상거래소비자보호법 제<span
										lang="EN-US">&nbsp;21</span>조에 의거 협력사에 배송정보가 제공 됩니다<span
										lang="EN-US">.<span></span></span>
									</font>
								</p>
							</div>
							<p class="check">
								<span>개인정보 수집 및 이용에 동의하십니까?</span> <input
									id="agree_privacy_check0" name="agree_privacy_check[]"
									fw-filter="/1/" fw-label="개인정보 수집 및 이용 방침"
									fw-msg="개인정보 수집 및 이용 방침에 동의하세요" value="1" type="checkbox"><label
									for="agree_privacy_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[선택] 개인정보 제3자 제공 동의</h3>
							<div class="content">
								아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수
								있습니다.<br> <br> - 제공 받는 자 :<br> - 제공 항목 :<br>
								- 제공 목적 :<br> - 보유 및 이용기간 :<br>
							</div>
							<p class="check">
								<span>개인정보 제3자 제공에 동의하십니까?</span> <input
									id="agree_information_check0" name="agree_information_check[]"
									fw-filter="" fw-label="개인정보 제3자 제공 동의" fw-msg=""
									class="ec-base-chk" value="1" type="checkbox"><label
									for="agree_information_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[선택] 개인정보 처리 위탁 동의</h3>
							<div class="content">
								아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수
								있습니다.<br> <br> - 위탁받는 자(수탁업체) :<br> - 위탁업무의 내용:<br>
							</div>
							<p class="check">
								<span>개인정보 처리 위탁에 동의하십니까?</span> <input
									id="agree_consignment_check0" name="agree_consignment_check[]"
									fw-filter="" fw-label="개인정보 처리 위탁 동의" fw-msg="" value="1"
									type="checkbox"><label for="agree_consignment_check0">동의함</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea ">
							<h3>[선택] 쇼핑정보 수신 동의</h3>
							<div class="content">
								<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS와 이메일로
									받아보실 수 있습니다.</p>
								<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
								<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지
									수신여부를 변경하실 수 있습니다.</p>
							</div>
							<ul class="check">
								<li class="displaynone"><span>SMS 수신을 동의하십니까?</span><label
									for="is_sms0"><input id="is_sms0" name="is_sms"
										fw-filter="" fw-label="is_sms" fw-msg="" class="ec-base-chk"
										value="T" type="checkbox">동의함</label></li>
								<li class=""><span>이메일 수신을 동의하십니까?</span><label
									for="is_news_mail0"><input id="is_news_mail0"
										name="is_news_mail" fw-label="is_news_mail" fw-msg=""
										class="ec-base-chk" value="T" type="checkbox">동의함</label></li>
							</ul>
						</div>
						<div class="btnArea center">
							<a href="/index.html">회원가입취소</a> <a href="#none"
								onclick="memberJoinAction()">회원가입</a>
						</div>
						<!-- 회원 가입 정보 확인 레이어 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
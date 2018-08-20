<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--PGũ�ν�����¡�ʼ����� ����-->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<!--PGũ�ν�����¡�ʼ����� ��-->
<!--�ش� CSS�� ���θ� ��ü �������� ������ �ݴϴ�. ������ ������ �������ּ���.-->
<!-- ����Ʈ�����ο����� JQuery 1.4.4 ������ ����Ǿ��ֽ��ϴ�. �߰��� ȣ���ϸ� �浹�� ���� �� �ֽ��ϴ�. -->
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
<!--gray IE ��-->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- �ش� JS�� �÷��ø� ����ϱ� ���� ��ũ��Ʈ�Դϴ�. -->
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
<meta property="og:site_name" content="����Ŭ��">
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
<meta name="author" content="���ϸ����� ����, ��ģ��, ������, ������, �ڵ�, �����Ƿ� ���θ�">
<meta name="description" content="���ϸ����� ����, ��ģ��, ������, ������, �ڵ�, �����Ƿ� ���θ�">
<meta name="keywords"
	content="�����Ƿ�,���ڿ�,���ڼ��θ�,���ڵ��ϸ���,��������ũ���θ�,���ϸ�����θ�,���ϸ���,����Ŭ��,���ڻ���,������Ʈ,���ڹ���,������,������,��Ʈ,��������,û����,��Ű������,���ڽ�Ű��,���ڵ�������,OOTD,dailylook,���ټ���,���ڿ����ڵ�,���ں��ڵ�,���ڰ����ڵ�,���ڰܿ��ڵ�">
<script
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?random=1534494017641&amp;cv=9&amp;fst=1534494017641&amp;num=1&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=3&amp;u_nmime=4&amp;sendb=1&amp;frm=0&amp;url=http%3A%2F%2Fasclo.com%2Fmember%2Fjoin.html&amp;ref=http%3A%2F%2Fasclo.com%2F&amp;tiba=%EC%95%A0%EC%A6%88%ED%81%B4%EB%A1%9C&amp;rfmt=3&amp;fmt=4"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="<c:url value='/resources/css/joinTest.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<div id="contentwrap">

		<div id="contents">



			<div class="titleArea">
				<h2>ȸ�� ����</h2>
			</div>
			<div class="xans-element- xans-member xans-member-join">
				<div class="ec-base-table typeWrite">

					<div id="authWrap" style="">
						<h3 class=" ">�⺻����</h3>
						<p class="required ">
							<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
								alt="�ʼ�"> �ʼ��Է»���
						</p>
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<caption>ȸ�� �⺻����</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">���̵� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="member_id" name="member_id"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="���̵�" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text"> <span id="idMsg"></span>
											(�����ҹ���/����, 4~16��)</td>
									</tr>
									<tr>
										<th scope="row">��й�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="passwd" name="passwd"
											fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="��й�ȣ"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> (����
											��ҹ���/����/Ư������ �� 2���� �̻� ����, 8��~16��)</td>
									</tr>
									<tr>
										<th scope="row">��й�ȣ Ȯ�� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="user_passwd_confirm"
											name="user_passwd_confirm"
											fw-filter="isFill&amp;isMatch[passwd]" fw-label="��й�ȣ Ȯ��"
											fw-msg="��й�ȣ�� ��ġ���� �ʽ��ϴ�." autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> <span
											id="pwConfirmMsg"></span></td>
									</tr>
									<tr class="">
										<th scope="row">��й�ȣ Ȯ�� ���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><select id="hint" name="hint" fw-filter="isFill"
											fw-label="hint" fw-msg="">
												<option value="hint_01">��￡ ���� �߾��� ��Ҵ�?</option>
												<option value="hint_02">�ڽ��� �λ� �¿����?</option>
												<option value="hint_03">�ڽ��� ���� ��1ȣ��?</option>
												<option value="hint_04">���� ��￡ ���� ������ ������?</option>
												<option value="hint_05">Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?</option>
												<option value="hint_06">�߾��ϰ� ���� ��¥�� �ִٸ�?</option>
												<option value="hint_07">�޾Ҵ� ���� �� ��￡ ���� ��Ư�� ������?</option>
												<option value="hint_08">������� ���� �������� ģ�� �̸���?</option>
												<option value="hint_09">�λ� ��� ���� å �̸���?</option>
												<option value="hint_10">���� å �߿��� �����ϴ� ������ �ִٸ�?</option>
												<option value="hint_11">�ڽ��� �ι�°�� �����ϴ� �ι���?</option>
												<option value="hint_12">ģ���鿡�� �������� ���� � �� ������ �ִٸ�?</option>
												<option value="hint_13">�ʵ��б� �� ��￡ ���� ¦�� �̸���?</option>
												<option value="hint_14">�ٽ� �¾�� �ǰ� ���� ����?</option>
												<option value="hint_15">���� �����ϴ� ĳ���ʹ�?</option>
										</select></td>
									</tr>
									<tr class="">
										<th scope="row">��й�ȣ Ȯ�� �亯 <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="hint_answer" name="hint_answer"
											fw-filter="isFill" fw-label="��й�ȣ Ȯ�ν� �亯" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text"></td>
									</tr>
									<tr>
										<th scope="row" id="nameTitle">�̸� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><span id="nameContents"></span> <span id="under14Msg"
											class="displaynone">14�� �̸� ����ڴ� �����븮�� ���ǰ� �ʿ��մϴ�.</span></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">�̸�(����) <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="name_en" name="name_en"
											fw-filter="isMax[30]" fw-label="�̸�(����)" fw-msg=""
											class="ec-member-name" placeholder="" maxlength="30" value=""
											type="text"> (�̸� - �� �������� �Է��� �ּ���.)</td>
									</tr>
									<!-- �ܱ��� ȸ�� ���� -->
									<tr style="display: none;">
										<th scope="row" id="ssnTitle"></th>
										<td id="ssnContents"></td>
									</tr>
									<!-- //�ܱ��� ȸ�� ���� -->
									<tr id="companyRow" style="display: none;">
										<th scope="row">��ȣ�� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td id="companyName"><input id="cname" name="cname"
											fw-filter="isMax[20]" fw-label="��ȣ��" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text"></td>
									</tr>
									<tr id="companyNoRow" style="display: none;">
										<th scope="row">����ڹ�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td id="companySsn"><input id="cssn" name="cssn"
											fw-filter="isMax[20]" fw-label="����� ��ȣ" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="20" value=""
											type="text"></td>
									</tr>
									<tr id="nation" style="display: none;">
										<th>���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><select id="citizenship" name="citizenship"
											fw-filter="" fw-label="����" fw-msg="">
												<option value="" selected="selected">�����ϼ���</option>
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
										<th scope="row">�ּ� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="�ʼ�"></th>
										<td><input id="postcode1" name="postcode1"
											fw-filter="isLengthRange[1][14]" fw-label="�����ȣ1" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											maxlength="14" value="" type="text"> <a href="#none"
											onclick="" id="postBtn"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_zipcode.gif"
												alt="�����ȣ"></a><br> <input id="addr1" name="addr1"
											fw-filter="isFill" fw-label="�ּ�" fw-msg=""
											class="inputTypeText" placeholder="" readonly="readonly"
											value="" type="text"> �⺻�ּ�<br> <input id="addr2"
											name="addr2" fw-filter="" fw-label="�ּ�" fw-msg=""
											class="inputTypeText" placeholder="" value="" type="text">
											�������ּ�</td>
									</tr>
									<tr class="">
										<th scope="row">�Ϲ���ȭ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="phone1" name="phone[]"
											fw-filter="isNumber&amp;isNumber" fw-label="�Ϲ���ȭ"
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
											fw-filter="isNumber&amp;isNumber" fw-label="�Ϲ���ȭ"
											fw-alone="N" fw-msg="" value="" type="text">-<input
											id="phone3" name="phone[]" maxlength="4"
											fw-filter="isNumber&amp;isNumber" fw-label="�Ϲ���ȭ"
											fw-alone="N" fw-msg="" value="" type="text"></td>
									</tr>
									<tr class="">
										<th scope="row">�޴���ȭ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="�ʼ�"></th>
										<td><select id="mobile1" name="mobile[]"
											fw-filter="isNumber&amp;isFill" fw-label="�޴���ȭ" fw-alone="N"
											fw-msg="">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select>-<input id="mobile2" name="mobile[]" maxlength="4"
											fw-filter="isNumber&amp;isFill" fw-label="�޴���ȭ" fw-alone="N"
											fw-msg="" value="" type="text">-<input id="mobile3"
											name="mobile[]" maxlength="4" fw-filter="isNumber&amp;isFill"
											fw-label="�޴���ȭ" fw-alone="N" fw-msg="" value="" type="text"></td>
									</tr>
									<tr>
										<th scope="row">�̸��� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="email1" name="email1" fw-filter="isFill"
											fw-label="�̸���" fw-alone="N" fw-msg="" class="mailId" value=""
											type="text">@<input id="email2" name="email2"
											fw-filter="isFill" fw-label="�̸���" fw-alone="N" fw-msg=""
											class="mailAddress" readonly="readonly" value="" type="text"><select
											id="email3" fw-filter="isFill" fw-label="�̸���" fw-alone="N"
											fw-msg="">
												<option value="" selected="selected">- �̸��� ���� -</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
												<option value="empas.com">empas.com</option>
												<option value="korea.com">korea.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="etc">�����Է�</option>
										</select> <span id="emailMsg"></span></td>
									</tr>
									<!-- <tr class="">
									<th scope="row">���ȸ��</th>
									<td><input id="is_lifetime0" name="is_lifetime"
										fw-filter="" fw-label="is_lifetime" fw-msg="" value="T"
										type="radio"><label for="is_lifetime0">������</label> <input
										id="is_lifetime1" name="is_lifetime" fw-filter=""
										fw-label="is_lifetime" fw-msg="" value="F" type="radio"
										checked="checked"><label for="is_lifetime1">���Ǿ���</label>
										<ul class="txtDesc">
											<li>���ȸ������ �����Ͻø� <strong>����Ŭ��</strong> ȸ�� Ż��ñ����� �޸�ȸ������
												��ȯ���� ������, ������ ���������� Ż��ñ��� �����ϰ� �����˴ϴ�.
											</li>
											<li class="displaynone">���� ���ȸ������ �����Ͻø� ���������� �帳�ϴ�.
												(���������� ������ ���, 3������ ���ȸ���� �����ϼž� �մϴ�.)</li>
										</ul></td>
								</tr> -->
								</tbody>
							</table>
						</div>
						<h3 class=" ">�߰�����</h3>
						<div class="ec-base-table typeWrite ">
							<table border="1" summary="">
								<caption>ȸ�� �߰�����</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody>
									<tr class="displaynone">
										<th scope="row">���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="nick_name" name="nick_name" fw-filter=""
											fw-label="����" fw-msg="" class="inputTypeText" placeholder=""
											maxlength="20" value="" type="text">
											<p id="nickMsg"></p></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="is_sex0" name="is_sex" fw-filter=""
											fw-label="����" fw-msg="" value="M" type="radio"><label
											for="is_sex0">����</label> <input id="is_sex1" name="is_sex"
											fw-filter="" fw-label="����" fw-msg="" value="F" type="radio"><label
											for="is_sex1">����</label></td>
									</tr>
									<tr class="">
										<th scope="row">������� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="�ʼ�"></th>
										<td><input id="birth_year" name="birth_year"
											fw-filter="isFill" fw-label="�������" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="4" value=""
											type="text"> �� <input id="birth_month"
											name="birth_month" fw-filter="isFill" fw-label="�������"
											fw-msg="" class="inputTypeText" placeholder="" maxlength="2"
											value="" type="text"> �� <input id="birth_day"
											name="birth_day" fw-filter="isFill" fw-label="�������" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> �� <span class="gIndent20 "><input
												id="is_solar_calendar0" name="is_solar_calendar"
												fw-filter="isFill" fw-label="�������" fw-msg="" value="T"
												type="radio" checked="checked"><label
												for="is_solar_calendar0">���</label> <input
												id="is_solar_calendar1" name="is_solar_calendar"
												fw-filter="isFill" fw-label="�������" fw-msg="" value="F"
												type="radio"><label for="is_solar_calendar1">����</label></span>
										</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">��ȥ����� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="marry_year" name="marry_year" fw-filter=""
											fw-label="��ȥ �����" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="4" value="" type="text"> ��
											<input id="marry_month" name="marry_month" fw-filter=""
											fw-label="��ȥ �����" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="2" value="" type="text"> ��
											<input id="marry_day" name="marry_day" fw-filter=""
											fw-label="��ȥ �����" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="2" value="" type="text"> ��</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">����ڻ��� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="partner_year" name="partner_year"
											fw-filter="" fw-label="����� ����" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="4" value=""
											type="text"> �� <input id="partner_month"
											name="partner_month" fw-filter="" fw-label="����� ����" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> �� <input id="partner_day"
											name="partner_day" fw-filter="" fw-label="����� ����" fw-msg=""
											class="inputTypeText" placeholder="" maxlength="2" value=""
											type="text"> ��</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">�ڳ� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="child" name="child" fw-filter="isFill"
											fw-label="child" fw-msg="">
												<option value="child_00">����</option>
												<option value="child_01">����</option>
												<option value="child_02">1</option>
												<option value="child_03">2</option>
												<option value="child_04">3</option>
												<option value="child_05">4</option>
												<option value="child_06">5</option>
												<option value="child_07">6</option>
												<option value="child_08">7</option>
												<option value="child_09">8</option>
												<option value="child_10">9</option>
												<option value="child_11">10 �̻�</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">�����з� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="school" name="school" fw-filter="isFill"
											fw-label="school" fw-msg="">
												<option value="school_00">����</option>
												<option value="school_01">�ʵ��б�����</option>
												<option value="school_02">�ʵ��б�����</option>
												<option value="school_03">���б�����</option>
												<option value="school_04">���б�����</option>
												<option value="school_05">����б�����</option>
												<option value="school_06">����б�����</option>
												<option value="school_07">���б�����</option>
												<option value="school_08">���б�����</option>
												<option value="school_09">���п�����</option>
												<option value="school_10">���п������̻�</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="job_class" name="job_class"
											fw-filter="isFill" fw-label="����" fw-msg="">
												<option value="job_class_04">����</option>
												<option value="job_class_05">����</option>
												<option value="job_class_06">����</option>
												<option value="job_class_07">�ε���/���</option>
												<option value="job_class_08">��/��/��/����</option>
												<option value="job_class_09">����</option>
												<option value="job_class_10">����</option>
												<option value="job_class_11">����</option>
												<option value="job_class_12">�Ƿ�</option>
												<option value="job_class_13">����</option>
												<option value="job_class_14">����/����</option>
												<option value="job_class_15">�Ǽ���</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="job" name="job" fw-filter="isFill"
											fw-label="����" fw-msg="">
												<option value="job_00">����</option>
												<option value="job_01">�л�</option>
												<option value="job_02">ȸ���</option>
												<option value="job_03">�ڿ���</option>
												<option value="job_04">����</option>
												<option value="job_05">��Ÿ</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���ҵ� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="earning" name="earning"
											fw-filter="isFill" fw-label="earning" fw-msg="">
												<option value="earning_00">����</option>
												<option value="earning_01">����</option>
												<option value="earning_02">1000���� ����</option>
												<option value="earning_03">1200���� ����</option>
												<option value="earning_04">1500���� ����</option>
												<option value="earning_05">1800���� ����</option>
												<option value="earning_06">2000���� ����</option>
												<option value="earning_07">2500���� ����</option>
												<option value="earning_08">3000���� ����</option>
												<option value="earning_09">4000���� ����</option>
												<option value="earning_10">5000���� ����</option>
												<option value="earning_11">5000���� �̻�</option>
												<option value="earning_12">��Ÿ</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">�ڵ��� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="car" name="car" fw-filter="isFill"
											fw-label="car" fw-msg="">
												<option value="car_00">����</option>
												<option value="car_01">����</option>
												<option value="car_02">1000cc ����</option>
												<option value="car_03">1000cc ~ 1500cc</option>
												<option value="car_04">1500cc ~ 2000cc</option>
												<option value="car_05">2000cc ~ 3000cc</option>
												<option value="car_06">3000cc ~ 4000cc</option>
												<option value="car_07">4000cc �̻�</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="region" name="region" fw-filter="isFill"
											fw-label="region" fw-msg="">
												<option value="region_00">����</option>
												<option value="region_01">���</option>
												<option value="region_02">����</option>
												<option value="region_03">��õ</option>
												<option value="region_04">����</option>
												<option value="region_05">�泲</option>
												<option value="region_06">���</option>
												<option value="region_07">����</option>
												<option value="region_08">���</option>
												<option value="region_09">�泲</option>
												<option value="region_10">�뱸</option>
												<option value="region_11">�λ�</option>
												<option value="region_12">���</option>
												<option value="region_13">����</option>
												<option value="region_14">����</option>
												<option value="region_15">����</option>
												<option value="region_16">����</option>
												<option value="region_17">�ؿ�</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���ͳ� �̿���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><select id="internet" name="internet"
											fw-filter="isFill" fw-label="internet" fw-msg="">
												<option value="internet_00">����</option>
												<option value="internet_01">��</option>
												<option value="internet_02">ȸ��</option>
												<option value="internet_03">PC��</option>
												<option value="internet_04">��Ÿ</option>
										</select></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">���ɺо� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td>
											<div class="interest">
												<input id="inter_check0" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="0" type="checkbox"><label
													for="inter_check0">�ִϸ��̼�</label> <input id="inter_check1"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="1" type="checkbox"><label
													for="inter_check1">��ȭ/����</label> <input id="inter_check2"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="2" type="checkbox"><label
													for="inter_check2">���̰���</label> <input id="inter_check3"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="3" type="checkbox"><label
													for="inter_check3">��ǰ����</label> <input id="inter_check4"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="4" type="checkbox"><label
													for="inter_check4">�̼�����ȸ</label> <input id="inter_check5"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="5" type="checkbox"><label
													for="inter_check5">Ŭ���� �ܼ�Ʈ</label> <input id="inter_check6"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="6" type="checkbox"><label
													for="inter_check6">�м�/�̿�</label> <input id="inter_check7"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="7" type="checkbox"><label
													for="inter_check7">��ġ</label> <input id="inter_check8"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="8" type="checkbox"><label
													for="inter_check8">IT/�������</label> <input id="inter_check9"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="9" type="checkbox"><label
													for="inter_check9">������</label> <input id="inter_check10"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="10" type="checkbox"><label
													for="inter_check10">�丮/����</label> <input id="inter_check11"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="11" type="checkbox"><label
													for="inter_check11">������</label> <input id="inter_check12"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="12" type="checkbox"><label
													for="inter_check12">����/�ֺ�</label> <input id="inter_check13"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="13" type="checkbox"><label
													for="inter_check13">����</label> <input id="inter_check14"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="14" type="checkbox"><label
													for="inter_check14">����Ͻ�/����/�ε���</label> <input
													id="inter_check15" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="15" type="checkbox"><label
													for="inter_check15">�ֽ�/����</label> <input id="inter_check16"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="16" type="checkbox"><label
													for="inter_check16">������/����/���</label> <input
													id="inter_check17" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="17" type="checkbox"><label
													for="inter_check17">���/��������</label> <input
													id="inter_check18" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="18" type="checkbox"><label
													for="inter_check18">����/����</label> <input id="inter_check19"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="19" type="checkbox"><label
													for="inter_check19">��ǻ��/����</label> <input
													id="inter_check20" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="20" type="checkbox"><label
													for="inter_check20">���б�/���п�����</label> <input
													id="inter_check21" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="21" type="checkbox"><label
													for="inter_check21">�ǰ�/�Ƿ�</label> <input id="inter_check22"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="22" type="checkbox"><label
													for="inter_check22">�ڵ���/����</label> <input
													id="inter_check23" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="23" type="checkbox"><label
													for="inter_check23">����/���ڻ�ŷ�</label> <input
													id="inter_check24" name="inter_check[]" fw-filter=""
													fw-label="inter_check" fw-msg="" value="24" type="checkbox"><label
													for="inter_check24">����/����</label> <input id="inter_check25"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="25" type="checkbox"><label
													for="inter_check25">���а���</label> <input id="inter_check26"
													name="inter_check[]" fw-filter="" fw-label="inter_check"
													fw-msg="" value="26" type="checkbox"><label
													for="inter_check26">��Ÿ���</label>
											</div>
										</td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="add1" name="add1" fw-filter=""
											fw-label="�߰��׸�1" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="add2" name="add2" fw-filter=""
											fw-label="�߰��׸�2" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="add3" name="add3" fw-filter=""
											fw-label="�߰��׸�3" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="add4" name="add4" fw-filter=""
											fw-label="�߰��׸�4" fw-msg="" class="inputTypeText"
											placeholder="" maxlength="30" value="" type="text"></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row"><img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">��õ�� ���̵� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td><input id="reco_id" name="reco_id" fw-filter=""
											fw-label="��õ�� ID" fw-msg="" class="inputTypeText"
											placeholder="" value="" type="text"></td>
									</tr>
									<tr class="">
										<th scope="row">ȯ�Ұ��� ���� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="displaynone" alt="�ʼ�"></th>
										<td>
											<dl class="ec-base-desc typeBullet">
												<dt>������</dt>
												<dd>
													<input id="bank_account_owner" name="bank_account_owner"
														fw-filter="" fw-label="������" fw-msg=""
														class="inputTypeText" placeholder="" autocomplete="off"
														value="" type="text">
												</dd>
												<dt>�����</dt>
												<dd>
													<select id="refund_bank_code" name="refund_bank_code"
														fw-filter="" fw-label="�����" fw-msg="">
														<option value="" selected="selected">- ���༱�� -</option>
														<option value="bank_02">�������</option>
														<option value="bank_03">�������</option>
														<option value="bank_04">��������</option>
														<option value="bank_05">��ȯ����</option>
														<option value="bank_07">�����߾�ȸ</option>
														<option value="bank_11">�����߾�ȸ</option>
														<option value="bank_12">��������</option>
														<option value="bank_13">����</option>
														<option value="bank_20">�츮����</option>
														<option value="bank_209">����Ÿ����</option>
														<option value="bank_218">KB����</option>
														<option value="bank_23">SC��������</option>
														<option value="bank_230">�̷���������</option>
														<option value="bank_238">�������</option>
														<option value="bank_240">�Ｚ����</option>
														<option value="bank_243">�ѱ���������</option>
														<option value="bank_26">��������</option>
														<option value="bank_261">��������</option>
														<option value="bank_262">������������</option>
														<option value="bank_263">��������HMC</option>
														<option value="bank_266">SK����</option>
														<option value="bank_267">�������</option>
														<option value="bank_269">��ȭ����</option>
														<option value="bank_270">�ϳ���������</option>
														<option value="bank_278">���ѱ�������</option>
														<option value="bank_279">��������</option>
														<option value="bank_280">������������</option>
														<option value="bank_287">�޸�������</option>
														<option value="bank_289">NH��������</option>
														<option value="bank_291">�ſ�����</option>
														<option value="bank_292">���̹�ũ</option>
														<option value="bank_293">īī����ũ</option>
														<option value="bank_295">OK��������</option>
														<option value="bank_31">�뱸����</option>
														<option value="bank_32">�λ�����</option>
														<option value="bank_34">��������</option>
														<option value="bank_35">��������</option>
														<option value="bank_37">��������</option>
														<option value="bank_39">�泲����</option>
														<option value="bank_52">��ǽ��ĸ�����</option>
														<option value="bank_53">��Ƽ����</option>
														<option value="bank_57">��������������</option>
														<option value="bank_58">����ȣ���۷���Ʈ����</option>
														<option value="bank_59">�̾���õ�������</option>
														<option value="bank_60">��ũ����Ƹ޸�ī</option>
														<option value="bank_71">��ü��</option>
														<option value="bank_81">KEB�ϳ�����</option>
														<option value="bank_82">����ȸ������</option>
														<option value="bank_83">����ġ����</option>
														<option value="bank_84">��ȣ��������</option>
														<option value="bank_85">�������ݰ�</option>
														<option value="bank_86">����������</option>
														<option value="bank_87">�ſ���������</option>
														<option value="bank_89">ȫ�����������(HSBC)</option>
														<option value="bank_90">���̺񿣾Ϸ�����</option>
														<option value="bank_91">�긲����</option>
													</select>
												</dd>
												<dt>���¹�ȣ</dt>
												<dd>
													<input id="bank_account_no" name="bank_account_no"
														fw-filter="" fw-label="���¹�ȣ" fw-msg=""
														class="inputTypeText" placeholder="" autocomplete="off"
														value="" type="text"> ('-'�� ���ڸ� �Է����ּ���.)
												</dd>
											</dl>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<h3>��ü ����</h3>
						<div class="ec-base-box typeThinBg gStrong">
							<p>
								<label for="sAgreeAllChecked"><strong>�̿��� ��
										������������ �� �̿�, �������� ����(����)�� ��� �����մϴ�.</strong></label><span class="ec-base-chk"><input
									type="checkbox" id="sAgreeAllChecked"><em
									class="checkbox"></em></span>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[�ʼ�] �̿��� ����</h3>
							<div class="content">
								<p>
									<font size="2">��1��(����)<br>�� �����&nbsp;����Ŭ��(���ڻ�ŷ�
										�����)�� ��ϴ�&nbsp;����Ŭ�� ���̹� ��(���� �������̶� �Ѵ�)���� �����ϴ� ���ͳ� ���� ����(����
										�����񽺡��� �Ѵ�)�� �̿��Կ� �־� ���̹� ���� �̿����� �Ǹ�,�ǹ� �� å�ӻ����� �������� �������� �մϴ�.<br>�ء�PC���,
										���� ���� �̿��ϴ� ���ڻ�ŷ��� ���ؼ��� �� ������ ������ �ʴ� �� �� ����� �ؿ��մϴ�.��
									</font>
								</p>
								<p>
									<font size="2">��2��(����)<br>�� �������̶� OO ȸ�簡 ��ȭ �Ǵ�
										�뿪(���� ����ȭ ��̶� ��)�� �̿��ڿ��� �����ϱ� ���Ͽ� ��ǻ�� �� ������ż��� �̿��Ͽ� ��ȭ ���� �ŷ���
										�� �ֵ��� ������ ������ �������� ���ϸ�, �ƿ﷯ ���̹����� ��ϴ� ������� �ǹ̷ε� ����մϴ�.<br>��
										���̿��ڡ��� �������� �����Ͽ� �� ����� ���� �������� �����ϴ� ���񽺸� �޴� ȸ�� �� ��ȸ���� ���մϴ�.<br>��
										��ȸ�����̶� ���� �������� (����) ȸ������� �� �ڷμ�, ��������� �������� �����ϴ� ���񽺸� �̿��� �� �ִ�
										�ڸ� ���մϴ�.<br>�� ����ȸ�����̶� ���� ȸ���� �������� �ʰ� �������� �����ϴ� ���񽺸� �̿��ϴ�
										�ڸ� ���մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��3�� (��� ���� ��ÿ� ���� �� ����) <br>�� �������� ��
										����� ����� ��ȣ �� ��ǥ�� ����, ������ ������ �ּ�(�Һ����� �Ҹ��� ó���� �� �ִ� ���� �ּҸ� ����),
										��ȭ��ȣ,������۹�ȣ,���ڿ����ּ�, ����ڵ�Ϲ�ȣ, ����Ǹž� �Ű��ȣ, ������������å���ڵ��� �̿��ڰ� ���� ��
										�� �ֵ��� 00 ���̹����� �ʱ� ����ȭ��(����)�� �Խ��մϴ�. �ٸ�, ����� ������ �̿��ڰ� ����ȭ���� ���Ͽ�
										�� �� �ֵ��� �� �� �ֽ��ϴ�.<br>�� ������ �̿��ڰ� ����� �����ϱ⿡ �ռ� ����� ���Ͽ��� �ִ�
										���� �� û��öȸ.���å��.ȯ������ ��� ���� �߿��� ������ �̿��ڰ� ������ �� �ֵ��� ������ ����ȭ�� �Ǵ�
										�˾�ȭ�� ���� �����Ͽ� �̿����� Ȯ���� ���Ͽ��� �մϴ�.<br>�� �������� �����ڻ�ŷ� �����
										�Һ��ں�ȣ�� ���� ������, ������� ������ ���� ������, �����ڹ��� �� ���ڰŷ��⺻����, �����ڱ����ŷ�����,
										�����ڼ������, ��������Ÿ� �̿����� �� ������ȣ � ���� ������, ���湮�Ǹ� � ���� ������,
										���Һ��ڱ⺻���� �� ���� ���� �������� �ʴ� �������� �� ����� ������ �� �ֽ��ϴ�.<br>�� ��������
										����� ������ ��쿡�� �������� �� ���������� ����Ͽ� �������� �Բ� ���� �ʱ�ȭ�鿡 �� �������� 7��
										�������� �������� ���ϱ��� �����մϴ�. �ٸ�, �̿��ڿ��� �Ҹ��ϰ� ��������� �����ϴ� ��쿡�� �ּ��� 30��
										�̻��� ���� �����Ⱓ�� �ΰ� �����մϴ�. �� ��� "������ ���� �� ����� ���� �� ������ ��Ȯ�ϰ� ���Ͽ�
										�̿��ڰ� �˱� ������ ǥ���մϴ�. <br>�� �������� ����� ������ ��쿡�� �� ��������� �� ��������
										���Ŀ� ü��Ǵ� ��࿡�� ����ǰ� �� ������ �̹� ü��� ��࿡ ���ؼ��� ���� ���� ��������� �״��
										����˴ϴ�. �ٸ� �̹� ����� ü���� �̿��ڰ� ������� ������ ������ �ޱ⸦ ���ϴ� ���� ��3�׿� ����
										��������� �����Ⱓ ���� �������� �۽��Ͽ� �������� ���Ǹ� ���� ��쿡�� ������� ������ ����˴ϴ�.<br>��
										�� ������� ������ �ƴ��� ���װ� �� ����� �ؼ��� ���Ͽ��� ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����, �����
										���� � ���� ����, �����ŷ�����ȸ�� ���ϴ� ���ڻ�ŷ� ����� �Һ��� ��ȣ��ħ �� ������� �Ǵ� ����ʿ�
										�����ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��4��(������ ���� �� ����) <br>�� �������� ������ ����
										������ �����մϴ�.<br>&nbsp; 1. ��ȭ �Ǵ� �뿪�� ���� ���� ���� �� ���Ű���� ü��<br>&nbsp;
										2. ���Ű���� ü��� ��ȭ �Ǵ� �뿪�� ���<br>&nbsp; 3. ��Ÿ �������� ���ϴ� ����<br>��
										�������� ��ȭ �Ǵ� �뿪�� ǰ�� �Ǵ� ����� ����� ���� ���� ��쿡�� ���� ü��Ǵ� ��࿡ ���� ������ ��ȭ
										�Ǵ� �뿪�� ������ ������ �� �ֽ��ϴ�. �� ��쿡�� ����� ��ȭ �Ǵ� �뿪�� ���� �� �������ڸ� ����Ͽ�
										������ ��ȭ �Ǵ� �뿪�� ������ �Խ��� ���� ��� �����մϴ�.<br>�� �������� �����ϱ�� �̿��ڿ�
										����� ü���� ������ ������ ��ȭ���� ǰ�� �Ǵ� ����� ����� ���� ���� ������ ������ ��쿡�� �� ������
										�̿��ڿ��� ���� ������ �ּҷ� ��� �����մϴ�.<br>�� ������ ��� �������� �̷� ���Ͽ� �̿��ڰ�
										���� ���ظ� ����մϴ�. �ٸ�, �������� ���� �Ǵ� ������ ������ �����ϴ� ��쿡�� �׷����� �ƴ��մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��5��(������ �ߴ�) <br>�� �������� ��ǻ�� ��
										������ż����� ��������.��ü �� ����, ����� ���� ���� ������ �߻��� ��쿡�� ������ ������ �Ͻ�������
										�ߴ��� �� �ֽ��ϴ�.<br>�� �������� ��1���� ������ ������ ������ �Ͻ������� �ߴܵ����� ���Ͽ�
										�̿��� �Ǵ� ��3�ڰ� ���� ���ؿ� ���Ͽ� ����մϴ�. ��, �������� ���� �Ǵ� ������ ������ �����ϴ� ��쿡��
										�׷����� �ƴ��մϴ�.<br>�� ��������� ��ȯ, ����� ����, ��ü ���� ���� ���� ������ ���񽺸�
										������ �� ���� �Ǵ� ��쿡�� �������� ��8���� ���� ������� �̿��ڿ��� �����ϰ� ���� ���������� ������ ���ǿ�
										���� �Һ��ڿ��� �����մϴ�. �ٸ�, �������� ������� ���� �������� �ƴ��� ��쿡�� �̿��ڵ��� ���ϸ��� �Ǵ�
										������ ���� ���������� ���Ǵ� ��ȭ��ġ�� �����ϴ� ���� �Ǵ� �������� �̿��ڿ��� �����մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��6��(ȸ������) <br>�� �̿��ڴ� �������� ���� ���� ��Ŀ�
										���� ȸ�������� ������ �� �� ����� �����Ѵٴ� �ǻ�ǥ�ø� �����μ� ȸ�������� ��û�մϴ�.<br>��
										�������� ��1�װ� ���� ȸ������ ������ ���� ��û�� �̿��� �� ���� �� ȣ�� �ش����� �ʴ� �� ȸ������
										����մϴ�.<br>&nbsp; 1. ���Խ�û�ڰ� �� ��� ��7����3�׿� ���Ͽ� ������ ȸ���ڰ��� �����
										���� �ִ� ���, �ٸ� ��7����3�׿� ���� ȸ���ڰ� ��� �� 3���� ����� �ڷμ� �������� ȸ���簡�� �³���
										���� ��쿡�� ���ܷ� �Ѵ�.<br>&nbsp; 2. ��� ���뿡 ����, ���紩��, ���Ⱑ �ִ� ���<br>&nbsp;
										3. ��Ÿ ȸ������ ����ϴ� ���� �������� ����� ������ ������ �ִٰ� �ǴܵǴ� ���<br>��
										ȸ�����԰���� ���� �ñ�� �������� �³��� ȸ������ ������ �������� �մϴ�.<br>�� ȸ���� ȸ������
										�� ����� ���׿� ������ �ִ� ���, ����� �Ⱓ �̳��� �������� ���Ͽ� ȸ������ ���� ���� ������� ��
										��������� �˷��� �մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��7��(ȸ�� Ż�� �� �ڰ� ��� ��) <br>�� ȸ���� ��������
										�������� Ż�� ��û�� �� ������ �������� ��� ȸ��Ż�� ó���մϴ�.<br>�� ȸ���� ���� �� ȣ��
										������ �ش��ϴ� ���, �������� ȸ���ڰ��� ���� �� ������ų �� �ֽ��ϴ�.<br>&nbsp; 1. ����
										��û �ÿ� ���� ������ ����� ���<br>&nbsp; 2. �������� �̿��Ͽ� ������ ��ȭ ���� ���,
										��Ÿ �������̿뿡 �����Ͽ� ȸ���� �δ��ϴ� ä���� ���Ͽ� �������� �ʴ� ���<br>&nbsp; 3.
										�ٸ� ����� ������ �̿��� �����ϰų� �� ������ �����ϴ� �� ���ڻ�ŷ� ������ �����ϴ� ���<br>&nbsp;
										4. �������� �̿��Ͽ� ���� �Ǵ� �� ����� �����ϰų� ������ӿ� ���ϴ� ������ �ϴ� ���<br>��
										�������� ȸ�� �ڰ��� ����.���� ��Ų ��, ������ ������ 2ȸ �̻� �ݺ��ǰų� 30�� �̳��� �� ������ ��������
										�ƴ��ϴ� ��� �������� ȸ���ڰ��� ��ǽ�ų �� �ֽ��ϴ�.<br>�� �������� ȸ���ڰ��� ��ǽ�Ű��
										��쿡�� ȸ������� �����մϴ�. �� ��� ȸ������ �̸� �����ϰ�, ȸ����� ���� ���� �ּ��� 30�� �̻���
										�Ⱓ�� ���Ͽ� �Ҹ��� ��ȸ�� �ο��մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��8��(ȸ���� ���� ����)<br>�� �������� ȸ���� ���� ������
										�ϴ� ���, ȸ���� �������� �̸� �����Ͽ� ������ ���ڿ��� �ּҷ� �� �� �ֽ��ϴ�.<br>�� ��������
										��Ư���ټ� ȸ���� ���� ������ ��� 1�����̻� ������ �Խ��ǿ� �Խ������μ� ���� ������ ������ �� �ֽ��ϴ�.
										�ٸ�, ȸ�� ������ �ŷ��� �����Ͽ� �ߴ��� ������ ��ġ�� ���׿� ���Ͽ��� ���������� �մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��9��(���Ž�û) <br>�� �������̿��ڴ� �������󿡼� ���� �Ǵ�
										�̿� ������ ����� ���Ͽ� ���Ÿ� ��û�ϸ�, �������� �̿��ڰ� ���Ž�û�� �Կ� �־ ������ �� ������ �˱�
										���� �����Ͽ��� �մϴ�. (����)<br>&nbsp; 1. ��ȭ ���� �˻� �� ����<br>&nbsp;
										2. �޴� ����� ����, �ּ�, ��ȭ��ȣ, ���ڿ����ּ�(�Ǵ� �̵���ȭ��ȣ) ���� �Է�<br>&nbsp;
										3. �������, û��öȸ���� ���ѵǴ� ����, ��۷�.��ġ�� ���� ���δ�� ������ ���뿡 ���� Ȯ��<br>&nbsp;
										4. �� ����� �����ϰ� �� 3.ȣ�� ������ Ȯ���ϰų� �ź��ϴ� ǥ��(��, ���콺 Ŭ��)<br>&nbsp;
										5. ��ȭ���� ���Ž�û �� �̿� ���� Ȯ�� �Ǵ� �������� Ȯ�ο� ���� ����<br>&nbsp; 6.
										��������� ����<br>�� �������� ��3�ڿ��� ������ ���������� ����?��Ź�� �ʿ䰡 �ִ� ��� ����
										���Ž�û �� �������� ���Ǹ� �޾ƾ� �ϸ�, ȸ������ �� �̸� ���������� ���Ǹ� ���� �ʽ��ϴ�. �� �� ��������
										�����Ǵ� �������� �׸�, �����޴� ��, �����޴� ���� �������� �̿� ���� �� ����?�̿� �Ⱓ ���� �����ڿ���
										����Ͽ��� �մϴ�. �ٸ� ��������Ÿ��̿����� �� ������ȣ � ���� ������ ��25�� ��1�׿� ���� ��������
										�����Ź�� ��� �� ���� ���ɿ� �޸� ������ �ִ� ��쿡�� �׿� �����ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��10�� (����� ����)<br>�� �������� ��9���� ����
										���Ž�û�� ���Ͽ� ���� �� ȣ�� �ش��ϸ� �³����� ���� �� �ֽ��ϴ�. �ٸ�, �̼����ڿ� ����� ü���ϴ� ��쿡��
										�����븮���� ���Ǹ� ���� ���ϸ� �̼����� ���� �Ǵ� �����븮���� ����� ����� �� �ִٴ� ������ �����Ͽ���
										�մϴ�.<br>&nbsp; 1. ��û ���뿡 ����, ���紩��, ���Ⱑ �ִ� ���<br>&nbsp;
										2. �̼����ڰ� ���, �ַ� �� û�ҳ⺸ȣ������ �����ϴ� ��ȭ �� �뿪�� �����ϴ� ���<br>&nbsp;
										3. ��Ÿ ���Ž�û�� �³��ϴ� ���� ������ ����� ������ ������ �ִٰ� �Ǵ��ϴ� ���<br>�� ��������
										�³��� ��12����1���� ����Ȯ���������·� �̿��ڿ��� ������ ������ ����� ������ ������ ���ϴ�.<br>��
										�������� �³��� �ǻ�ǥ�ÿ��� �̿����� ���� ��û�� ���� Ȯ�� �� �ǸŰ��� ����, ���Ž�û�� ���� ��� � ����
										���� ���� �����Ͽ��� �մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��11��(���޹��)<br>���������� ������ ��ȭ �Ǵ� �뿪�� ����
										������޹���� ���� �� ȣ�� ����� ������ ������� �� �� �ֽ��ϴ�. ��, �������� �̿����� ���޹���� ���Ͽ�
										��ȭ ���� ��ݿ� ��� ����� �����ᵵ �߰��Ͽ� ¡���� �� �����ϴ�.<br>1. ����ŷ, ���ͳݹ�ŷ,
										���� ��ŷ ���� ���� ������ü <br>2. ����ī��, ����ī��, �ſ�ī�� ���� ���� ī�� ����<br>3.
										�¶��ι������Ա�<br>4. ����ȭ�� ���� ����<br>5. ���� �� �������<br>6.
										���ϸ��� �� �������� ������ ����Ʈ�� ���� ����<br>7. �������� ����� �ξ��ų� �������� ������
										��ǰ�ǿ� ���� ���� <br>8. ��Ÿ ������ ���� ����� ���� ��� ���� ��
									</font>
								</p>
								<p>
									<font size="2">��12��(����Ȯ������.���Ž�û ���� �� ���)<br>�� ��������
										�̿����� ���Ž�û�� �ִ� ��� �̿��ڿ��� ����Ȯ�������� �մϴ�.<br>�� ����Ȯ�������� ���� �̿��ڴ�
										�ǻ�ǥ���� ����ġ ���� �ִ� ��쿡�� ����Ȯ�������� ���� �� ��� ���Ž�û ���� �� ��Ҹ� ��û�� �� �ְ�
										�������� ��� ���� �̿����� ��û�� �ִ� ��쿡�� ��ü ���� �� ��û�� ���� ó���Ͽ��� �մϴ�. �ٸ� �̹�
										����� ������ ��쿡�� ��15���� û��öȸ � ���� ������ �����ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��13��(��ȭ ���� ����)<br>�� �������� �̿��ڿ� ��ȭ ����
										���޽ñ⿡ ���Ͽ� ������ ������ ���� �̻�, �̿��ڰ� û���� �� ������ 7�� �̳��� ��ȭ ���� ����� �� �ֵ���
										�ֹ�����, ���� �� ��Ÿ�� �ʿ��� ��ġ�� ���մϴ�. �ٸ�, �������� �̹� ��ȭ ���� ����� ���� �Ǵ� �Ϻθ�
										���� ��쿡�� ����� ���� �Ǵ� �Ϻθ� ���� ������ 3������ �̳��� ��ġ�� ���մϴ�. �̶� �������� �̿��ڰ�
										��ȭ ���� ���� ���� �� ���� ������ Ȯ���� �� �ֵ��� ������ ��ġ�� �մϴ�.<br>�� ��������
										�̿��ڰ� ������ ��ȭ�� ���� ��ۼ���, ���ܺ� ��ۺ�� �δ���, ���ܺ� ��۱Ⱓ ���� ����մϴ�. ���� ��������
										���� ��۱Ⱓ�� �ʰ��� ��쿡�� �׷� ���� �̿����� ���ظ� ����Ͽ��� �մϴ�. �ٸ� �������� ����.������ ������
										������ ��쿡�� �׷����� �ƴ��մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��14��(ȯ��)<br>�������� �̿��ڰ� ���Ž�û�� ��ȭ ���� ǰ��
										���� ������ �ε� �Ǵ� ������ �� �� ���� ������ ��ü ���� �� ������ �̿��ڿ��� �����ϰ� ������ ��ȭ ����
										����� ���� ��쿡�� ����� ���� ������ 3������ �̳��� ȯ���ϰų� ȯ�޿� �ʿ��� ��ġ�� ���մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��15��(û��öȸ ��)<br>�� �������� ��ȭ���� ���ſ� ����
										����� ü���� �̿��ڴ� �����ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ������ ��13�� ��2�׿� ���� ��೻�뿡 ����
										������ ���� ��(�� ������ ���� ������ ��ȭ ���� ������ �ʰ� �̷���� ��쿡�� ��ȭ ���� ���޹ްų� ��ȭ ����
										������ ���۵� ���� ���մϴ�)���� 7�� �̳����� û���� öȸ�� �� �� �ֽ��ϴ�. �ٸ�, û��öȸ�� ���Ͽ�
										�����ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� �������� �޸� ������ �ִ� ��쿡�� �� �� ������ �����ϴ�. <br>��
										�̿��ڴ� ��ȭ ���� ��� ���� ��� ���� �� ȣ�� 1�� �ش��ϴ� ��쿡�� ��ǰ �� ��ȯ�� �� �� �����ϴ�.<br>&nbsp;
										1. �̿��ڿ��� å�� �ִ� ������ ��ȭ ���� ��� �Ǵ� �Ѽյ� ���(�ٸ�, ��ȭ ���� ������ Ȯ���ϱ� ���Ͽ�
										���� ���� �Ѽ��� ��쿡�� û��öȸ�� �� �� �ֽ��ϴ�)<br>&nbsp; 2. �̿����� ��� �Ǵ� �Ϻ�
										�Һ� ���Ͽ� ��ȭ ���� ��ġ�� ������ ������ ���<br>&nbsp; 3. �ð��� ����� ���Ͽ�
										���ǸŰ� ����� ������ ��ȭ���� ��ġ�� ������ ������ ���<br>&nbsp; 4. ���� ������ ����
										��ȭ ������ ������ ������ ��� �� ������ ��ȭ ���� ������ �Ѽ��� ���<br>�� ��2����2ȣ ����
										��4ȣ�� ��쿡 �������� ������ û��öȸ ���� ���ѵǴ� ����� �Һ��ڰ� ���� �� �� �ִ� ���� ����ϰų�
										�ÿ��ǰ�� �����ϴ� ���� ��ġ�� ���� �ʾҴٸ� �̿����� û��öȸ ���� ���ѵ��� �ʽ��ϴ�.<br>��
										�̿��ڴ� ��1�� �� ��2���� ������ �ұ��ϰ� ��ȭ ���� ������ ǥ��?���� ����� �ٸ��ų� ��೻��� �ٸ���
										����� ������ ���� ��ȭ ���� ���޹��� ������ 3�� �̳�, �� ����� �� �� �Ǵ� �� �� �־��� ������ 30��
										�̳��� û��öȸ ���� �� �� �ֽ��ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��16��(û��öȸ ���� ȿ��)<br>�� �������� �̿��ڷκ��� ��ȭ
										���� ��ȯ���� ��� 3������ �̳��� �̹� ���޹��� ��ȭ ���� ����� ȯ���մϴ�. �� ��� �������� �̿��ڿ���
										��ȭ���� ȯ���� �����Ѷ����� �� �����Ⱓ�� ���Ͽ� �����ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����
										����ɡ���21����2���� ���ϴ� ����������(��ȣ �κ� ����)�� ���Ͽ� ������ �������ڸ� �����մϴ�.<br>��
										�������� �� ����� ȯ���Կ� �־ �̿��ڰ� �ſ�ī�� �Ǵ� ����ȭ�� ���� ������������ ��ȭ ���� ����� ������
										������ ��ü ���� ���� ���������� ������ ����ڷ� �Ͽ��� ��ȭ ���� ����� û���� ���� �Ǵ� ����ϵ���
										��û�մϴ�.<br>�� û��öȸ ���� ��� ���޹��� ��ȭ ���� ��ȯ�� �ʿ��� ����� �̿��ڰ� �δ��մϴ�.
										�������� �̿��ڿ��� û��öȸ ���� ������ ����� �Ǵ� ���ع���� û������ �ʽ��ϴ�. �ٸ� ��ȭ ���� ������
										ǥ��?���� ����� �ٸ��ų� ��೻��� �ٸ��� ����Ǿ� û��öȸ ���� �ϴ� ��� ��ȭ ���� ��ȯ�� �ʿ��� �����
										�������� �δ��մϴ�.<br>�� �̿��ڰ� ��ȭ ���� �������� �� �߼ۺ� �δ��� ��쿡 �������� û��öȸ
										�� �� ����� ���� �δ��ϴ����� �̿��ڰ� �˱� ������ ��Ȯ�ϰ� ǥ���մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��17��(����������ȣ)<br>�� �������� �̿����� �������� ������
										���������� ���Ͽ� �ʿ��� �������� �ּ����� ���������� �����մϴ�. <br>�� �������� ȸ�����Խ�
										���Ű�����࿡ �ʿ��� ������ �̸� �������� �ʽ��ϴ�. �ٸ�, ���� ���ɻ� �ǹ������� ���Ͽ� ���Ű�� ������
										����Ȯ���� �ʿ��� ���μ� �ּ����� Ư�� ���������� �����ϴ� ��쿡�� �׷����� �ƴ��մϴ�.<br>��
										�������� �̿����� ���������� ����?�̿��ϴ� ������ ���� �̿��ڿ��� �� ������ �����ϰ� ���Ǹ� �޽��ϴ�. <br>��
										�������� ������ ���������� �������� �뵵�� �̿��� �� ������, ���ο� �̿������ �߻��� ��� �Ǵ� ��3�ڿ���
										�����ϴ� ��쿡�� �̿�?�����ܰ迡�� ���� �̿��ڿ��� �� ������ �����ϰ� ���Ǹ� �޽��ϴ�. �ٸ�, ���� ���ɿ�
										�޸� ������ �ִ� ��쿡�� ���ܷ� �մϴ�.<br>�� �������� ��2�װ� ��3�׿� ���� �̿����� ���Ǹ�
										�޾ƾ� �ϴ� ��쿡�� ������������ å������ �ſ�(�Ҽ�, ���� �� ��ȭ��ȣ, ��Ÿ ����ó), ������ �������� ��
										�̿����, ��3�ڿ� ���� �������� ���û���(����������, �������� �� ������ ������ ����) �� ��������Ÿ�
										�̿����� �� ������ȣ � ���� ������ ��22����2���� ������ ������ �̸� ����ϰų� �����ؾ� �ϸ� �̿��ڴ�
										�������� �� ���Ǹ� öȸ�� �� �ֽ��ϴ�.<br>�� �̿��ڴ� �������� �������� ������ �ִ� �ڽ���
										���������� ���� ���� �� ���������� �䱸�� �� ������ �������� �̿� ���� ��ü ���� �ʿ��� ��ġ�� ���� �ǹ���
										���ϴ�. �̿��ڰ� ������ ������ �䱸�� ��쿡�� �������� �� ������ ������ ������ ���� ���������� �̿�����
										�ʽ��ϴ�.<br>�� �������� �������� ��ȣ�� ���Ͽ� �̿����� ���������� ����ϴ� �ڸ� �ּ�������
										�����Ͽ��� �ϸ� �ſ�ī��, ������� ���� ������ �̿����� ���������� �н�, ����, ����, ���� ���� ��3��
										����, ���� ������ ���� �̿����� ���ؿ� ���Ͽ� ��� å���� ���ϴ�.<br>�� ������ �Ǵ� �׷κ���
										���������� �������� ��3�ڴ� ���������� �������� �Ǵ� �������� ������ �޼��� ������ ���� ���������� ��ü ����
										�ı��մϴ�.<br>�� �������� ���������� ����?�̿�?������ ���� ���Ƕ��� �̸� ������ ������ �����ص���
										�ʽ��ϴ�. ���� ���������� ����?�̿�?������ ���� �̿����� ���ǰ����� ���ѵǴ� ���񽺸� ��ü������ ����ϰ�,
										�ʼ������׸��� �ƴ� ���������� ����?�̿�?������ ���� �̿����� ���� ������ ������ ȸ������ �� ���� ������
										�����ϰų� �������� �ʽ��ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��18��(�������� �ǹ�)<br>�� �������� ���ɰ� �� �����
										�����ϰų� ������ӿ� ���ϴ� ������ ���� ������ �� ����� ���ϴ� �ٿ� ���� �������̰�, ���������� ��ȭ.�뿪��
										�����ϴµ� �ּ��� ���Ͽ��� �մϴ�.<br>�� �������� �̿��ڰ� �����ϰ� ���ͳ� ���񽺸� �̿��� ��
										�ֵ��� �̿����� ��������(�ſ����� ����)��ȣ�� ���� ���� �ý����� ���߾�� �մϴ�.<br>�� ��������
										��ǰ�̳� �뿪�� ���Ͽ� ��ǥ��.������ ����ȭ�� ���� ������ ��3�� ������ �δ��� ǥ��.���������� �����ν�
										�̿��ڰ� ���ظ� ���� ������ �̸� ����� å���� ���ϴ�.<br>�� �������� �̿��ڰ� ������ �ʴ�
										���������� ���� ���ڿ����� �߼����� �ʽ��ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��19��(ȸ���� ID �� ��й�ȣ�� ���� �ǹ�)<br>��
										��17���� ��츦 ������ ID�� ��й�ȣ�� ���� ����å���� ȸ������ �ֽ��ϴ�.<br>�� ȸ���� �ڽ���
										ID �� ��й�ȣ�� ��3�ڿ��� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.<br>�� ȸ���� �ڽ��� ID �� ��й�ȣ��
										�������ϰų� ��3�ڰ� ����ϰ� ������ ������ ��쿡�� �ٷ� �������� �뺸�ϰ� �������� �ȳ��� �ִ� ��쿡�� �׿�
										����� �մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��20��(�̿����� �ǹ�)<br>�̿��ڴ� ���� ������ �Ͽ����� ��
										�˴ϴ�.<br>1. ��û �Ǵ� ����� ���� ������ ���<br>2. Ÿ���� ���� ����<br>3.
										�������� �Խõ� ������ ����<br>4. �������� ���� ���� �̿��� ����(��ǻ�� ���α׷� ��) ���� �۽�
										�Ǵ� �Խ�<br>5. ������ ��Ÿ ��3���� ���۱� �� �������ǿ� ���� ħ��<br>6. ������
										��Ÿ ��3���� ���� �ջ��Ű�ų� ������ �����ϴ� ����<br>7. �ܼ� �Ǵ� �������� �޽���, ȭ��,
										����, ��Ÿ ������ӿ� ���ϴ� ������ ���� ���� �Ǵ� �Խ��ϴ� ����
									</font>
								</p>
								<p>
									<font size="2">��21��(���ᡰ������ �ǿ��ᡰ���� ���� ����)<br>�� ����
										�������� ���� �������� �����۸�ũ(��: �����۸�ũ�� ��󿡴� ����, �׸� �� ��ȭ�� ���� ���Ե�)��� ������
										����� ���, ���ڸ� ���� ������(�� ����Ʈ)�̶�� �ϰ� ���ڸ� �ǿ��� ������(������Ʈ)�̶�� �մϴ�.<br>��
										���ᡰ������ �ǿ��ᡰ������ ���������� �����ϴ� ��ȭ � ���Ͽ� �̿��ڿ� ���ϴ� �ŷ��� ���ؼ� ���� å���� ����
										�ʴ´ٴ� ���� ���ᡰ������ �ʱ�ȭ�� �Ǵ� ����Ǵ� ������ �˾�ȭ������ ����� ��쿡�� �� �ŷ��� ���� ����
										å���� ���� �ʽ��ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��22��(���۱��� �ͼ� �� �̿�����)<br>�� �������� �ۼ���
										���۹��� ���� ���۱� ��Ÿ ���������� �������� �ͼ��մϴ�.<br>�� �̿��ڴ� �������� �̿������ν�
										���� ���� �� ���������� ���������� �ͼӵ� ������ �������� ���� �³� ���� ����, �۽�, ����, ����, ���
										��Ÿ ����� ���Ͽ� ������������ �̿��ϰų� ��3�ڿ��� �̿��ϰ� �Ͽ����� �ȵ˴ϴ�.<br>�� ��������
										������ ���� �̿��ڿ��� �ͼӵ� ���۱��� ����ϴ� ��� ���� �̿��ڿ��� �뺸�Ͽ��� �մϴ�.
									</font>
								</p>
								<p>
									<font size="2">��23��(�����ذ�)<br>�� �������� �̿��ڰ� �����ϴ� ������
										�ǰ��̳� �Ҹ��� �ݿ��ϰ� �� ���ظ� ����ó���ϱ� ���Ͽ� ���غ���ó���ⱸ�� ��ġ.��մϴ�.<br>��
										�������� �̿��ڷκ��� ����Ǵ� �Ҹ����� �� �ǰ��� �켱������ �� ������ ó���մϴ�. �ٸ�, �ż��� ó���� �����
										��쿡�� �̿��ڿ��� �� ������ ó�������� ��� �뺸�� �帳�ϴ�.<br>�� �������� �̿��� ���� �߻���
										���ڻ�ŷ� ����� �����Ͽ� �̿����� ���ر�����û�� �ִ� ��쿡�� �����ŷ�����ȸ �Ǵ� ��?�����簡 �Ƿ��ϴ�
										������������� ������ ���� �� �ֽ��ϴ�.
									</font>
								</p>
								<p>
									<font size="2">��24��(���Ǳ� �� �ذŹ�)<br>�� �������� �̿��� ���� �߻���
										���ڻ�ŷ� ���￡ ���� �Ҽ��� ���� ����� �̿����� �ּҿ� ���ϰ�, �ּҰ� ���� ��쿡�� �żҸ� �����ϴ�
										��������� ���Ӱ��ҷ� �մϴ�. �ٸ�, ���� ��� �̿����� �ּ� �Ǵ� �żҰ� �и����� �ʰų� �ܱ� ��������
										��쿡�� �λ�Ҽ۹����� ���ҹ����� �����մϴ�.<br>�� �������� �̿��� ���� ����� ���ڻ�ŷ� �Ҽۿ���
										�ѱ����� �����մϴ�.
									</font>
								</p>
								<p>
									<br>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">#</span>īī�� �˸��� ���࿡ ���� ����<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">�ű� ȸ���� ��ȭ��ȣ����
										��� �� ���� ȸ�� �����<span lang="EN-US">&nbsp;</span>����<span
										lang="EN-US">&nbsp;</span>�̸��� ���� ���� �ȳ� �ֹ�<span lang="EN-US">,&nbsp;</span>���
										���� �� �񱤰� ������ īī���� �˸������� �˷��帮��<span lang="EN-US">,&nbsp;</span>����
										�˸��� ������ �Ұ����ϰų� ���� �����Ͻ� ��쿡�� �Ϲ� ���� �޽����� �����帳�ϴ�<span
										lang="EN-US">.&nbsp;</span>�������� �ƴ� �̵���Ÿ����� ���ӽ� �˸��� ���� �� �����Ϳ����
										�߻��� �� �ֽ��ϴ�<span lang="EN-US">.&nbsp;</span>�˸������ �ٸ� ������� ����
										������ ���Ͻø� �˸����� �������ּ���<span lang="EN-US">.<span></span></span>
									</font><br>
								</p>
							</div>
							<p class="check">
								<span>�̿����� �����Ͻʴϱ�?</span> <input id="agree_service_check0"
									name="agree_service_check[]" fw-filter="/1/" fw-label="�̿��� ����"
									fw-msg="�̿����� ���� �ϼ���" value="1" type="checkbox"><label
									for="agree_service_check0">������</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea">
							<h3>[�ʼ�] �������� ���� �� �̿� ����</h3>
							<div class="content">
								�� �����ϴ� �������� �׸�<br>ȸ��� ȸ������, ���, ���� ��û ����� ���� �Ʒ��� ���� ����������
								�����ϰ� �ֽ��ϴ�.
								<p>
									�� �����׸� : �̸� , ������� , ���� , �α���ID , ��й�ȣ , ��й�ȣ ������ �亯 , ���� ��ȭ��ȣ
									, ���� �ּ� , �޴���ȭ��ȣ , �̸��� , ���� , ȸ��� , �μ� , ��å , ȸ����ȭ��ȣ , ��� ,
									��ȥ���� , ����� , �����븮������ , �ֹε�Ϲ�ȣ , ���� �̿��� , ���� �α� , ���� IP ���� ,
									�������<br>�� �������� ������� : Ȩ������(ȸ������) , ������
								</p>
								<p>�� ���������� ���� �� �̿����</p>
								<p>ȸ��� ������ ���������� ������ ������ ���� Ȱ���մϴ�.</p>
								<p>
									�� ���� ������ ���� ��� ���� �� ���� ������ ���� ������� ������ ���� , ���� �� ��� ���� , ��ǰ���
									�Ǵ� û���� �� �߼�<br>�� ȸ�� ����<br>ȸ���� ���� �̿뿡 ���� ����Ȯ�� , ���� �ĺ�
									, ����Ȯ�� , ��14�� �̸� �Ƶ� �������� ���� �� ���� �븮�� ���ǿ��� Ȯ�� , �������� ���� �� ������ ��
									���� Ȱ��<br>���� �� �ľ� �Ǵ� ȸ���� ���� �̿뿡 ���� ���
								</p>
								<p>�� ���������� ���� �� �̿�Ⱓ</p>
								<p>ȸ��� �������� ���� �� �̿������ �޼��� �Ŀ��� ���� ���� �ش� ������ ��ü ���� �ı��մϴ�.</p>
								<p>
									<br>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">#</span>���������� ��Ź ó��<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">����Ŭ�δ� ���� �����
										���� ������ɿ� ���� ȸ���� ���Ǹ� ��ų� ���� ������ ���� �Ǵ� ���� �� ȸ���� ���������� �ܺο� ��Ź�Ͽ�
										ó���ϰ� �ֽ��ϴ�<span lang="EN-US">.&nbsp;����Ŭ����&nbsp;</span>��������ó��
										��Ź�ڿ� �� ������ ������ ������ �����ϴ�<span lang="EN-US">.<span></span></span>
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
										lang="EN-US">-&nbsp;</span>��Ź��<span lang="EN-US">&nbsp;:
											(</span>��<span lang="EN-US">)</span>�糪����Ʈ<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif"><span
										lang="EN-US">-&nbsp;</span>��Ź ���� ����<span lang="EN-US">&nbsp;:&nbsp;</span>īī��
										�˸��� �߼� ����<span lang="EN-US"><span></span></span></font>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<span lang="EN-US"><font
										face="arial, helvetica, sans-serif">&nbsp;<span></span></font></span>
								</p>
								<p align="left"
									style="line-height: normal; margin-bottom: 0pt; -ms-word-break: keep-all;">
									<font face="arial, helvetica, sans-serif">���� �� �Ϻ� ������¿�
										����<span lang="EN-US">,&nbsp;</span>���ڻ�ŷ��Һ��ں�ȣ�� ��<span
										lang="EN-US">&nbsp;21</span>���� �ǰ� ���»翡 ��������� ���� �˴ϴ�<span
										lang="EN-US">.<span></span></span>
									</font>
								</p>
							</div>
							<p class="check">
								<span>�������� ���� �� �̿뿡 �����Ͻʴϱ�?</span> <input
									id="agree_privacy_check0" name="agree_privacy_check[]"
									fw-filter="/1/" fw-label="�������� ���� �� �̿� ��ħ"
									fw-msg="�������� ���� �� �̿� ��ħ�� �����ϼ���" value="1" type="checkbox"><label
									for="agree_privacy_check0">������</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[����] �������� ��3�� ���� ����</h3>
							<div class="content">
								�Ʒ� ������ ���� ���δ� ȸ�����Կ� ������ ��ġ�� �ʽ��ϴ�. ��, ���� �źν� ���� �̿뿡 ������ ���� ��
								�ֽ��ϴ�.<br> <br> - ���� �޴� �� :<br> - ���� �׸� :<br>
								- ���� ���� :<br> - ���� �� �̿�Ⱓ :<br>
							</div>
							<p class="check">
								<span>�������� ��3�� ������ �����Ͻʴϱ�?</span> <input
									id="agree_information_check0" name="agree_information_check[]"
									fw-filter="" fw-label="�������� ��3�� ���� ����" fw-msg=""
									class="ec-base-chk" value="1" type="checkbox"><label
									for="agree_information_check0">������</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea displaynone">
							<h3>[����] �������� ó�� ��Ź ����</h3>
							<div class="content">
								�Ʒ� ������ ���� ���δ� ȸ�����Կ� ������ ��ġ�� �ʽ��ϴ�. ��, ���� �źν� ���� �̿뿡 ������ ���� ��
								�ֽ��ϴ�.<br> <br> - ��Ź�޴� ��(��Ź��ü) :<br> - ��Ź������ ����:<br>
							</div>
							<p class="check">
								<span>�������� ó�� ��Ź�� �����Ͻʴϱ�?</span> <input
									id="agree_consignment_check0" name="agree_consignment_check[]"
									fw-filter="" fw-label="�������� ó�� ��Ź ����" fw-msg="" value="1"
									type="checkbox"><label for="agree_consignment_check0">������</label>
							</p>
						</div>
						<div class="ec-base-box typeThinBg agreeArea ">
							<h3>[����] �������� ���� ����</h3>
							<div class="content">
								<p>�������� �� ����, �̺�Ʈ, �Ż�ǰ �ҽ� �� ���θ����� �����ϴ� ������ ���������� SMS�� �̸��Ϸ�
									�޾ƺ��� �� �ֽ��ϴ�.</p>
								<p>��, �ֹ�/�ŷ� ���� �� �ֿ� ��å�� ���õ� ������ ���ŵ��� ���ο� ������� �߼۵˴ϴ�.</p>
								<p>���� ����� �������� �����ŵ� ȸ�������� �����ϸ�, ȸ������ �� ȸ���������� ���������� ��������
									���ſ��θ� �����Ͻ� �� �ֽ��ϴ�.</p>
							</div>
							<ul class="check">
								<li class="displaynone"><span>SMS ������ �����Ͻʴϱ�?</span><label
									for="is_sms0"><input id="is_sms0" name="is_sms"
										fw-filter="" fw-label="is_sms" fw-msg="" class="ec-base-chk"
										value="T" type="checkbox">������</label></li>
								<li class=""><span>�̸��� ������ �����Ͻʴϱ�?</span><label
									for="is_news_mail0"><input id="is_news_mail0"
										name="is_news_mail" fw-label="is_news_mail" fw-msg=""
										class="ec-base-chk" value="T" type="checkbox">������</label></li>
							</ul>
						</div>
						<div class="btnArea center">
							<a href="/index.html">ȸ���������</a> <a href="#none"
								onclick="memberJoinAction()">ȸ������</a>
						</div>
						<!-- ȸ�� ���� ���� Ȯ�� ���̾� -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
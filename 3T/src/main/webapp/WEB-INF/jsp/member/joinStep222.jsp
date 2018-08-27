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
			alert("���̵� �Է����ֽʽÿ�");
			f.MEMBER_ID.focus();
			return false;
		}

		/* if (f.confirm_id.value == "") {
			alert("���̵� �ߺ�üũ�����ּ���");
			f.M_ID.focus();
			
			return false;
		} */
		if (f.PASSWD.value == "") {
			alert("��й�ȣ�� �Է����ֽʽÿ�");
			f.PASSWD.focus();
			
			return false;
		}

		if (f.PASSWD.value != f.PASSWD2.value) {
			alert("�����ȣ�� �ٸ��� �Է��߽��ϴ�.");
			f.PASSWD2.select();
			return false;
		}

		if (f.NAME.value == "") {
			alert("�̸��� �Է����ֽʽÿ�");
			f.NAME.focus();
			return false;
		}

		if (f.BIRTH.value == "") {
			alert("�ֹε�Ϲ�ȣ�� �Է����ֽʽÿ�");
			f.BIRTH.focus();
			return false;
		}



		if (f.ZIPCODE.value == "") {
			alert("�����ȣ�� �˻��Ͽ� �Է����ֽʽÿ�");
			f.ZIPCODE.focus();
			return false;
		}

		if (f.ADDR1.value == "") {
			alert("�⺻�ּҸ� �Է����ֽʽÿ�");
			f.ADDR1.focus();
			return false;
		}

		if (f.ADDR2.value == "") {
			alert("���ּҸ� �Է����ֽʽÿ�");
			f.ADDR2.focus();
			return false;
		}

		if (f.PHONE.value == "") {
			alert("��ȭ��ȣ�� �Է����ֽʽÿ�");
			f.PHONE.focus();
			return false;
		}


		if (f.EMAIL.value == "") {
			alert("�̸����� �Է����ֽʽÿ�");
			f.EMAIL.focus();
			return false;
		}	
	
	
		
	}   
	  

	  function openConfirmId(){
			var url="/checkId?MEMBER_ID="+ document.Reg_form.MEMBER_ID.value;
			var chk=document.Reg_form;
			if(chk.MEMBER_ID.value==""){
				alert("ID�� �Է��ϼ���");
				chk.MEMBER_ID.focus();
				return false;
			}
			if (chk.MEMBER_ID.value.length < 2) {
				alert("�ּ� 2�ڸ� �̻� �Է����ּ���!");
				chk.MEMBER_ID.focus();
				return false;
			}
			open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
								 "scrollbars=no,resizable=no,width=400,height=200");
		}
</script>
<!--  <script type="text/JavaScript">
	
	function check() {
			if (Reg_form.agree_privacy_check1.checked == false) {
			alert("�̿�����  ������ �ֽñ� �ٶ��ϴ�.");
			return false;
		}
		

		 if (Reg_form.agree_privacy_check0.checked == false) {
			alert("�������� ���� �� �̿뿡  ������ �ֽñ� �ٶ��ϴ�.");
			return false;
		} 

	}
</script>  -->

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

						// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

						// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.

						// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.

						var fullAddr = ''; // ���� �ּ� ����

						var extraAddr = ''; // ������ �ּ� ����

						// ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.

						if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���

							fullAddr = data.roadAddress;

						} else { // ����ڰ� ���� �ּҸ� �������� ���(J)

							fullAddr = data.jibunAddress;

						}

						// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.

						if (data.userSelectedType === 'R') {

							//���������� ���� ��� �߰��Ѵ�.

							if (data.bname !== '') {

								extraAddr += data.bname;

							}

							// �ǹ����� ���� ��� �߰��Ѵ�.

							if (data.buildingName !== '') {

								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);

							}

							// �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.

							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');

						}

						// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.

						document.getElementById('ZIPCODE').value = data.zonecode; //5�ڸ� �������ȣ ���

						document.getElementById('ADDR1').value = fullAddr;

						// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.

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
						
						<form name="Reg_form" action="/3T/joinComplete" method="post" onsubmit="return check()">
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
										<td><input id="MEMBER_ID" name="MEMBER_ID"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="���̵�" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text"> <span id="idMsg"></span>
											(�����ҹ���/����, 4~16��)</td>
									</tr>
									<tr>
										<th scope="row">��й�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="PASSWD" name="PASSWD"
											fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="��й�ȣ"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> ����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
									</tr>
									<tr>
										<th scope="row">��й�ȣ Ȯ�� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="PASSWD2"
											name="PASSWD2"
											fw-filter="isFill&amp;isMatch[passwd]" fw-label="��й�ȣ Ȯ��"
											fw-msg="��й�ȣ�� ��ġ���� �ʽ��ϴ�." autocomplete="off" maxlength="16"
											0="disabled" value="" type="password"> <span
											id="pwConfirmMsg"></span> ��й�ȣ�� ���Է� ���ּ���</td>
									</tr>
									
									<tr>
										<th scope="row">�̸� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="NAME" name="NAME"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="�̸�" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text"> <span id="idMsg"></span>ȸ������ �� ������ �Ұ����մϴ�</td>
									</tr>
									
									<tr>
										<th scope="row">�ֹε�Ϲ�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="BIRTH" name="BIRTH" maxlength="8"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="�ֹε�Ϲ�ȣ" fw-msg="" class="inputTypeText" placeholder=""
											value="" type="text"> <span id="idMsg"></span></td>
									</tr>
									
									<tr>
										<th scope="row">�����ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input type="text" id="ZIPCODE"
								name="ZIPCODE" size="28" placeholder="�˻���ư�̿����ּ���">
								<input type="button" value="�˻�" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
									</tr>
									
									<tr>
										<th scope="row">�ּ� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input type="text" id="ADDR1"
								name="ADDR1" placeholder="�ڵ�����" size="60"> <br>
								<input type="text" id="ADDR2" name="ADDR2" placeholder="�����ּҸ� �Է����ּ���"size="60"> <span id="idMsg"></span></td>
									</tr>
								
									
									
									<tr class="">
										<th scope="row">�޴���ȭ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="�ʼ�"></th>
										<td><input id="PHONE" name="PHONE" maxlength="11"
											fw-filter="isNumber&amp;isFill" fw-label="�޴���ȭ" fw-alone="N"
											fw-msg="" value="" type="text"></td>
									</tr>
									<tr>
										<th scope="row">�̸��� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input name="EMAIL1" type="text" class="box" id="EMAIL1"
										size="15" value="${sessionScope.email1}" readonly> @ <input name="EMAIL2" type="text"
										class="box" id="EMAIL2" size="20" value="${sessionScope.email2}" readonly> <<!-- select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>�����ϼ���</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">�����Է�</option>
									</select> -->
									<span id="emailMsg"></span></td>
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
								<span>�̿����� �����Ͻʴϱ�?</span> <input id="agree_service_check1"
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
							<a href="/3T/main">ȸ���������</a> 
							<input type="submit" value="ȸ������">
						</div>
						</form>
						<!-- ȸ�� ���� ���� Ȯ�� ���̾� -->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
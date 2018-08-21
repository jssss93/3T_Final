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

		if (f.BRITH.value == "") {
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
						
						<form name="Reg_form" action="/3T/mypageComplete" method="post" onsubmit="return check()">
						<div class="ec-base-table typeWrite">
							<table border="1" summary="">
								<caption>ȸ�� �⺻����</caption>
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
							
								<tbody>
									<c:forEach items="${mypageInfo }" var="row">
									<tr>
										<th scope="row">���̵� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="MEMBER_ID" name="MEMBER_ID"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="���̵�" fw-msg="" class="inputTypeText" placeholder=""
											value="${row.MEMBER_ID}" readonly type="text"> <span id="idMsg"></span>
											(�����ҹ���/����, 4~16��)</td>
									</tr>
									<tr>
										<th scope="row">��й�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="PASSWD" name="PASSWD"
											fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="��й�ȣ"
											fw-msg="" autocomplete="off" maxlength="16"
											0="disabled" value="${row.PASSWD}" type="password"> ����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
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
											value="${row.NAME}" readonly type="text"> <span id="idMsg"></span>ȸ������ �� ������ �Ұ����մϴ�</td>
									</tr>
									
									<tr>
										<th scope="row">�ֹε�Ϲ�ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input id="BIRTH" name="BIRTH" maxlength="8"
											fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
											fw-label="�ֹε�Ϲ�ȣ" fw-msg="" class="inputTypeText" placeholder=""
											value="${row.BIRTH}" readonly type="text"> <span id="idMsg"></span></td>
									</tr>
									
									<tr>
										<th scope="row">�����ȣ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input type="text" id="ZIPCODE" value="${row.ZIPCODE}"
								name="ZIPCODE" size="28" placeholder="�˻���ư�̿����ּ���">
								<input type="button" value="�˻�" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
									</tr>
									
									<tr>
										<th scope="row">�ּ� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input type="text" id="ADDR1" value="${row.ADDR1}"
								name="ADDR1" placeholder="�ڵ�����" size="60"> <br>
								<input type="text" id="ADDR2" value="${row.ADDR2}" name="ADDR2" placeholder="�����ּҸ� �Է����ּ���"size="60"> <span id="idMsg"></span></td>
									</tr>
								
									
									
									<tr class="">
										<th scope="row">�޴���ȭ <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											class="" alt="�ʼ�"></th>
										<td><input id="PHONE" name="PHONE" maxlength="11"
											fw-filter="isNumber&amp;isFill" fw-label="�޴���ȭ" fw-alone="N"
											fw-msg="" value="${row.PHONE}" type="text"></td>
									</tr>
									<tr>
										<th scope="row">�̸��� <img
											src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"
											alt="�ʼ�"></th>
										<td><input name="EMAIL1" value="${row.EMAIL}" type="text" class="box" id="EMAIL1"
										size="15"> @ <input name="EMAIL2" type="text"
										class="box" id="EMAIL2" size="20"> <select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>�����ϼ���</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">�����Է�</option>
									</select>
									<span id="emailMsg"></span></td>
									</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
										
						<div class="btnArea center">
							<a href="/3T/mypage/mypage">�������</a> 
							<input type="submit" value="��������">
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
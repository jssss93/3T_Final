<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

<%@ include file="/WEB-INF/include/include-header.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
#form td.tdstyle2 {background-color :#000000; border:#ccc 1px solid; width:400px; padding:20px; font-size:14px; font-weight:bold; color:#000;}

</style>
<script language="javascript">
	  function check() {

		var f = document.Reg_form; 
	
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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������</title>
<link href="/3T/user/member/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
	<form name="Reg_form" action="/3T/mypageComplete" method="post" onsubmit="return check()">


		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" style="padding: 50px;">
					<table width="700" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="40" align="center" class="text01 formbar" colspan="2">��������</td>
						</tr>
						<tr>
							<td height="60"></td>
						</tr>
					</table>
					<table width="700" border="0" cellspacing="0" cellpadding="0"
						id="form">
						<tr>
							<td align="left" class="tdstyle2" colspan="2">�⺻����</td>
						</tr>
						<c:forEach items="${mypageInfo }" var="row">
						<tr>
							<td class="tdstyle1">���̵�<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">
							<input type="text" name="MEMBER_ID" maxlength="20"
								size="28" value="${row.MEMBER_ID}" readonly> <input type="button" name="confirMEMBER_ID"
								value="�ߺ�Ȯ��" onclick="openConfirmId()" >
								<input type="hidden" name="confirMEMBER_ID" value=""> ����/���ڸ�
								�̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">��й�ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">
							<input type="password" maxlength="14"
								name="PASSWD" size="30" value="${row.PASSWD}"> ����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">��й�ȣȮ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="password"  maxlength="14"
								name="PASSWD2" size="30"> ��й�ȣ�� ���Է� ���ּ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">�� ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="NAME"
								size="28" value="${row.NAME}" disabled> ȸ������ �� ������ �Ұ����մϴ�</td>
						</tr>
						<tr>
							<td class="tdstyle1">�ֹε�Ϲ�ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="BIRTH" 
								size="16" maxlength="8" value="${row.BIRTH}" disabled>
						</tr>
						<tr>
							<td class="tdstyle1">�����ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="ZIPCODE"
								name="ZIPCODE" size="28" placeholder="�˻���ư�̿����ּ���" value="${row.ZIPCODE}">
								<input type="button" value="�˻�" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
						</tr>
						<tr>
							<td class="tdstyle1">�� ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="ADDR1"
								name="ADDR1" placeholder="�ڵ�����" size="60" value="${row.ADDR1}"> <br>
								<input type="text" id="ADDR2" name="ADDR2" placeholder="�����ּҸ� �Է����ּ���"size="60" value="${row.ADDR2}"></td>
						</tr>

						<tr>
							<td class="tdstyle1">�޴�����ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="PHONE" maxlength="11"
								size="28" placeholder="ex)01055551111" value="${row.PHONE}"> "-" ���� ���ڸ� �Է��ϼ���</td>
						</tr>
					
						<tr>
							<td class="tdstyle1">�̸���<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">
									<input name="EMAIL1" type="text" class="box" id="EMAIL1"
										size="15" value="${row.EMAIL}"> @ <input name="EMAIL2" type="text"
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
							</td>
							</tr>
							</c:forEach>

						</table>
								
						</tr>
						
						<p><p><p>
						
						<tr>
							<td colspan="2" align="center" style="border: 0px;"><input
								type="submit" value="�����Ϸ�" class="submit"> <input
								type="button" value="�� ��"
								onclick='location.href="/3T/mypage/mypage"' class="hreflink"></td>
						</tr>

					</table>
					
					


					</form>
</body>
</html>

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
			alert("���̵� �Է����ֽʽÿ�");
			f.M_ID.focus();
			return false;
		}

		/* if (f.confirm_id.value == "") {
			alert("���̵� �ߺ�üũ�����ּ���");
			f.M_ID.focus();
			
			return false;
		} */
		if (f.M_PASSWD.value == "") {
			alert("��й�ȣ�� �Է����ֽʽÿ�");
			f.M_PASSWD.focus();
			
			return false;
		}

		if (f.M_PASSWD.value != f.M_PASSWD2.value) {
			alert("�����ȣ�� �ٸ��� �Է��߽��ϴ�.");
			f.M_PASSWD2.select();
			return false;
		}

		if (f.M_NAME.value == "") {
			alert("�̸��� �Է����ֽʽÿ�");
			f.M_NAME.focus();
			return false;
		}

		if (f.M_JUMIN1.value == "") {
			alert("�ֹε�Ϲ�ȣ�� �Է����ֽʽÿ�");
			f.M_JUMIN1.focus();
			return false;
		}

		if (f.M_JUMIN2.value == "") {
			alert("�ֹε�Ϲ�ȣ�� �Է����ֽʽÿ�");
			f.M_JUMIN2.focus();
			return false;
		}

		if (f.M_ZIPCODE.value == "") {
			alert("�����ȣ�� �˻��Ͽ� �Է����ֽʽÿ�");
			f.M_ZIPCODE.focus();
			return false;
		}

		if (f.M_ADDR1.value == "") {
			alert("�⺻�ּҸ� �Է����ֽʽÿ�");
			f.M_ADDR1.focus();
			return false;
		}

		if (f.M_ADDR2.value == "") {
			alert("���ּҸ� �Է����ֽʽÿ�");
			f.M_ADDR2.focus();
			return false;
		}

		if (f.M_PHONE.value == "") {
			alert("��ȭ��ȣ�� �Է����ֽʽÿ�");
			f.phone.focus();
			return false;
		}


		if (f.M_EMAIL.value == "") {
			alert("�̸����� �Է����ֽʽÿ�");
			f.M_EMAIL.focus();
			return false;
		}
		
		

		
	}   

	  function openConfirmId(){
			var url="CheckIdAction.action?M_ID="+ document.Reg_form.M_ID.value;
			var chk=document.Reg_form;
			if(chk.M_ID.value==""){
				alert("ID�� �Է��ϼ���");
				chk.M_ID.focus();
				return false;
			}
			if (chk.M_ID.value.length < 2) {
				alert("�ּ� 2�ڸ� �̻� �Է����ּ���!");
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

						document.getElementById('M_ZIPCODE').value = data.zonecode; //5�ڸ� �������ȣ ���

						document.getElementById('M_ADDR1').value = fullAddr;

						// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.

						document.getElementById('M_ADDR2').focus();

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
	<form name="Reg_form" action="joinAction.action" method="post" onsubmit="return check()">


		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center" style="padding: 50px;">
					<table width="700" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="40" align="center" class="text01 formbar" colspan="2">ȸ������</td>
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
						<tr>
							<td class="tdstyle1">���̵�<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_ID" maxlength="20"
								size="28"> <input type="button" name="confirm_id"
								value="�ߺ�Ȯ��" onclick="openConfirmId()" >
								<input type="hidden" name="confirm_id" value=""> ����/���ڸ�
								�̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">��й�ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="password" maxlength="14"
								name="M_PASSWD" size="30"> ����/���ڸ� �̿��Ͽ� 4~12�ڷ� �Է��ϼ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">��й�ȣȮ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="password"  maxlength="14"
								name="M_PASSWD2" size="30"> ��й�ȣ�� ���Է� ���ּ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">�� ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_NAME"
								size="28"> ȸ������ �� ������ �Ұ����մϴ�</td>
						</tr>
						<tr>
							<td class="tdstyle1">�ֹε�Ϲ�ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_JUMIN1" 
								size="6" maxlength="6"> - <input type="password" name="M_JUMIN2"
								size="7"maxlength="7"></td>
						</tr>
						<tr>
							<td class="tdstyle1">�����ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="M_ZIPCODE"
								name="M_ZIPCODE" size="28" placeholder="�˻���ư�̿����ּ���">
								<input type="button" value="�˻�" onclick="DaumPostcode()"
								class="hreflink2"> <br></td>
						</tr>
						<tr>
							<td class="tdstyle1">�� ��<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" id="M_ADDR1"
								name="M_ADDR1" placeholder="�ڵ�����" size="60"> <br>
								<input type="text" id="M_ADDR2" name="M_ADDR2" placeholder="�����ּҸ� �Է����ּ���"size="60"></td>
						</tr>

						<tr>
							<td class="tdstyle1">�޴�����ȣ<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle"><input type="text" name="M_PHONE" maxlength="11"
								size="28" placeholder="ex)01055551111"> "-" ���� ���ڸ� �Է��ϼ���</td>
						</tr>
						<tr>
							<td class="tdstyle1">�̸���<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">
									<input name="M_EMAIL1" type="text" class="box" id="M_EMAIL1"
										size="15"> @ <input name="M_EMAIL2" type="text"
										class="box" id="M_EMAIL2" size="20"> <select
										name="email3"  id="email_select"
										onChange="checkemailaddy();">
										<option value="" selected>�����ϼ���</option>
										<option value="naver.com">naver.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="hanmail.com">hanmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="1">�����Է�</option>
									</select>


								
						</tr>


					</table>
					<table width="700" border="0" cellspacing="0" cellpadding="0"
						id="form">

						<tr>
							<td align="left" class="tdstyle2" colspan="2">ȸ���߰�����</td>
						</tr>
						<tr>
							<td class="tdstyle1">ȯ�Ұ��� ����<img
								src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif"></td>
							<td valign="middle">������<input type="text"
								name="M_DEPOSITOR" size="28"><br> <br>
								�����<input type="text" name="M_NAME_BANK" size="28"><br>
								<br> ���¹�ȣ<input type="text" name="ACCOUNT_NO" size="28"
								placeholder="ex)111-212-555000"><br>
							</td>

						</tr>

						</td>
						</tr>
						<tr>
							<td colspan="2" align="center" style="border: 0px;"><input
								type="submit" value="ȸ������" class="submit"> <input
								type="button" value="�� ��"
								onclick="location.href='main.action'" class="hreflink"></td>
						</tr>
					</table>


					</form>
</body>
</html>
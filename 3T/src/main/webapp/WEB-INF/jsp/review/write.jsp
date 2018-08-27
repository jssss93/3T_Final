<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<script type="text/javascript">
		function open_win_noresizable(url, name) {
			var oWin = window
					.open(url, name,
							"scrollbars=no, status=no, resizable=no, width=700, height=500");

		}
		
	</script>	
</head>
<body>
 <script type="text/javascript">

		function validation() {

			var frm = document.forms[0];

			if (frm.TITLE.value == "") {
				alert("제목을 입력해주세요.");
				return false;
			} else if (frm.MEMBER_ID.value == "") {
				alert("이름을 입력해주세요.");
				return false;
			} else if (frm.PASSWD.value == "") {
				alert("비밀번호를 입력해주세요.");
				return false;
			} else if (frm.CONTENT.value == "") {
				alert("내용을 입력해주세요.");
				return false;
			}
			return true;
		}
	</script>

	<table width="100%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br />
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">REVIEW</font>
				</h6></td>
		</tr>
		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table border="1" align="center" class="board_list2">
		<c:choose>
			<c:when test="${list.GOODS_NO > 0 }">

				<tr class="board_subject2">
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" />
					<td>${list.NAME }<br /> KRW&nbsp;${list.PRICE } <br> <a
						class="board_subject4" type="button"
						onclick="javascript:open_win_noresizable('reviewGoodsSelect', write)">
							<img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_select.gif"
							alt="상품정보선택">
					</a> <input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />


						<a href="/3T/goods/detail?GOODS_NO=${list.GOODS_NO}" type="submit"> <img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_detail.gif"
							alt="상품상세보기"> <input type="hidden" name="GOODS_NO"
							value="${list.GOODS_NO }" /></a>  
							
							<%-- <form action="/3T/goods/detail">
							<input type="submit" class="btn" value="상품 상세보기"> <input
								type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
						</form>  --%>
					</td>

				</tr>
			</c:when>
			<c:otherwise>
				<tr class="board_subject2">
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/upload/QA.PNG" /></td>
					<td class="board_subject"><a type="button"
						onclick="javascript:open_win_noresizable('reviewGoodsSelect', write)">
							<img
							src="http://img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_select.gif"
							alt="상품정보선택">
					</a> <input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
					</td>
				</tr>
			</c:otherwise>
		</c:choose>

	</table>

	<br />
	<br />
	<form action="/3T/review/write" onsubmit="return validation();" method="post">
		<table border="1" class="board_list2">
			<tbody>
				<tr class="board_title2">
					<th scope="row">SUBJECT</th>
					<td><input type="text" id="TITLE" name="TITLE" class="wdp_25"></input></td>
				</tr>
				<tr>
					<th scope="row">NAME</th>
					<td><input type="text" id="MEMBER_ID" name="MEMBER_ID"
						class="wdp_25"></input></td>
				</tr>

				<tr>

					<td colspan="2" class="board_content2"><textarea rows="25"
							cols="168" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>
				<!-- <tr class="board_title">
					<td><input type="button" value="파일 선택">파일 이름</td>
					</tr> -->
				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input type="text" id="PASSWD" name="PASSWD"
						class="wdp_25"></input></td>
				</tr>
				<tr class="board_title">
					<th scope="row">개인정보수집 및 <br />이용 동의
					</th>
					<td colspan="2" class="board_content2"><textarea rows="10"
							cols="80" title="내용" id="AGREE" name="AGREE">■ 개인정보의 수집·이용 목적

서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
■ 수집하려는 개인정보의 항목
이름, 주소, 연락처 등
■ 개인정보의 보유 및 이용 기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.
#개인정보의 위탁 처리애즈클로는 서비스 향상을 위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의 개인정보를 외부에 위탁하여 처리하고 있습니다. 애즈클로의 개인정보처리 수탁자와 그 업무의 내용은 다음과 같습니다. - 수탁자 : (주)루나소프트- 위탁 업무 내용 : 카카오 알림톡 발송 업무 직송 등 일부 배송형태에 따라, 전자상거래소비자보호법 제 21조에 의거 협력사에 배송정보가 제공 됩니다.</textarea>
						<br /> 개인정보 수집 및 이용에 동의 하십니까?<input type="radio" name="open"
						value="open" />동의함 <input type="radio" name="open" value="open" />동의
						안함</td>
				</tr>


			</tbody>

		</table>
		<br> <br>
		<table class="notice_button">
			<tr>
				<td><a href="#this" class="btn" id="list">목록으로</a> <input
					type="submit" class="btn" value="작성완료"> <input
					type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" /></td>
			</tr>
		</table>
	</form>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_List();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
		});

		function fn_List() {
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/list' />");
			comSubmit.submit();
		}

		function fn_Write() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/review/write' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>
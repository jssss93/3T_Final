<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
	<script type="text/javascript">
		function open_win_noresizable(url, name) {
			var oWin = window
					.open(url, name,
							"scrollbars=no, status=no, resizable=no, width=600, height=500");

		}
	</script>

	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">Q&A</font>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="70%" align="center" border="0" cellspacing="0"
		cellpadding="1" colspan="1" height="120" class="board_img">
		<c:choose>
			<c:when test="${list.GOODS_NO > 0 }">
				<tr>
					<td align="center" width="120"><img width="100" height="100"
						src="/3T/resources/upload/${list.IMAGE.split(',')[0] }" /></td>
					<td>${list.NAME }<br /> KRW&nbsp;${list.PRICE } <br /> <br />
						<input type="button" name="button" class="btn" value="상품정보 선택 ▶"
						onclick="javascript:open_win_noresizable('qaGoodsSelect', write)" />&nbsp;
						<form action="/3T/goods/detail">
							<input type="submit" class="btn" value="상품 상세보기▶"> <input
								type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
						</form>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr>
					<td align="center" width="120">기본 이미지</td>
					<td><br> <input type="button" name="button" class="btn"
						value="상품정보 선택 ▶"
						onclick="javascript:open_win_noresizable('qaGoodsSelect', write)" />
						<input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />

					</td>
				</tr>
			</c:otherwise>
		</c:choose>

	</table>
	<br />
	<br />
	<form action="/3T/qa/write">

		<table border="1" align="center" class="board_view2">
			<tbody>
				<tr class="board_title">
					<th scope="row">SUBJECT</th>
					<td><select name="CATEGORY" id="CATEGORY">
							<option value="1">상품문의</option>
							<option value="2">배송문의</option>
							<option value="3">입금확인문의</option>
							<option value="4">기타문의</option>
					</select> <input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
				</tr>

				<tr class="board_title">
					<th scope="row">NAME</th>
					<td><input type="text" id="MEMBER_ID" name="MEMBER_ID"
						class="board_title"></input></td>
				</tr>
				<tr>
					<td colspan="2" class="board_content2"><textarea rows="25"
							cols="248" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
				</tr>


				<tr class="board_title">
					<th scope="row">PASSWORD</th>
					<td><input type="text" id="PASSWD" name="PASSWD"
						class="board_title"></input></td>
				</tr>
				<tr class="board_title">
					<th scope="row">비밀글 설정</th>
					<td><input type="radio" name="STATUS" value="0"
						checked="checked" />비밀글 <input type="radio" name="STATUS"
						value="1" />공개글</td>
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
				<td>
					<!-- <a href="#this" class="btn" id="write">작성하기</a>  --> <a
					href="#this" class="btn" id="list">LIST</a> <input class="btn"
					type="submit" value="WRITE">
				</td>
			</tr>
			<input type="hidden" name="GOODS_NO" value="${list.GOODS_NO }" />
		</table>
	</form>
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
	<script type="text/javascript">
			$(document).ready(function() {
				$("#list").on("click", function(e) { //목록으로 버튼
					e.preventDefault();
					fn_List();
				});

			
			});

			function fn_List() {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/qa/list' />");
				comSubmit.submit();
			}

			
		</script>
</body>
</html>
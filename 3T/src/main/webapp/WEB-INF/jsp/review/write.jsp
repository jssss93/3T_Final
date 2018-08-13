<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center" class="text01 formbar"><h2>Q&A</h2></td>
		</tr>
		<tr>
          <td height="20" colspan="2"></td>
        </tr>
	</table>
	<table width="600" border="1" cellspacing="0" cellpadding="0" height="120" >
			<tr >
				<td colspan="2" height="1"></td>
			</tr>
			
			<s:url id="viewURL" action="GoodsView">
				<s:param name="goods_no">
					<s:property value="goods_resultClass.goods_no" />
			 	</s:param>
				<s:param name="currentPage">
			 		<s:property value="currentPage" />
				</s:param>
			</s:url>
			<tr>                                             
					<td align="center" width="120">>이미지</td>
				
					<td colspan="2"> <s:property value="goods_resultClass.goods_name" /><br>KRW <s:property value="goods_resultClass.goods_price" />
					<hr align="center" width="470" color="#8C8C8C"  ><br>
						<s:a href="%{viewURL}"><input type="button" name="button" value="상품 상세보기 ▶"/></s:a>
					</td>
			</tr>
		</table>
	
	<form id="frm">
		<table class="board_view">
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			
			<tbody>
				<tr>
                    <th scope="row">제목</th>
                    <td><input type="text" id="TITLE" name="TITLE" class="wdp_90"></input></td>
                </tr>
                
                <tr>
                    <th scope="row">이름</th>
                    <td><input type="text" id="MEMBER_ID" name="MEMBER_ID" class="wdp_90"></input></td>
                </tr>
                 <tr>
                    <td colspan="2" class="view_text">
                        <textarea rows="20" cols="100" title="내용" id="CONTENT" name="CONTENT"></textarea>
                    </td>
                </tr>
                <tr>
                <td><input type="button" value="파일 선택">파일 이름
                </td>
                <tr>
                    <th scope="row">비밀번호</th>
                    <td><input type="text" id="PASSWD" name="PASSWD" class="wdp_90"></input></td>
                </tr>
                 <tr>
                <th scope="row">개인정보수집 및 <br/>이용 동의</th>
                 <td colspan="2" class="view_text">
                        <textarea rows="10" cols="50" title="내용" id="AGREE" name="AGREE">■ 개인정보의 수집·이용 목적
서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적
■ 수집하려는 개인정보의 항목
이름, 주소, 연락처 등
■ 개인정보의 보유 및 이용 기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.
#개인정보의 위탁 처리애즈클로는 서비스 향상을 위해 관계법령에 따라 회원의 동의를 얻거나 관련 사항을 공개 또는 고지 후 회원의 개인정보를 외부에 위탁하여 처리하고 있습니다. 애즈클로의 개인정보처리 수탁자와 그 업무의 내용은 다음과 같습니다. - 수탁자 : (주)루나소프트- 위탁 업무 내용 : 카카오 알림톡 발송 업무 직송 등 일부 배송형태에 따라, 전자상거래소비자보호법 제 21조에 의거 협력사에 배송정보가 제공 됩니다.</textarea>
					<br/>
					개인정보 수집 및 이용에 동의 하십니까?<input type="radio" name="open" value="open" />동의함 
                								 <input type="radio" name="open" value="open" />동의 안함
                    </td>
                </tr>
                
               
			</tbody>
			
		</table>
		 
		
		<a href="#this" class="btn" id="write">작성하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_List();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_Write();
			});
		});
		
		function fn_List(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/review/list' />");
			comSubmit.submit();
		}
		
		function fn_Write(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/review/write' />");
			comSubmit.submit();
		}
	</script>
</body>
</html>
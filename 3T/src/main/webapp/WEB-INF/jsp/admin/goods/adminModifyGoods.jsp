<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>first</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<link rel="stylesheet" type="text/css" href="<c:url value='/css/ui.css'/>" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>

<scRIPT language="Javascript">

function GOODS_CATEGORY1Change() {
 var x = document.frm.GOODS_CATEGORY1.options.selectedIndex;
 var groups=document.frm.GOODS_CATEGORY1.options.length;
 var group=new Array(groups);
 for (i=0; i<groups; i++)
  group[i]=new Array();
 
 group[0][0]=new Option("대분류를 먼저 선택하세요","");
 group[1][0]=new Option("OUTER 소분류 선택","");
 group[1][1]=new Option("가디건","가디건");
 group[1][2]=new Option("자켓","자켓");
 group[1][3]=new Option("점퍼&패딩","점퍼&패딩");
 group[1][4]=new Option("코트","코트");
 group[1][5]=new Option("블레이저","블레이저");
 group[2][0]=new Option("TOP 소분류 선택","");
 group[2][1]=new Option("티셔츠","티셔츠");
 group[2][2]=new Option("셔츠","셔츠");
 group[2][3]=new Option("니트&스웨터","니트&스웨터");
 group[2][4]=new Option("조끼","조끼");
 group[3][0]=new Option("PANTS 소분류 선택","");
 group[3][1]=new Option("면바지","면바지");
 group[3][2]=new Option("청바지","청바지");
 group[3][3]=new Option("슬랙스","슬랙스");
 group[3][4]=new Option("반바지","반바지");
 group[4][0]=new Option("SHOES 소분류 선택","");
 group[4][1]=new Option("구두","구두");
 group[4][2]=new Option("스니커즈","스니커즈");
 group[5][0]=new Option("ACC 소분류 선택","");
 group[5][1]=new Option("가방","가방");
 group[5][2]=new Option("벨트","벨트");
 group[5][3]=new Option("ETC","ETC");
 
 temp = document.frm.GOODS_CATEGORY2;
 for (m = temp.options.length-1 ; m > 0 ; m--)
  temp.options[m]=null
 for (i=0;i<group[x].length;i++){
  temp.options[i]=new Option(group[x][i].text,group[x][i].value)
 }
 temp.options[0].selected=true
}


</scRIPT>



</head>
<body>

<div class="row" style="padding-left:15px;width:900px;">    
	<h1 class="page-header">상품수정</h1>
</div>
	<form id="frm" name="frm" enctype="multipart/form-data">
		<table class="board_view">
			<colgroup>
				<col width="13%">
				<col width="*"/>
			</colgroup>
			<caption>상품 수정</caption>
			<tbody>
				<tr>
					<th scope="row">상품번호</th>
					<td colspan="3">${goodsBasic.GOODS_NUMBER}<input type="hidden" id="GOODS_NUMBER" name="GOODS_NUMBER" class="wdp_90" value="${goodsBasic.GOODS_NUMBER}"></input></td>
				</tr>
				<tr>
					<th scope="row">상품명</th>
					<td colspan="3"><input type="text" id="GOODS_NAME" name="GOODS_NAME" class="wdp_90" value="${goodsBasic.GOODS_NAME}"></input></td>
				</tr>
				<tr>
					<th scope="row">가격</th>
					<td ><input type="text" id="GOODS_PRICE" name="GOODS_PRICE" class="wdp_90" value="${goodsBasic.GOODS_PRICE}"></input></td>
					<th scope="row">상품ON</th>
					<td>
						<c:if test="${goodsBasic.GOODS_ONOFF eq 0}">
						<input type="checkbox" name="GOODS_ONOFF" value="0" checked> &nbsp;&nbsp; ※체크시 ON
						</c:if>
						<c:if test="${goodsBasic.GOODS_ONOFF eq 1}">
						<input type="checkbox" name="GOODS_ONOFF" value="0"> &nbsp;&nbsp; ※체크시 ON
						</c:if>
					</td>
				</tr>
				<tr>
					<th scope="row">할인가격</th>
					<td><input type="text" id="GOODS_DISPRICE" name="GOODS_DISPRICE" class="wdp_90" value="${goodsBasic.GOODS_DISPRICE}"></input></td>
					<th scope="row">할인기간</th>
					<td>
					<input type="text" id="GOODS_SALEDATE" name="GOODS_SALEDATE" class="wdp_90" value="${SALEDATE}"></input>
					
					<br/>YYYY-MM-DD형식으로 입력해주세요.
					</td>
				</tr>
				<tr>
					<th scope="row">카테고리</th>
					<td colspan="3">
						<select name="GOODS_CATEGORY1" onchange="GOODS_CATEGORY1Change();" size=1>
						<OPTION value=''>대분류</OPTION>
						<c:choose>
						<c:when test="${goodsBasic.GOODS_CATEGORY1 eq 'OUTER'  }">
							<OPTION value='OUTER' selected>OUTER</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='PANTS'>PANTS</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>
						</c:when>
						<c:when test="${goodsBasic.GOODS_CATEGORY1 eq 'TOP'  }">
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='TOP' selected>TOP</OPTION>
							<OPTION value='PANTS'>PANTS</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>
						</c:when>
						<c:when test="${goodsBasic.GOODS_CATEGORY1 eq 'PANTS'  }">
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='PANTS' selected>PANTS</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>
						</c:when>
						<c:when test="${goodsBasic.GOODS_CATEGORY1 eq 'SHOES'  }">
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='PANTS'>PANTS</OPTION>
							<OPTION value='SHOES' selected>SHOES</OPTION>
							<OPTION value='ACC'>ACC</OPTION>
						</c:when>
						<c:when test="${goodsBasic.GOODS_CATEGORY1 eq 'ACC'  }">
							<OPTION value='OUTER'>OUTER</OPTION>
							<OPTION value='TOP'>TOP</OPTION>
							<OPTION value='PANTS'>PANTS</OPTION>
							<OPTION value='SHOES'>SHOES</OPTION>
							<OPTION value='ACC' selected>ACC</OPTION>
						</c:when>
						<c:otherwise>
						<OPTION value='OUTER'>OUTER</OPTION>
						<OPTION value='TOP'>TOP</OPTION>
						<OPTION value='PANTS'>PANTS</OPTION>
						<OPTION value='SHOES'>SHOES</OPTION>
						<OPTION value='ACC'>ACC</OPTION>
						</c:otherwise>
						</c:choose> 
						</select>
						<SELECT name="GOODS_CATEGORY2" size=1>
						 <OPTION value=''>소분류를 바꾸시려면 대분류를 먼저 선택하세요</OPTION>
						 <c:if test="${goodsBasic.GOODS_CATEGORY2 ne null }">
						 <OPTION value="${goodsBasic.GOODS_CATEGORY2}" selected>${goodsBasic.GOODS_CATEGORY2}</OPTION>
						 </c:if>
						</SELECT>
					</td>
				</tr>
				<tr>
					<th scope="row">연관상품</th>
					<td colspan="3"><input type="text" id="GOODS_COORDI" name="GOODS_COORDI" class="wdp_90" value="${goodsBasic.GOODS_COORDI}"></input>
					<br/> (,)로 구분해서 상품번호를 적어주세요. ex) 15,34</td>
				</tr>
				<tr>
					<th scope="row">썸네일<br/>이미지</th>
					<td colspan="3">기존 썸네일 이미지 : <img src="/MODA/file/goodsFile/${goodsBasic.GOODS_THUMBNAIL}" width="60" height="60" alt=""  onerror="this.src='/MODA/file/noimg_130.gif'" />
					<br/><br/><input type="file" id="file" name="GOODS_THUMBNAIL"><br/>
					<input type="hidden" name="ORIGINAL_THUMBNAIL" value="${goodsBasic.GOODS_THUMBNAIL }">
					※파일 업로드시 기존 이미지는 삭제됩니다.</td>
				</tr>
				<tr>
					<td colspan="4" class="view_text">
						<textarea rows="5" cols="100" title="내용" id="CONTENTS" name="GOODS_SHORTDESC" >${goodsBasic.GOODS_SHORTDESC}</textarea>
						<br/><br/>
						<textarea rows="10" cols="100" title="내용" id="CONTENTS" name="GOODS_DESC" >${goodsBasic.GOODS_DESC}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
					<a href="#this" class="btn" id="addKind">컬러/사이즈/재고 추가</a><br/>※ 삭제시 기존 상품은 삭제됩니다.<br/>
						<div id="kindDiv">
							<c:forEach var="goodsDetail"  items="${goodsDetail}" varStatus="stat">
								<input type="hidden" name="ORG_GOODS_KIND_NUMBER" value="${goodsDetail.GOODS_KIND_NUMBER}">
								<p>
									<select size=1 name="ORG_GOODS_COLOR">
									<c:choose>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'BLACK'}">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK' selected>BLACK</OPTION>
										<OPTION value='GRAY' >GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>	
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'GRAY' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY' selected>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'BROWN' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN' selected>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'BURGUNDY' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY' selected>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'PINK' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK' selected>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'PURPLE'}">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE' selected>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'WHITE' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE' selected>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'NAVY'}">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY' selected>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'BLUE' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE' selected>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'GREEN' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN' selected>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'YELLOW' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW' selected>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'RED'}">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED' selected>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'SKYBLUE' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE' selected>SKYBLUE</OPTION>
										<OPTION value='BEIGE'>BEIGE</OPTION>
									</c:when>
									<c:when test="${goodsDetail.GOODS_COLOR eq 'BEIGE' }">
										<OPTION value=''>색상</OPTION>
										<OPTION value='BLACK'>BLACK</OPTION>
										<OPTION value='GRAY'>GRAY</OPTION>
										<OPTION value='BROWN'>BROWN</OPTION>
										<OPTION value='BURGUNDY'>BURGUNDY</OPTION>
										<OPTION value='PINK'>PINK</OPTION>
										<OPTION value='PURPLE'>PURPLE</OPTION>
										<OPTION value='WHITE'>WHITE</OPTION>
										<OPTION value='NAVY'>NAVY</OPTION>
										<OPTION value='BLUE'>BLUE</OPTION>
										<OPTION value='GREEN'>GREEN</OPTION>
										<OPTION value='YELLOW'>YELLOW</OPTION>
										<OPTION value='RED'>RED</OPTION>
										<OPTION value='SKYBLUE'>SKYBLUE</OPTION>
										<OPTION value='BEIGE' selected>BEIGE</OPTION>
									</c:when>
									
									</c:choose>
									</select>	
									
									<input type="text" placeholder='사이즈' id="text" name="ORG_GOODS_SIZE" value="${goodsDetail.GOODS_SIZE}"> 
									&nbsp;재고 : ${goodsDetail.GOODS_AMOUNT}&nbsp;
									<input type="hidden" value="1">
									<input type="hidden" name="${goodsDetail.GOODS_KIND_NUMBER}" value="1">
									<input type="text" placeholder='재고수정(ex. +10/-10)' id="text" name="addAmount_${goodsDetail.GOODS_KIND_NUMBER}" >
									<a href="#this" class="btn" id="delete" name="delete">삭제</a>
								</p>
							</c:forEach>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4">
					
					<a href="#this" class="btn" id="addFile">이미지 추가</a>
						<div id="fileDiv">
							<c:forEach var="goodsImage"  items="${goodsImage}" varStatus="stat">
								<input type="hidden" name="ORIGINAL_IMAGE" value="${goodsImage.IMAGE}">
								<p>
								기존 이미지 : <img src="/MODA/file/goodsFile/${goodsImage.IMAGE}" width="60" height="60" alt=""  onerror="this.src='/MODA/file/noimg_130.gif'" /> <a href="#this" class="btn" id="delete" name="delete">삭제</a><br/>
								<input type="file" id="file" name="MODIFY_IMAGE_${goodsImage.IMAGE}">
								<input type="hidden" name="${goodsImage.IMAGE}" value="1">
								※업로드시 기존 이미지는 삭제됩니다.
								</p>
							</c:forEach>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<br/><br/>
		<a href="#this" class="btn" id="write">수정하기</a>
		<a href="#this" class="btn" id="list">목록으로</a>
	</form>
	<br/>
	<br/>
	
	<form id="commonForm" name="commonForm"></form>
	<script type="text/javascript">
		var gfv_count = 1;
		var gfc_count = 1;
	
		$(document).ready(function(){
			$("#list").on("click", function(e){ //목록으로 버튼
				e.preventDefault();
				fn_openGoodsList();
			});
			
			$("#write").on("click", function(e){ //작성하기 버튼
				e.preventDefault();
				fn_insertGood();
			});
			
			$("#addFile").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addFile();
			});
			
			$("#addKind").on("click", function(e){ //파일 추가 버튼
				e.preventDefault();
				fn_addKind();
			});
			
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteKind($(this));
			});
		});
		
		function fn_openGoodsList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/goods/goodsList' />");
			comSubmit.submit();
		}
		
		function fn_insertGood(){
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/goods/goodsModify' />");
			comSubmit.submit();
		}
		
		function fn_addKind(){
			var str = "<p><select name='GOODS_COLOR' size=1><OPTION value=''>색상</OPTION><OPTION value='BLACK'>BLACK</OPTION><OPTION value='GRAY'>GRAY</OPTION><OPTION value='BROWN'>BROWN</OPTION><OPTION value='BURGUNDY'>BURGUNDY</OPTION><OPTION value='PINK'>PINK</OPTION><OPTION value='PURPLE'>PURPLE</OPTION><OPTION value='WHITE'>WHITE</OPTION><OPTION value='NAVY'>NAVY</OPTION><OPTION value='BLUE'>BLUE</OPTION><OPTION value='GREEN'>GREEN</OPTION><OPTION value='YELLOW'>YELLOW</OPTION><OPTION value='RED'>RED</OPTION><OPTION value='SKYBLUE'>SKYBLUE</OPTION><OPTION value='BEIGE'>BEIGE</OPTION> </select> <input type='text' placeholder='사이즈' name='GOODS_SIZE'> <input type='text' placeholder='수량' name='GOODS_AMOUNT'> <a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#kindDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteKind($(this));
			});
		}
		
		function fn_deleteKind(obj){
			obj.parent().remove();
		}
		
		function fn_addFile(){
			var str = "<p><input type='file' name='IMAGE'> <a href='#this' class='btn' name='delete'>삭제</a></p>";
			$("#fileDiv").append(str);
			$("a[name='delete']").on("click", function(e){ //삭제 버튼
				e.preventDefault();
				fn_deleteFile($(this));
			});
		}
		
		function fn_deleteFile(obj){
			obj.parent().remove();
		}
		
	</script>
</body>
</html>
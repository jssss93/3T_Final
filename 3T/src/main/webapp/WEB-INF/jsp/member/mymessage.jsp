<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
</head>

<script type="text/javascript">
	function delchk() {
		return confirm("메세지를 삭제하시겠습니까?");
	}
</script>
<style>
.modal-content {
    position: relative;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0, 0, 0, .2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    box-shadow: 0 3px 9px rgba(0, 0, 0, .5);
    width: 30%;
    height: 25%;
}
h4 {
    background-color: black;
    color:white;
    font-size:14px;
    font-weight:bold;
    height: 10%;
    padding: 5;
}
.form-horizontal .form-group {
    margin-right: 0;
    margin-left: 0px;
}
.form-control {
    display: block;
    width: 50%;
    height: 34px;
    padding: 6px 12px;
    font-size: 12px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        margin: 0 0 0 20;
    
}
.form-horizontal .control-label {
    padding: 7px 0 0 0;
    padding-top: 7px;
    padding-right: 0px;
}
.modal-body {
    position: relative;
    padding: 15px;
    left: -100;
}
.col-sm-20{
    margin:0 0 0 0;
}
.col-xs-20 {
   width: 550;
}
form-group.col-sm-4 control-label a{
font-size:15px;
}
.text-center {
    text-align: center;
    margin: 15 0 0 0;
}
.form-inline .form-control{
    margin: 0 0 0 2;
}
.btn {
    width: auto;
    font-weight: bold;
    letter-spacing: 0.05em;
    font-family: 'Lato';
    border: 1px solid #ccc;
    padding: 5px 12px;
    text-transform: uppercase;
    font-size: 9px;
    line-height: 20px;
    letter-spacing: 1px;
    background: white;
    margin: 0 0 0 10;
}
.form-group {
    /* margin-bottom: 15px; */
    margin: 0 0 0 160;
    width: 80%;
    font-family: 'Lato','Nanum Gothic';
}
.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: 0.8;
}    
</style>


<body>
	<body>
		<table width="70%" align="center" border="0" cellspacing="1" cellpadding="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">MYMESSAGE</font><span><p>ㅣ 내메세지
							목록입니다.</p></span>
				</h6></td>
		</tr>

		<tr>
			<td height="25"></td>
		</tr>
	
	</table>
	<table>
			<tr>
			<td align="right" class="text01 formbar">
				<h6>
					<font color="#000000">전체 메시지수 : ${	messageAll.MESSAGEALL}</font><span></span>
				</h6>
			</td>
		</tr>
		<tr>
			<td height="10"></td>
		</tr>
		
	</table>
	<table width="80%" border="0" cellspacing="0"
		cellpadding="2" class="board_review4">
		<tr>
			<td valign="middle"><strong>확인</strong>
			<td valign="middle"><strong>메세지번호</strong>
			<td valign="middle"><strong>내용</strong>
			<td valign="middle"><strong>날짜</strong>
			<td valign="middle"><strong>삭제</strong>
		</tr>
    <tbody>
        <c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list}" var="row" varStatus="vs">
						<tr>
							<td data-toggle="modal" data-target="#myModal${vs.index}">
								<c:if test="${row.STATE == 1 }">
                    				읽음
                    			</c:if>
                    			<c:if test="${row.STATE == 0 }">
                    				읽지않음
                    			</c:if></td>
							<td data-toggle="modal" data-target="#myModal${vs.index}">${row.MESSAGE_NO }</td>
							<td data-toggle="modal" data-target="#myModal${vs.index}">${row.CONTENT}</td>
							<td data-toggle="modal" data-target="#myModal${vs.index}">${row.REGDATE}</td>
							<td style="text-align: center; vertical-align: middle;">
								<c:url var="URL" value="/member/deleteMessage">
									<c:param name="MESSAGE_NO" value="${row.MESSAGE_NO}" />
								</c:url> 
								<a href="${URL}"> 
									<input type="image" 
										src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Trash_font_awesome.svg/32px-Trash_font_awesome.svg.png"
										onclick="return delchk()">
								</a>
							</td>
						</tr>
						<div class="modal fade" id="myModal${vs.index}">
							<div class="modal-content">
								<div class="modal-head">
									<a><h4>쿠폰 확인</h4></a>
									<button class="button">
										<span class="icon icon-dismiss-white"></span> <span
											class="sr-only">이 창 닫기</span>
									</button>
								</div>
								<div class="modal-body">
									<form name="frm" method="post" class="form-horizontal">
										<input name="agreement" value="o" type="hidden">
										<section style="padding: 50px 20px;">
											<div class="form-group">
												<div class="col-xs-24 col-lg-24 form-inline">
													보낸이 : 관리자 <br><br>
													내용 : ${row.CONTENT}<br>
													<p />

													<div class="text-center" style="padding-top: 10px">
														<c:url var="URL" value="/member/messageDetail">
															<c:param name="STATE" value="1" />
															<c:param name="MESSAGE_NO" value="${row.MESSAGE_NO}" />
														</c:url>
														<a href="${URL}"> 확인 </a>
													</div>

												</div>

											</div>


										</section>
									</form>

									<div class="modal-foot"></div>
								</div>
								<div class="modal-foot"></div>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
         
    </tbody>
</table>

	<br/>
		<a class="btn" data-toggle="modal" data-target="#myModal">WRITE</a>
		<a href="/3T/member/mypage" class="btn">MY PAGE</a>
		
<div class="modal fade" id="myModal">
		<form action="/3T/member/sendmessage">
			<table width="70%" align="center" border="0" cellspacing="0"
				cellpadding="1" colspan="1" class="board_top2">
				<br>
				<tr>
					<td height="50"></td>
				</tr>
				<tr>
					<td align="left" class="text01 formbar"><h6>
							<font color="#555555">MESSAGE</font>
						</h6></td>
				</tr>

				<tr>
					<td height="50"></td>
				</tr>
			</table>

			<table class="board_view6">
				<colgroup>
					<col width="15%">
					<col width="*" />
				</colgroup>
				<tbody>
					<tr>
						<!-- <th scope="row">메세지내용</th> -->
						<td align="center" colspan="2" class="view_text"><textarea
								rows="16" cols="80" title="내용" id="CONTENT" name="CONTENT"></textarea></td>
					</tr>

				</tbody>
			</table>

			<table class="notice_button2">
				<tr>
					<td>
						<!-- <a href="#this" class="btn" id="write">작성하기</a>  --> <a
						href="#this" class="btn" id="list">목록으로</a> <input class="btn"
						type="submit" value="작성완료">
					</td>
				</tr>
			</table>
		</form>
	</div>		
		
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
</body>
</html>
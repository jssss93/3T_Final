<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>first</title>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>

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

</head>
<body>
	<body>
		<table width="70%" align="center" border="0" cellspacing="1" cellpadding="1" class="board_top">
		<br>
		<tr>
			<td height="50"></td>
		</tr>
		<tr>
			<td align="left" class="text01 formbar"><h6>
					<font color="#000000">MYCOUPON</font><span><p>ㅣ 내쿠폰
							목록입니다.</p></span>
				</h6></td>
		</tr>

		<tr>
			<td height="50"></td>
		</tr>
	</table>

	<table width="80%" border="0" cellspacing="0"
		cellpadding="2" class="board_review4">
		<tr>
			<td valign="middle"><strong>확인</strong>
			<td valign="middle"><strong>쿠폰번호</strong>
			<td valign="middle"><strong>금액</strong>
			<td valign="middle"><strong>유효기간</strong>
		</tr>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list}" var="row" varStatus="vs">
                    <tr>
                    	<td>
                    		<c:if test="${row.STATE == 1 }">
                    			읽음
                    		</c:if>
                    		<c:if test="${row.STATE == 0 }">
                    			읽지않음
                    		</c:if>                    
                    	</td>        	
                        <td>${row.COUPON_NO }</td>
                        <td>
							<a data-toggle="modal" data-target="#myModal${vs.index}"><fmt:formatNumber value="${row.CONTENT}" pattern="#,###" /></a>
						</td>
                        <td><fmt:formatDate value="${row.VALIDITY}" pattern="yyyy.MM.dd" /></td>
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
													<fmt:formatNumber value="${row.CONTENT}" pattern="#,###" />원을 할인가능한 쿠폰입니다. 
													<br> 쿠폰사용기간은 <fmt:formatDate value="${row.VALIDITY}" pattern="yyyy.MM.dd" /> 까지입니다.
													<p/>
													
													<div class="text-center" style="padding-top: 10px">
														<c:url var="URL" value="/member/couponDetail">
															<c:param name="READ" value="1" />
															<c:param name="COUPON_NO" value="${row.COUPON_NO}" />
														</c:url>
														<a href="${URL}">
															확인
														</a>
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
			<a href="/3T/member/mypage" class="btn">MY PAGE</a>
			
	<%@ include file="/WEB-INF/include/include-body.jspf"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
    <link rel="stylesheet" href="/MODA/css/memberDelete.css">
<script type="text/javascript">
   function memeberDelete(){
	   var f = document.frm;
	   var MEMBER_ID = f.MEMBER_ID.value;		
	   var PASSWD = f.PASSWD.value;		
	   console.log(MEMBER_ID);
	   console.log(PASSWD);

 	   $.ajax({
		   url: "/3T/member/deleteMember",
		   type : "post",
		   data: {"MEMBER_ID":MEMBER_ID,"PASSWD":PASSWD},			
		   success:function(data){		
			   if(data == 0){
				   alert("탈퇴되었습니다.");
				   top.location.href= '/3T/main';
				   self.close();		
			   }
			   else if(data == 1){
				 alert("비밀번호가 틀렸습니다.");
				 f.pw.value = "";
				 return false;
			   }
			   
				
  
		   }	
	   });  
}      
			      
</script>
<div class="modal-body">
<form method="post" id="frm"  name="frm" enctype="multipart/form-data">
<input type="hidden" name="MEMBER_ID" value="${sessionScope.MEMBER_ID }">
<div class="modal-inquiry">
	<section class="guide box-shadow">
		<div class="tit-join">
			<h3>알려드립니다</h3>
		</div>
		<!-- section-head//end -->
		
			<ul class="list">
				<li>제7조(회원 탈퇴 및 자격 상실 등) <br/>
						① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br/>
						② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.<br/>
						&nbsp;&nbsp;1. 가입 신청 시에 허위 내용을 등록한 경우<br/>
						&nbsp;&nbsp;2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br/>
						&nbsp;&nbsp;3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br/>
						&nbsp;&nbsp;4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br/>
						③ “몰”이 회원 자격을 제한?정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가<br/>
 						&nbsp;&nbsp;시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.<br/>
						④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고,<br/>
 						&nbsp;&nbsp;회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
				</li>
			</ul>
	
		<!-- section-body//end -->
	</section>
	<section class="inquiry box-shadow">
		<div class="tit-join">
			<h3>회원탈퇴</h3> 
		</div>
			<div class="list-item">
				<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="search-id">
			<div class="section-body list-horizontal">
			<div class="list-item">
					<div class="item-title col-xs-24 col-md-6">
						<strong>아이디</strong>
					</div>
					<div class="item-contents hasCol col-xs-24 col-md-18">
						<div class="col-xs-20 col-lg-20 form-inline">
							<b>${sessionScope.MEMBER_ID}</b>
						</div>
					</div>
				</div>
				<div class="list-item">
					<div class="item-title col-xs-24 col-md-6">
						<strong>이름</strong>
					</div>
					<div class="item-contents hasCol col-xs-24 col-md-18">
						<div class="col-xs-20 col-lg-20 form-inline">
							<b>${sessionScope.NAME }</b>
						</div>
					</div>
				</div>
				<div class="list-item">
					<div class="item-title col-xs-24 col-md-6">
						<strong>비밀번호</strong>
					</div>
					<div class="item-contents hasCol col-xs-24 col-md-18">
						<!-- <div class="col-xs-24 col-sm-18 multy"> -->
						<div class="col-xs-20 col-lg-20 form-inline">
							<input type="password"  name="PASSWD" id="PASSWD" class="form-control" size="28" type="text" required="required"> 
						</div>
					</div>
				</div>
				<!-- list-item//end -->
				
			</div>
		</div>
		
		<!-- search-id//end -->
		</div>
		</div>
		


		
	</section>
</div>
<div class="modal-button">
	<button type="button" class="oto_bb" onclick="memeberDelete()">
		<span class="button-label" >확인</span>
	</button>
	<button class="btn-close">
		<span class="button-label">닫기</span>
	</button>
</div>
</form>
</div>
<div class="modal-foot">
		</div>
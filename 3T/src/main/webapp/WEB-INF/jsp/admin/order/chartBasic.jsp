<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ include file="/WEB-INF/include/include-body.jspf"%>
<!DOCTYPE html>
<html>  
<head>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
 

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>  -->
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 

 
<%-- <script src="<c:url value='/resources/js/datepicker-ui.js'/>" charset="utf-8"></script> --%>
<meta charset="UTF-8">
<title>Insert title here</title>
 

</head>
<body><div class="row" style="padding-left: 15px; width: 900px;">
	<h1 class="page-header">매출 그래프</h1>
</div> 
<div class="row">
	<div class="panel panel-default"style="width:80%">
		<div class="panel-heading">매출을 월별,기간별로 검색하는 페이지입니다. </div>
		<div class="panel-body">
			<div class="dataTable_wrapper">
				<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row" style="margin-bottom: 5px;">
						<div class="col-sm-6" style="float: top ;height:5%;">
	                        <div style="float: left ;">
	                        	<fieldset>
								<legend>검색기간설정</legend>
									<form id="frm">
								        <span>  
								            <!-- <a href="#none" class="btnNormal" days="00"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"></a> -->
								            <a href="#this" id="searchWeek" class="btnNormal" days="07"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"></a>
								            <a href="#this" id="searchMonth" class="btnNormal" days="30"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"></a>
								            <a href="#this" id="search3Month" class="btnNormal" days="90"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"></a>
								            <a href="#this" id="search6Month" class="btnNormal" days="180"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"></a>
								        </span>
									    <input id="datepicker1" name="date1"  readonly="readonly" size="10" value="2018-02-24" type="text">
									   ~<input id="datepicker2" name="date2"  readonly="readonly" size="10" value="2018-08-30" type="text">
										<a href="#this" name="search" id="search">
											<input alt="조회" id="order_search_btn" type="image"  src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"> 
										</a>  
									</form>
								</fieldset> 
	                        </div>
						</div>
						
						<div id="container" style="width:1000px;height:700px;  float: left;"></div>
					</div>
					
				</div> 
			</div>
		</div>
	</div>
</div>
    
    <script>
        $(function() {
        	
            //input을 datepicker로 선언
            $("#datepicker1").datepicker({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "-1D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });                    
            
            
            
            
            $("#datepicker2").datepicker({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "0D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });  
            //초기값을 오늘 날짜로 설정
            $('#datepicker2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)      
        });
        
        
        
          
    </script>
</body>

</html>

<script>
function Graph(jsonData){
	console.log("Graph에서 새로운데이터 설정끝.")
	console.log(jsonData);
	
	var datearr=[]
	var totalarr=[]
	
	for(key in jsonData) {
	    datearr.push(jsonData[key].REGDATE);
	}
	datearr.sort()
	
	for(key2 in jsonData) {
		totalarr.push(jsonData[key2].TOTAL);
	}		
	
	var title = {
		text : ''
	};

	var xAxis = {
		categories : datearr	
	};
	
	var yAxis = {
		title : {
			text : ' Won'
		},
		plotLines : [ {
			value : 0,
			width : 1,
			color : '#808080'
			
		} ]
	};

	var tooltip = {
		valueSuffix : 'WON'
	}

	var legend = {
		layout : 'vertical',
		align : 'right',
		verticalAlign : 'middle',
		borderWidth : 0
	};

	var series = [
			{
				name : '총 매출',
				data : totalarr
			} ];

	var json = {};

	json.title = title;
	json.xAxis = xAxis;
	json.yAxis = yAxis;
	json.tooltip = tooltip;
	json.legend = legend; 
	json.series = series;

	$('#container').highcharts(json);
}


 
$(document).ready(function() {
	$("#search").on("click", function(e) { 
		var start 	=document.getElementById("datepicker1").value;
		var end		=document.getElementById("datepicker2").value;
		e.preventDefault();
		ajaxTest(start,end);
		
	});
	
	$("#searchWeek").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		startDate.setDate(endDate.getDate()-7);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("1주전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end);
	}); 
	
	$("#searchMonth").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		startDate.setMonth(endDate.getMonth()-1);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("1달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end);
	}); 
	
	$("#search3Month").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		startDate.setMonth(endDate.getMonth()-3);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("3달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end);
	}); 
	
	$("#search6Month").on("click", function(e) { 
		var startDate 	=	new Date();
		var endDate 	= 	new Date();
		startDate.setMonth(endDate.getMonth()-6);
		
		var start		=	startDate.getFullYear()+'-'
							+((startDate.getMonth()+1<10)	? "0"+(startDate.getMonth()+1)  : startDate.getMonth()+1)+'-'
							+((startDate.getDate()<10) 		? "0"+startDate.getDate() 		: startDate.getDate());
		var end			=	endDate.getFullYear()+'-'
							+((endDate.getMonth()+1<10) 	? "0"+(endDate.getMonth()+1)  	: endDate.getMonth()+1)+'-'
							+((endDate.getDate()<10) 		? "0"+endDate.getDate() 			: endDate.getDate());
		
		console.log("6달전:"+startDate);
		e.preventDefault();
		ajaxTest(start,end);
	}); 
	 	 
}); 
</script>
<script language="JavaScript">
var jsonData; 
function ajaxTest(start,end){
	      	 $.ajax({
            url: "/3T/admin/order/saleSearch",
            type : "post", 
            data: {"start"	:start,
            		"end" 	:end    },
            dataType: 'json',  
            success:function(data){
            	
            	jsonData=data;
            	console.log("ajax서 다시끄내는데이터?:");
            	console.log(jsonData);
            	Graph(jsonData);
            }
         });  
}      


$(document).ready(function() {
	// 태그써서 json 객체 가져오기 
	jsonData = ${json};
	console.log("첫데이터 : ");
	console.log(jsonData);
	
	var datearr=[]
	var totalarr=[]
	
	for(key in jsonData) {
	    datearr.push(jsonData[key].REGDATE);
	}
	datearr.sort()
	
	for(key2 in jsonData) {
		totalarr.push(jsonData[key2].TOTAL);
	}		
	
	var title = {
		text : ''
	};

	var xAxis = {
		categories : datearr	
	};
	
	var yAxis = {
		title : {
			text : ' Won'
		},
		plotLines : [ {
			value : 0,
			width : 1,
			color : '#808080'
			
		} ]
	};

	var tooltip = {
		valueSuffix : 'WON'
	}

	var legend = {
		layout : 'vertical',
		align : 'right',
		verticalAlign : 'middle',
		borderWidth : 0
	};

	var series = [
			{
				name : '총 매출',
				data : totalarr
			} ];

	var json = {};

	json.title = title;
	json.xAxis = xAxis;
	json.yAxis = yAxis;
	json.tooltip = tooltip;
	json.legend = legend;
	json.series = series;

	$('#container').highcharts(json);
});
</script>

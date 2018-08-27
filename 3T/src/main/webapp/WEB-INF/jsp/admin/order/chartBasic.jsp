<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="container" style="width:1000px;height:700px;  float: left;"></div>
</body>

</html>
<script language="JavaScript">
	
	$(document).ready(function() {
		
		// 태그써서 json 객체 가져오기 
		var jsonData = ${json};
		
		console.log(jsonData);
		console.log(typeof(jsonData));
		
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
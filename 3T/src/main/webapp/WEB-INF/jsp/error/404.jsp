<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<head>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
#outerDiv{
margin-top:5%;
margin-bottom:10%;
}

</style>
</head>
<body>
	<div class="information-blocks">
		<div class="container-404">
			<div class="title"> 잘못된 경로 입니다! </div>
			<div class="description">Page Not Found</div>
			<div class="text">
				잘못된 경로 입니다. <br>
				<a href="#" id="back">이전 페이지로</a><br>
				<a href="/3T/main" >홈으로</a>
			</div>
		</div>
	</div>
	<div></div>
	
<script>

$(document).ready(function() {
	$("#back").click(function() {
		history.go(-1);
	})
})

</script>
</body>
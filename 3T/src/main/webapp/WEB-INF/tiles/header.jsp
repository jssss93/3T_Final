<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- <link href="<c:url value='/resources/css/ui.css'/>" rel="stylesheet" type="text/css"/> --%>

<!-- 메인페이지 css -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.mySlides {
	display: none;
}

.w3-animate-opacit{animation:opac 0.9s}@keyframes opac{from{opacity:0.5} to{opacity:1}}

.w3-left, .w3-right, .w3-badge {
	cursor: pointer
}

.w3-badge {
	height: 13px;
	width: 13px;
	padding: 0
}

.w3-animate-righ {
	position: relative;
	animation: animateright 0.5s


}@
keyframes animateright {
	from {right: -500px;
	opacity: 1
}

to {
	right: 0;
	opacity: 1
}

}
#myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#myImg:hover {
	opacity: 0.7;
}

#myimg2:hover {
	opacity: 1;
}
.abc {  font-size: 24px; color: #000000;}
#myImg3 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
    width: 100%;
    height: auto;
    margin-top: -16px!important;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="w3-container"></div>

	<div class="w3-content w3-section w3-display-container"
		style="max-width: 100%;z-index: 9;">
		<a href="goods/detail?GOODS_NO=1161">
			<img id="myimg3" class="mySlides"
				src="/3T/resources/images/slide1.PNG" width="100%" height="auto">
		</a>
		<a href="goods/detail?GOODS_NO=1221">
			<img id="myimg3" class="mySlides"
				src="/3T/resources/images/slide2.PNG" width="100%" height="auto" >
		</a>
		<a href="goods/detail?GOODS_NO=1181">
			<img id="myimg3" class="mySlides"
				src="/3T/resources/images/slide3.PNG" width="100%" height="auto">
		</a>
		<a href="goods/detail?GOODS_NO=1201">
			<img id="myimg3" class="mySlides"
				src="/3T/resources/images/slide4.PNG" width="100%" height="auto">
		</a>
		<a href="goods/detail?GOODS_NO=1081">
			<img id="myimg3" class="mySlides"
				src="/3T/resources/images/slide5.PNG" width="100%" height="auto">
		</a>

		<div
			class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
			style="width: 80%">
			<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
			<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
			<span class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(1)"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(2)"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(3)"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(4)"></span> <span
				class="w3-badge demo w3-border w3-transparent w3-hover-white"
				onclick="currentDiv(5)"></span>
		</div>
	</div>
	<script>
		var slideIndex = 0;
		var myIndex = 0;
		showDivs(slideIndex);
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");

			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white");
			}

			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}

			slideIndex++;
			if (slideIndex > x.length) {
				slideIndex = 1
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
			setTimeout(carousel, 4000); // Change image every 2 seconds
		}

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
		}

		/* var myIndex = 0;
		 carousel();

		 function carousel() {
		 var i;
		 var x = document.getElementsByClassName("mySlides");
		 for (i = 0; i < x.length; i++) {
		 x[i].style.display = "none";  
		 }
		 myIndex++;
		 if (myIndex > x.length) {myIndex = 1}    
		 x[myIndex-1].style.display = "block";  
		 setTimeout(carousel, 3000); // Change image every 2 seconds
		 } */
	</script>

</body>
</html>
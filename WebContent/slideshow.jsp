<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>preview06｜jQueryを使ったスライダーの作り方とその仕組み</title>
<style type="text/css">
.slider {
	width: 500px;
	height: 200px;
	overflow: hidden;
	position: relative;
}

.slider .slideSet {
	position: absolute;
}

.slider .slide {
	width: 498px;
	height: 198px;
	border: 1px solid #f00;
	float: left;
}
</style>
<script src="jquery-1.12.3.min.js"></script>
</head>
<body>

	<div class="slider">
		<div class="slideSet">
			<div class="slide">slide1</div>
			<div class="slide">slide2</div>
			<div class="slide">slide3</div>
			<div class="slide">slide4</div>
			<div class="slide">slide5</div>
		</div>
	</div>
	<button class="slider-next">次へ</button>

	<script>
		var slideWidth = $('.slide').outerWidth(); // .slideの幅を取得して代入
		var slideNum = $('.slide').length; // .slideの数を取得して代入
		var slideSetWidth = slideWidth * slideNum; // .slideの幅×数で求めた値を代入
		$('.slideSet').css('width', slideSetWidth); // .slideSetのスタイルシートにwidth: slideSetWidthを指定

		// アニメーションを実行する独自関数
		var sliding = function() {
			$('.slideSet').animate({
				left : -slideWidth
			});
		}

		// 次へボタンが押されたとき
		$('.slider-next').click(function() {
			sliding();
		});
	</script>

</body>
</html>
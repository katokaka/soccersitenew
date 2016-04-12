<!--
-@author S.Kato 4/10
-@version 1.0
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cart</title>
<style type="text/css">
.cart-img {
	width: 165px;
	height: 110px;
}

.content {
	width: 800x;
	margin: 100px auto;
	background-color: #f5f5f5;
	overflow: hidden;
	border-radius: 10px;
	overflow: hidden;
}

.set {
	margin: 50px 100px;
	padding: 20px; background-color : #ffffff;
	overflow: hidden;
	border-radius: 10px;
	overflow: hidden;
	background-color: #ffffff;
}

.title {
	padding: 0px 20px;
	margin: 50px 100px;
	background-color: #ffffff;
	border-radius: 10px;
	overflow: hidden;
}
</style>

<script type="text/javascript">
	function func() {
		var xx = parseFloat(document.F1.T1.value);
		var yy = parseFloat(document.F1.T2.value);
		document.F1.T3.value = xx * yy;
	}
</script>

</head>
<body>
	<div class="content">
		<div class="title">
			<h1>カート</h1>
		</div>
		<div class="set">
			<table>
				<tr>
					<td><img src="img/real6.jpg" class="cart-img"></td>
					<td>試合名：レアルマドリード VSバルセロナ<br> ホテル名: <br> 飛行機：ファーストクラス<br>
					</td>
				</tr>
			</table>
			<p>
			<form name="F1" action="#">
				<input type="text" name="T1">
				<output type="text" value="lot" />
				円× <input type="text" name="T2">枚 <input type="button"
					value="＝" onclick="func()"> 合計¥<input type="text" name="T3">-
			</form>
			</p>
		</div>
	</div>
</body>
</html>
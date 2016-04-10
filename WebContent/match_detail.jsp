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
<title>商品詳細</title>
</head>
<style type="text/css">
.image {
	width: 300px;
	height: 200px;
}
</style>
<body>
	<jsp:include page="header.jsp" />
	プランの選択
	<table>
		<tr>
			<td><img src="img/real6.jpg" width="342px" height="232px"></td>
			<td>レアルマドリード VSバルセロナ</td>
			<td><img src="img/barusa03.jpeg" width="342px" height="232px"></td>
		</tr>
	</table>
	<img name="myIMG" src="img/the_serras_hotel05.jpg" class="image">
	<br>
	<form>
		<input type="radio" name="myRB"
			onClick="Gazou('img/the_serras_hotel05.jpg')" checked>Hotel The Serras <input
			type="radio" name="myRB" onClick="Gazou('img/ka-sakanpe-ru.jpg')">ペンギン
		<input type="radio" name="myRB" onClick="Gazou('img/Hotel1989.jpg')">ねこ
		<input type="radio" name="myRB" onClick="Gazou('images/icons4.gif')">ねずみ
		<input type="radio" name="myRB" onClick="Gazou('images/icons5.gif')">ライオン
	</form>

	ホテル：
	<table>
		<tr>
			<td><input type="radio" name="q1" value="Hotel The Serras1">
				<img src="img/the_serras_hotel.jpg" class="image"></td>
			<td><input type="radio" name="q1" value="カサ キャンパー"> <img
				src="img/ka-sakanpe-ru.jpg" class="image"></td>
			<td><input type="radio" name="q1" value="ホテル1989"> <img
				src="img/Hotel1989.jpg" class="image"></td>
		</tr>
	</table>

	<footer>
		<div align="center">Copyright SoccerMania All rights reserved.</div>
		<br>
	</footer>
	<script type="text/javascript">
		function Gazou(mysrc) {
			document.myIMG.src = mysrc;
		}
		</script>
</body>
</html>

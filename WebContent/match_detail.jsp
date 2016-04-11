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
	width: 800px;
	height: 150px;
	margin: 0px 60px;
}

table td {
	margin-right: auto;
	margin-left: auto
}

.content {
	width: 1000px;
	margin: 100px auto;
	background-color: #f5f5f5;
	overflow: hidden;
	border-radius: 10px;
}

.radiobuttun-align {
	padding: 30px;
}

.radiobuttun {
	padding: 0px 20px;
}

.table-align {
	padding: 10px 30px;
}

.title {
	margin-top: 30px;
	margin-left: 30px;
	margin-right: 30px;
	background-color: #f8f8ff;
	border-radius: 10px;
	padding: 0px 0px;
}

button {
	color: #ffff00;
	background-color: #f0f8ff;
	font-weight: bold;
	padding: 10px 30px;
	text-align: center;
	margin: 30px 30px;
	border-radius: 10px;
}

.button-align {
	margin: 30px 30px;
}
</style>
<body>
	<jsp:include page="header.jsp" />
	<div class="content">
		<div class="title">
			<h1>プランの選択</h1>
		</div>
		<table>
			<tr>
				<td class="table-align"><img src="img/real6.jpg" width="342px"
					height="232px"></td>
				<td align="center" class="table-align"><h5>
						レアルマドリード <br> <br> VS <br> <br> バルセロナ
					</h5></td>
				<td class="table-align"><img src="img/barusa03.jpeg"
					width="342px" height="232px"></td>
			</tr>
		</table>
		<div class="radiobuttun-align">
			<div class="title">
				<h3>Q1、ホテルはどちらになさいますか?</h3>
			</div>

			<form>
				<div class="radiobuttun">
					<input type="radio" name="myRB"
						onClick="Gazou('img/the_serras_hotel06.png')" checked>Hotel
					The Serras<br>
				</div>
				<div class="radiobuttun">
					<input type="radio" name="myRB"
						onClick="Gazou('img/ka-sakanpe-ru04.jpg')">ホテル カーサ カンペール
					バルセロナ<br>
				</div>
				<div class="radiobuttun">
					<input type="radio" name="myRB"
						onClick="Gazou('img/Hotel198904.jpg')">ホテル1989<br>
				</div>
			</form>
		</div>
		<img name="myIMG" src="img/the_serras_hotel06.png" class="image">
		<br>
		<div class="radiobuttun-align">
			<div class="title">
				<h3>Q2、飛行機はどちらになさいますか?</h3>
			</div>
			<div class="radiobuttun">
				<input type="radio" name="airport" checked>ファーストクラス<br>
			</div>
			<div class="radiobuttun">
				<input type="radio" name="airport">ビジネスクラス<br>
			</div>
			<div class="radiobuttun">
				<input type="radio" name="airport"> エコノミークラス<br>
			</div>
		</div>
		<div class="radiobuttun-align">
			<div class="title">
				<h3>Q3、人数は何人ですか?</h3>
			</div>
			<div class="radiobuttun">
				<s:select name="numOfPeople"
					list="#{ '1':'１人',
                                                 '2':'２人',
                                                 '3':'３人',
                                                 '4':'４人',
                                                 '5':'５人',
                                                 '6':'６人',
                                                 '7':'７人',
                                                 '8':'８人',
                                                 '9':'９人',
                                                 '10':'１０人'}" />
			</div>
		</div>
		<div class="button-align">
			<center>
				<button>カートに入れる</button>
			</center>
		</div>
	</div>

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

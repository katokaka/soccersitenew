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
<script type="text/javascript">
	function foo() {
		var x = document.getElementById("input").value;
		var t = document.createTextNode('こんにちは，' + x + 'さん！');
		var u = document.getElementById("output");
		u.replaceChild(t, u.childNodes[0]);
	};
</script>

</head>
<body>
	<h1>カート</h1>
	<table>
		<tr>
			<td><img src="img/real6.jpg" class="cart-img"></td>
			<td>試合名</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td><img src="img/ka-sakanpe-ru.jpg" class="cart-img"></td>
			<td>ホテル名</td>
			<td>×</td>
			<td><p>
					<label for="input">お名前：</label> <input id="input" onchange="foo();">
				</p>
				<p id="output">出力欄：</p></td>
		</tr>
		<tr>
			<td><img src="img/real6.jpg" class="cart-img"></td>
			<td>飛行機</td>
			<td>ファーストクラス</td>
			<td></td>
		</tr>
		合計金額¥100,000-



	</table>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索</title>
</head>
<body>


<h1>検索</h1>
<br><br>
<form action ="Search" method ="POST">

<input type="search" name="search" placeholder="キーワードを入力">

 <br><br>
 <select name ="kategori" placeholder="選択▼">
 <option selected value ="null"></option>
 <option value ="1">電化製品</option>
 <option value ="2">家具</option>
 <option value ="3">文房具</option>
 <option value ="4">雑貨</option>
 <option value ="5">車</option>
  <option value ="6">その他</option>

 </select>
 <input type="submit" name="submit" value="検索">
<%-- <input type="submit" name ="souahin" value "送信">--%>



</form>
</body>
</html>




</body>
</html>

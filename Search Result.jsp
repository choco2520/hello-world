<%@page import="java.util.ArrayList" %>
<%@page import="web.SearchBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果</title>
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
<%-- <input type="submit" value "送信">--%>
<input type="submit" name="submit" value="検索">
</form>

<br><br>
<form action ="product" method ="post">
<%
//ArrayList<SearchBean> item =new ArrayList<SearchBean>();
ArrayList<SearchBean> item =new ArrayList<SearchBean>();

item =(ArrayList<SearchBean>)session.getAttribute("ITEM");
%>




<table border ="1">

<tr>
<td>商品名</td>
<td>価格</td>
<td>詳細</td>
</tr>
<%for(int i = 0; i < item.size();i++){
	SearchBean bean = new SearchBean();
	bean = item.get(i);

 for (int j =0; j < item.size(); j+=3) %>
<tr>
<td><%=bean.getPro_name()%></td>
<td>￥<%=bean.getPro_price()%></td>
<td><button name="detail" value ="<%=bean.getPro_cd() %>">詳細</button>
</td>
</tr>


<%} %>

</form>
</table>



</body>
</html>

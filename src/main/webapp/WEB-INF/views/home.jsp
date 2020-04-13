<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.css">
	<link rel="stylesheet" href="./resources/css/site.css">
</head>
<body>
<!-- 
	<h1>
		Hello world!
	</h1>
	버튼 타입
	<div>
		<button type="button">기본 버튼</button>
		<button type="button" class="btn">BS 버튼1</button>
	</div>
	
	버튼 색상
	<div>
		<button type="button" class="btn btn-default">BS default 버튼</button>
		<button type="button" class="btn btn-primary">BS primary 버튼</button>
		<button type="button" class="btn btn-success">BS success 버튼</button>
		<button type="button" class="btn btn-warning">BS warning 버튼</button>
		<button type="button" class="btn btn-info">BS info 버튼</button>
		<button type="button" class="btn btn-danger">BS danger 버튼</button>
	</div>
	
	버튼 크기
	<div>
		<button type="button" class="btn btn-default btn-lg">BS default 버튼</button>
		<button type="button" class="btn btn-primary btn-lg">BS primary 버튼</button>
		<button type="button" class="btn btn-success btn-lg">BS success 버튼</button>
		<button type="button" class="btn btn-warning btn-lg">BS warning 버튼</button>
		<button type="button" class="btn btn-info btn-lg">BS info 버튼</button>
		<button type="button" class="btn btn-danger btn-lg">BS danger 버튼</button>
	</div>
	<P class="text-capitalize">  The time on the server is ${serverTime}. </P>
 -->
<div class="container">
<table class="table table-striped">
	<thead>
		<tr>
	 		<th>번호</th>
	 		<th>제목</th>
	 		<th>작성자</th>
	 		<th>날짜</th>
	 		<th>조회수</th>
	 		<th>댓글수</th>
	 	</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>부트스트랩 테스트</td>
			<td>박진우</td>
			<td>2020.04.06</td>
			<td>2</td>
	</tbody>
</table>
</div>
	
	
	
	<script src="http://ajax.googleapis.com/ajax/lib/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
</body>
</html>

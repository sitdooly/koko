<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style type="text/css">
			@font-face {
			    font-family: 'LeeSeoyun';
			    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/LeeSeoyun.woff') format('woff');
			    font-weight: normal;
			    font-style: normal;
			}
			
			* {
			    font-family: 'LeeSeoyun'!important;
			    font-size: 18px;
			    cursor: url(https://cur.cursors-4u.net/games/gam-13/gam1232.ani), url(https://cur.cursors-4u.net/games/gam-13/gam1232.png), auto !important;
			}
			
			h1 {
				font-size: 32px;
				line-height: 48px;
				font-weight: bold;
				text-align: center;
				margin: 50px auto 20px auto;
			}
			
			.navbar-inverse {
				border-radius: 0;
				background-color: #8B4513;
				border: none;
			}
	
			.navbar-inverse .navbar-brand {
				color: #ddd
			}
			
			
			.navbar-inverse .navbar-nav>li>a {
				position: relative;
				min-width: 120px;
				color: #f9f9f9;
			}
			
			.navbar-inverse .navbar-nav>li>a span {
				position: absolute;
				top: 50%;
				right: 10px;
				transform: translateY(-50%);
			}
			
			.navbar-form .form-group {
				margin-right: 5px;
			}
			
			table {
				table-layout: fixed;
				width: calc(100% - 100px);
				max-width: 600px;
				height: auto;
			}
			
			th,
			td {
				height: 40px;
				text-align: center;
			}
			
			th {
				width: 150px;
				text-align: center;
				background-color: #8B451340;
			}
			
			input[type="text"],
			input[type="number"],
			input[type="password"],
			textarea {
				font-size: 18px!important;
				cursor: text;
			}
			
			input[type="text"]::placeholder,
			input[type="number"]::placeholder,
			input[type="password"]::placeholder,
			textarea:placeholder {
				font-size: 18px;
			}
			
			table input[type="text"],
			table input[type="number"],
			table input[type="password"] {
				width: 100%;
				height: 100%;
				border: none;
				outline: none;
				resize: none;
				padding: 0 10px;
				cursor: text;
			}
			
			table input:read-only {
				cursor: default!important;
			}
			
			a,
			select,
			button,
			input[type="submit"],
			input[type="button"],
			input[type="reset"] {
				cursor: url(https://cur.cursors-4u.net/cursors/cur-3/cur204.ani), url(https://cur.cursors-4u.net/cursors/cur-3/cur204.png), auto !important;
			}
			
			textarea {
				width: 100%;
				height: 300px;
				padding: 10px;
				resize: none;
				border: none;
				outline: none;
			}
			
			.navbar-left {
				display: flex;
				align-items: center;
			}
			
			.top_select {
				position: relative;
				width: 100px;
				height: 34px;
				border: 1px solid #e1e1e1;
				border-radius: 5px;
				margin-right: 5px;
				background-color: #fff;
			}
			
			.top_select select {
				width: 100%;
				height: 100%;
				background-color: transparent;
				-webkit-appearance: none; /* 크롬 화살표 없애기 */
				-moz-appearance: none; /* 파이어폭스 화살표 없애기 */
				appearance: none; /* 화살표 없애기 */
				border: none;
				outline: none;
				padding: 0 10px;
			}
			
			.top_select span {
				position: absolute;
				top: 50%;
				right: 10px;
				transform: translateY(-50%);
			}
			
			.top_select span.on {
				transform: translateY(-50%) rotate(180deg);
				transition: .5s;
			}
			
			.btn-default {
				font-size: 18px;
				padding: 0;
				width: 100px;
				height: 34px;
				font-weight: bold;
				color: #8B4513;
				background-color: #eaddd3;
			}
			
			p.no_data_txt {
				font-size: 24px;
				line-height: 36px;
				font-weight: bold;
				color: #999;
				text-align: center;
				padding: 50px 0;
				margin: 0 auto;
			}
		</style>
		<script type="text/javascript">
			function selectOn() {
				$('.top_select').find('span').toggleClass('on');
			}
		</script>
	</head>
	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/lhr04_1/">예제1</a>
					<a class="navbar-brand" href="/lhr04_2/">예제2</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">도서관 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="bookinput">입력</a></li>
							<li><a href="bookout">출력</a></li>
						</ul>
					</li>
				</ul>
				<form class="navbar-form navbar-left" action="searchsave" method="post">
					<div class="top_select" onclick="selectOn()">
						<select name="key">
							<option value="bname">도서명</option>
							<option value="bwriter">저자명</option>
						</select>
						<span class="caret"></span>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="검색어 입력" name="svalue">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
			</div>
		</nav>
	</body>
</html>
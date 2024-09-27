<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>삭제 확인</title>
		<style type="text/css">
			.main_section {
				width: calc(100% - 100px);
				max-width: 600px;
				margin: 0 auto;			
			}
		
			.img_row_whole {
				display: flex;
				flex-wrap: wrap;
				justify-content: start;
				align-items: stretch;
				width: 100%;
				height: auto;
				margin: 50px auto 0 auto;
			}
						
			.img_row {
				width: 100%;
				height: auto;
				margin: 0;
			}
			
			.img_row p {
				margin-bottom: 0;
			}
			
			.img_flex {
				display: flex;
				flex-wrap: nowrap;
				justify-content: space-between;
				align-content: center;
				width: 100%;
				height: auto;
			}
			
			.img_flex p {
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
			}
			
			.img_box {
				width: 50%;
				max-width: 500px;
				height: 400px;
				overflow: hidden;
				border-radius: 10px;
				margin: 10px auto 0 auto;
			}
			
			.img_box img {
				width: 100%;
				height: 100%;
				object-fit: cover;
			}
			
			.img_box + p {
				margin: 10px auto;
			}
			
			.img_flex p + p {
				text-align: end;
			}
			
			.img_price {
				font-size: 24px;
				line-height: 36px;
				font-weight: bold;
				text-align: end;
				margin-top: 20px;
			}
			
			.img_flex.img_flex2 {
				justify-content: center;
			}
			
			button.btn_img {
				display: block;
				width: 100px;
				height: 40px;
				border: 1px solid transparent;
				background-color: transparent;
				border-radius: 5px;
			}
			
			button.btn_img.change {
				color: #bb0000;
				border-color: #bb0000;
			}
			
			button.btn_img.delete {
				color: #f9f9f9;
				background-color: #bb0000;
				margin-left: 10px;
			}
			
			button.btn_img.change:hover {
				color: #7e1515;
				border-color: #7e1515;
				background-color: #bb000010;
			}
			
			button.btn_img.delete:hover {
				background-color: #7e1515;
			}
		</style>
	</head>
	<body>
		<form action="realdelete?num=${dto.bnumber}&image=${dto.bimage}" method="post">
			<div class="main_section">
				<h1>정말 삭제하시겠습니까?</h1>
				<div class="img_row">
					<div class="img_flex">
						<p>도서번호: ${dto.bnumber}</p>
						<p>조회수: ${dto.breadcnt}</p>
					</div>
					<div class="img_box">
						<img src="./image/${dto.bimage}" alt="이미지">
					</div>
					<p>${dto.bname}</p>
					<div class="img_flex">
						<p>저자: ${dto.bwriter}</p>
						<p>출판일: ${dto.bdate}</p>
					</div>
					<p class="img_price">${dto.bprice}원</p>
					<div class="img_flex img_flex2">
						<button type="button" class="btn_img change" onclick="location.href='/lhr04_1/'">취소</button>
						<button type="submit" class="btn_img delete">삭제</button>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>
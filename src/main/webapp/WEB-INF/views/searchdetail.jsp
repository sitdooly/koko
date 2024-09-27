<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 출력</title>
		<style type="text/css">
			.main_section {
				width: calc(100% - 100px);
				max-width: 1200px;
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
				width: calc(50% - 20px);
				height: auto;
				margin: 10px 0 0 0;
			}
			
			.img_row:nth-child(2n) {
				margin-left: 40px;
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
				width: 100%;
				height: 300px;
				overflow: hidden;
				border-radius: 10px;
				margin-top: 10px;
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
				margin-top: 10px;
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
			
			button.btn_img.main {
				width: 200px;
				color: #8B4513;
				border-color: #8B4513;
			}

			button.btn_img.main:hover {
				color: #f9f9f9;
				background-color: #8B4513;
			}
			
			.img_flex.img_flex2.img_flex3 {
				margin-top: 40px;
			}
		</style>
	</head>
	<body>
		<div class="main_section">
			<h1>'${dto.key}', '${dto.sval}' 단어에 대한 검색 결과</h1>
			<div class="img_row_whole">
				<c:forEach items="${list}" var="list">
					<div class="img_row">
						<div onclick="location.href='bookdetail?num=${list.bnumber}'">
							<div class="img_flex">
								<p>도서번호: ${list.bnumber}</p>
								<p>조회수: ${list.breadcnt}</p>
							</div>
							<div class="img_box">
								<img src="./image/${list.bimage}" alt="이미지">
							</div>
							<p>${list.bname}</p>
							<div class="img_flex">
								<p>저자명: ${list.bwriter}</p>
								<p>출판일: ${list.bdate}</p>
							</div>
							<p class="img_price"><fmt:formatNumber value="${list.bprice}" pattern="#,##0.#"></fmt:formatNumber>원</p>
						</div>
						<div class="img_flex img_flex2">
							<button type="button" onclick="location.href='bookupdate?num=${list.bnumber}'" class="btn_img change">수정</button>
							<button type="button" onclick="location.href='bookdelete?num=${list.bnumber}'" class="btn_img delete">삭제</button>
						</div>
					</div>
				</c:forEach>
				<c:if test="${empty list}">
					<p class="no_data_txt">데이터가 없습니다.</p>
				</c:if>
			</div>
			<div class="img_flex img_flex2 img_flex3">
				<button type="button" onclick="location.href='/lhr04_1/'" class="btn_img main">메인</button>
			</div>
		</div>
	</body>
</html>
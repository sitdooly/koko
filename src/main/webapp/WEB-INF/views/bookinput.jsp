<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 입력</title>
	</head>
	<body>
		<form action="booksave" method="post" enctype="multipart/form-data">
			<table border="1" align="center">
				<tr>
					<th>도서명</th>
					<td>
						<input type="text" name="bname" placeholder="입력">
					</td>
				</tr>
				<tr>
					<th>저자명</th>
					<td>
						<input type="text" name="bwriter" placeholder="입력">
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td>
						<input type="text" name="bprice" placeholder="입력">
					</td>
				</tr>
				<tr>
					<th>출판일</th>
					<td>
						<input type="date" name="bdate" placeholder="입력">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="5" cols="25" name="bcontent" placeholder="입력"></textarea>
					</td>
				</tr>
				<tr>
					<th>도서표지</th>
					<td>
						<input type="file" name="bimage">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="메인" onclick="location.href='./'">
						<input type="submit" value="전송">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
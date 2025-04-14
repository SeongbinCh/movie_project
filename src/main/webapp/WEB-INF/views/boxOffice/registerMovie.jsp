<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../default/header.jsp" %>
<style type="text/css">
	.layout {
		display: flex;
		justify-content: flex-start;
		align-items: flex-start;
	}

	.menu {
		width: 250px;
		height: 400px;
		margin: 15px;
		border: 2px solid black;
	}
	
	.user_menu {
		display: flex;
		flex-direction: column;
		width: 100%;
		text-align: center;
		margin-top: 10px;
		gap: 5px;
	}
	
	.user_menu a,
	.menu > a {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 50px;
		border-bottom: 1px solid #ccc;
	}
	
	.user_menu a:hover,
	.menu > a:hover  {
		color: black;
		background-color: #ddd;
	}
	
	.booking_box {
		width: 600px;
		height: 500px;
		margin: 15px;
		border: 1px solid black;
	}
	
	.register_menu {
		margin: 15px 0 20px 15px;
	}
	
	.form_label {
		display: block;
		font-weight: bold;
		margin-bottom: 5px;
	}
	
	.form_input {
		width: 500px;
		padding: 8px;
		border: 1px solid #ccc;
		border-radius: 4px;
	}
</style>
</head>
<body>
	<div class="layout">
		<div class="menu">
			<c:choose>
				<c:when test="${ isUser }">
					<div class="user_menu">
						<a href="">내 정보 수정</a>
						<a href="">등록한 게시글</a>
						<a href="">영화 예매 내역</a>
					</div>
				</c:when>
				<c:when test="${ isAdmin }">
					<a href="${ contextPath }/boxOffice/registerMovie">영화 정보 등록</a>
				</c:when>
			</c:choose>
		</div>
		
		<div class="booking_box">
			<form action="register_movie" method="post">
				<div class="register_menu">
					<label for="movieName" class="form_label">영화 제목</label>
					<input type="text" id="movieName" class="form_input" name="movieName">
				</div>
		
				<div class="register_menu">
					<label for="movieShowDate" class="form_label">영화 상영 날짜</label>
					<input type="text" id="movieShowDate" class="form_input" name="movieShowDate">
				</div>
		
				<div class="register_menu">
					<label for="movieShowTime" class="form_label">영화 상영 시간</label>
					<input type="text" id="movieShowTime" class="form_input" name="movieShowTime" >
				</div>
		
				<button type="submit">
					등록
				</button>
			</form>
		</div>
	</div>
</body>
</html>
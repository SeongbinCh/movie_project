<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../default/header.jsp" %>
<style type="text/css">
	.modify_container {
		display: flex;
		justify-content: center;
		align-items: flex-start;
		height: 100vh;
	}
	
	.modify_table {
		display: flex;
		justify-content: center;
		border: 1px solid black;
	}
	
	.modify_table th, .modify_table td {
		border: 1px solid #ccc;
		padding: 10px;
		text-align: center;
	}
	
	.form-th {
		width: 100px;
	}
	.form-td {
		width: 500px;
	}
	
	.form-input { 
		width: 450px;
		height: 30px;
	}
	.form-content { 
		width: 450px;
		height: 250px;
	}
</style>
</head>
<body>
	<div class="modify_container">
		<form action="reviewModify" method="post">
			<input type="hidden" name="review_no" value="${ dto.review_no }"> 
		
			<table class="modify_table">
				<tr>
					<th class="form-th">글번호</th>
					<td style="width: 100px;">
						${ dto.review_no }
					</td>
					<th style="width: 125px;">작성자 아이디</th>
					<td style="width: 100px;">
						${ dto.id }
					</td>
				</tr>
				<tr>
					<th class="form-th">제목</th>
					<td class="form-td" colspan="3">
						<input type="text" name="title" class="form-input" value="${ dto.title }">
					</td>
				</tr>
				<tr>
					<th class="form-th">내용</th>
					<td class="form-td" colspan="3">
						<textarea name="content" class="form-content">${ dto.content }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<div class="form-submit">
							<button type="submit">수정</button>
							<button type="button" onclick="history.back()">이전</button>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
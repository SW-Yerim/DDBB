<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>뛰뛰빵빵</title>
<script src="resources/js/jquery-3.5.1.min.js"></script>
<script src="resources/js/jquery-1.12.1-ui.js"></script>
<script src="resources/js/default.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<div class="content-wrap customer">

		<div class="content-title">
			<h2>이벤트</h2>
			<div class="page-location">
				<img src="resources/images/common/home.jpg" alt="집 아이콘">
				<p>
					<span>고객센터</span> > <span>이벤트</span>
				</p>
			</div>
		</div>

		<div class="content">
			<!-- 문의하기 [s] -->
			<div class="question answer">
				<div class="question-con">
					<table class="content-answer">
						<tr>
								<th>작성자</th>
								<td><p>관리자</p></td>
								<th>작성일</th>
								<td><p>${eventDetailList.cusEventDate }</p>
							</td>
						</tr>
						<tr>
							<th>제 목</th>
							<td colspan="3">
								<p>${eventDetailList.cusEventTitle }</p>
							</td>
						</tr>
						<tr>
							<th>내 용</th>
							<td colspan="3">
								<p>
									<img src="${eventDetailList.cusEventContentsImg }" alt="이벤트 내용">
								</p>
							</td>
						</tr>
					</table>
				</div>
				<div class="question-btn">
					<input type="button" onclick="history.back()" class="btn large curser" value="목 록">
				</div>
			</div>
			<!-- 문의하기 [e] -->
		</div>
	</div>
</body>
</html>
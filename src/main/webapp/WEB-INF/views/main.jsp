<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	padding: 0px;
	box-sizing: border-box;
	margin: 0px;
	color: gray;
}

/* 반응형을 위한 스타일: 화면 크기에 따라 레이아웃을 조정 */
@media ( max-width : 768px) {
	.footer-bottom {
		flex-direction: column;
		align-items: flex-start; /* 화면이 작을 때 항목들을 세로로 정렬 */
	}
	.footer-logo, .footer-contact {
		margin-bottom: 20px; /* 로고 및 연락처 영역에 하단 마진 추가 */
	}
	.footer-contact {
		padding-left: 0; /* 모바일 뷰에서는 좌측 패딩 제거 */
	}
}

@import url('https://fonts.googleapis.com/icon?family=Material+Icons');

@import "bootstrap/scss/bootstrap";

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	background-color: #fff;
	color: #333;
	font-family: 'Arial', sans-serif;
}

.logo {
	font-size: 24px;
	font-weight: bold;
}

.nav-menu {
	list-style-type: none;
	padding: 0;
	margin: 0;
	display: flex;
	gap: 20px;
	font-size: 16px;
}

.nav-menu li {
	padding: 5px 10px;
	cursor: pointer;
}

.nav-menu li:hover {
	text-decoration: underline;
}

.header-icons {
	font-size: 24px;
}

.material-icons {
	cursor: pointer;
	margin-left: 20px;
}

.material-icons:hover {
	color: #555;
}

.footer {
	background-color: #f2f2f2;
	color: #333;
	font-family: 'Arial', sans-serif;
	padding: 20px 0;
	font-size: 14px;
}

.footer-container {
	max-width: 1200px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
}

.footer-left, .footer-right {
	display: flex;
	flex-direction: column;
}

.footer-left h3 {
	margin: 0;
	font-size: 20px;
	font-weight: normal;
	color: #333;
}

.footer-left .contact-info, .footer-left .contact-details {
	margin: 10px 0;
}

.footer-left .contact-details {
	font-size: 12px;
	line-height: 1.5;
}

.footer-right {
	text-align: right;
}

.social-icons {
	font-size: 24px;
	display: flex;
	justify-content: flex-end;
}

.social-icons a {
	margin-left: 10px;
	color: #333;
	text-decoration: none;
}

.footer-bottom {
	text-align: center;
	margin-top: 20px;
	border-top: 1px solid #e0e0e0;
	padding-top: 10px;
}

.footer-bottom p {
	margin: 5px 0;
	font-size: 12px;
}

.copyright {
	margin-top: 10px;
	font-size: 12px;
	justify-content: center; /* 가로 내용 중앙 정렬 */
}

.contact-center {
	text-align: center; /* 텍스트 중앙 정렬 */
	display: flex;
	justify-content: center; /* 가로 내용 중앙 정렬 */
	align-items: center; /* 세로 내용 중앙 정렬 */
	flex-direction: column; /* 요소들을 세로로 배치 */
	margin-top: 30px;
}

img {
	width: 200px;
	height: 100px;
	object-fit: cover;
}

/*  */
.body {
	padding: 30px;
	background-color: #f2f2f2;
	border-bottom: 1px solid rgb(189, 189, 189);
	border-top: 1px solid rgb(189, 189, 189);
}

.listBox {
	width: 1200px;
	height: 300px;;
	background-color: white;
	border: 1px solid black;
	border-radius: 3px;
	margin-bottom: 30px;
	display: flex;
	flex-direction: column;
}

.listBoxHeader {
	height: 50px;
	display: flex;
	justify-content: space-between;
	padding: 10px 15px;
	background-color: #555;
	font-weight: bolder;
	color: white;
}

.fontWhite {
	color: white;
}

.listImg {
	width: 180px;
	height: 180px;
	border: 1px solid black;
	background-color: white;
	border-radius: 3px;
	margin-bottom: 5px;
}

.listInfo {
	width: 199px;
	height: 250px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 10px;
}

.listText {
	height: 30px;
	display: flex;
	align-items: center;
	padding-top: 10px;
}

.listInfoBox {
	display: flex;
	justify-content: space-between;
}

a:hover, a:visited, a:link, a:active
{
    text-decoration: none;
}

.recipeLink{
	color: black;
	font-weight: bolder;
	text-align: center;
}

.recipeTitletext{
		width:180px;
		height: 30px;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
}

</style>
</head>
<body>

	<header class="header">
		<div class="logo">
			<img src="../image/LOGO.jpg">
		</div>
		<ul class="nav-menu">
			<li>레시피</li>
			<li>맛집</li>
			<a href="/product"><li>스토어</li></a>
			<li>랭킹</li>
			<li>EVENT</li>
		</ul>
		<div class="header-icons">
			<span class="material-icons">검색</span> <span class="material-icons">장바구니</span>
			<c:choose>
				<c:when test="${not empty userId}">
					<!-- 사용자가 로그인한 경우 -->
					<p>${userId}님</p>
				</c:when>
				<c:otherwise>
					<!-- 사용자가 로그인하지 않은 경우 -->
					<a href="/login"><span class="material-icons">로그인</span></a>
				</c:otherwise>
			</c:choose>

			<a href="/logout"><span class="material-icons">로그아웃</span></a>
		</div>
	</header>

	<!--  -->
	<div class="body">
		<div class="recipe listBox">
			<div class="listBoxHeader">
				<div class="fontWhite">TasttyTrove Recipe</div>
				<a>더보기</a>
			</div>

			<div class="listInfoBox">
				<c:forEach var="recipeItem" items="${recipeList}" begin="0" end="5">
					<div class="listInfo">
						<a href="/recipe/recipeInfo?id=${recipeItem.recipeId}" class="recipeLink"> <img
							src="${recipeItem.recipeFilePath}${recipeItem.recipeFileName}"
							class="listImg"> <br> <div class="recipeTitletext"> ${recipeItem.recipeTitle} </div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="product listBox">
			<div class="listBoxHeader">
				<div class="fontWhite">TasttyTrove Product</div>
				<a href="/product">더보기</a>
			</div>
			
			<div class="listInfoBox">
 				<c:forEach var="product" items="${productList}" begin="0" end="5"> 
					<div class="listInfo">
						<a href="/product" class="recipeLink"> 
						<img src="${product.uploadFile}" alt="${product.productName}"
							class="listImg"> 
							<br>${product.productName}
						</a>
					</div>
 				</c:forEach> 
			</div>
		</div>

		<div class="mustEatPlace listBox">
			<div class="listBoxHeader">
				<div class="fontWhite">TasttyTrove MustEatPlace</div>
				<a>더보기</a>
			</div>

			<div class="listInfoBox">
<%-- 				<c:forEach var="" items="" begin="0" end="5"> --%>
					<div class="listInfo">
						<a href="" class="recipeLink"> 
						<img
							src=""
							class="listImg"> 
							<br>텍스트 넣을 곳
						</a>
					</div>
<%-- 				</c:forEach> --%>
			</div>
		</div>
		
	</div>
	<!--  -->



	<footer class="footer">
		<div class="footer-container">
			<div class="footer-left">
				<h3>고객센터</h3>
				<div class="contact-info">1566 - 9564</div>
				<div class="contact-details">
					<p>운영시간: 평일 10:00 - 17:00 / 점심, 공휴일 휴무</p>
					<p>1:1문의: 09:00 - 12:00, 13:00 - 17:30 / 주말, 공휴일 휴무</p>
					<p>이메일: tasttytrove@trove.net</p>
				</div>
			</div>
			<div class="contact-center">
				<p>주소: (31144) 충남 천안시 동남구 대흥로 215 7층</p>
				<p>사업자등록번호: 667-81-02135</p>
				<p>팩스 041-561-1126</p>
			</div>
			<div class="footer-right">
				<div class="social-icons">
					<!-- 실제 링크와 아이콘으로 교체 필요 -->
					<a href="#" aria-label="YouTube"><i class="bi bi-youtube"></i></a>
					<a href="#" aria-label="Instagram"><i class="bi bi-instagram"></i></a>
					<a href="#" aria-label="Facebook"><i class="bi bi-facebook"></i></a>
					<a href="#" aria-label="Twitter"><i class="bi bi-twitter"></i></a>
					<a href="#" aria-label="Blog"><i class="bi bi-blogger"></i></a>
				</div>
			</div>
		</div>
		<div class="footer-bottom"></div>
		<div class="copyright">Ⓒ 2023 TastyTrove. ALL RIGHTS RESERVED
			Design</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path}/resources/css/style.css"/>
<link rel="stylesheet" href="${path}/resources/css/pro.css"/>
<script src="${path}/resources/js/js.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src='https://code.jquery.com/jquery-latest.min.js'></script>
<script src="${path}/resources/js/daum.js"></script>


<title>제냐</title>
<body class="d-flex flex-column min-vh-100">

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="${path}/"><img alt="logo" src="${path}/resources/img/logo.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
			<div class="collapse navbar-collapse" id="navbarScroll">
			
			<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">신제품</a>
                  	<ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/new">신제품</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">Triple Stitch™ 스니커즈</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">여행룩</a></li>
                  	</ul>                  	
				</li>					
                <li class="nav-item dropdown">
                  	<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">레디 투 웨어</a>
                     <ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/new">카테고리별</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">컬렉션</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">스타일찾기</a></li>
                  	</ul>
				</li>
				<li class="nav-item dropdown">
                  	<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">슈즈</a>
                     <ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/new">스니커즈</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">로퍼</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">레이스업</a></li>
                  	</ul>
				</li>
				<li class="nav-item dropdown">
                  	<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">액세서리</a>
                    <ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/new">카테고리별</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">아이웨어</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">여행룩</a></li>
                  	</ul>
				</li>
				<li class="nav-item dropdown">
                  	<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">선물</a>
                     <ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/new">스몰 기프트</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">스타일리쉬한 여행</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">리조트 필수 아이템</a></li>
                  	</ul>
				</li>
				<li class="nav-item dropdown">
                  	<a class="nav-link dropdown-toggle" href="${path}/new" role="button" data-bs-toggle="dropdown" aria-expanded="false">제냐의 세계</a>
                     <ul class="dropdown-menu">
                  		<li><a class="dropdown-item" href="${path}/board/photo?num=1">제품 리뷰</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">패션쇼</a></li>
                  		<li><a class="dropdown-item" href="${path}/new">파트너쉽</a></li>
                  	</ul>
				</li>                   
               
             	<c:if test ="${member!= null}">
                <!--  <c:if test ="${member.verify == 9}">
                  <li class="nav-item">
                  	<button class="btn-user-a bbb" type="button" onclick="location.href='${path}/admin/index'">
                    관리자 화면</button>
                  </li>
                  </c:if>-->
                 
                 <li class="navbar-nav row">
                	<div class="d-flex align-items-center justify-content-end">
                  		<div class="nav-item nav-link"> &nbsp; ${member.userName}&nbsp;님 &nbsp;</div>
                  		<div class="nav-item nav-link"><a href="${path}/member/mypage?userId=${member.userId}">&nbsp;마이페이지</a></div>
                  	</div>
                 </li>
                 <li class="navbar-nav nav-item justify-content-end">
                      <button class="btn btn-outline-secondary" type="button" onclick="location.href='${path}/member/logout'">
                       Logout</button>                 
                 </li>
                 
               </c:if> 
            </ul>
            <div class="icons">
	            <button class="btn" data-bs-toggle="offcanvas" data-bs-target="#search">
	            	<img class="btn-i" alt="search" src="${path}/resources/img/search.png">
	            </button>
	            <c:if test ="${member == null }">
	            <a class="btn" href="${path}/member/join">
	            	<img alt="join" src="${path}/resources/img/user.png">
	            </a>
	            <a class="btn" href="${path}/member/login">
	            	<img alt="login" src="${path}/resources/img/login.png">
	            </a>
	            </c:if>
			</div>
      </div>
   </div>
</nav>

<div class="offcanvas offcanvas-end" id="search">
	<div class="offcanvas-header">
		<h1 class="offcanvas-title">검색</h1>
      	<button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
   	</div>
   
    <div class="offcanvas-body">
    	<p>검색어를 입력해 주세요.</p>		
		<div class="input-group my-5">
			<form class="search_wrap d-flex" >
				<input type="text" placeholder="Search" name="keyword" value="${keyword}" class="form-control"/>
				<input type="button" value="검색" class="btn btn-primary sButton"/>
			</form>
		</div>
		<p>최근 검색어</p>
		<p>추천 검색어</p>
    </div>
</div>
<!--  <script>

$(".sButton").on("click", function(e){
	e.preventDefault();	
	let val = $("input[name='keyword']").val();
	searchForm.find("input[name='keyword']").val(val);
	searchForm.find("input[name='pageNum']").val(1);
	searchForm.submit();	
})
</script>-->



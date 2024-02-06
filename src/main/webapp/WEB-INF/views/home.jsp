<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file = "include/header.jsp" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<section class="container-fluid">
<div class="h50"></div>
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
    	<div class="d-block h200 slide1"></div>
      <!-- <img src="${path}/resources/img/slide1.png" alt="gift" class="d-block h200" > -->
    </div>
    <div class="carousel-item">
    	<div class="d-block h200 slide2"></div>
      <!--<img src="${path}/resources/img/slide2.png" alt="nit" class="d-block h200" > -->
    </div>
    <div class="carousel-item">
    	<div class="d-block h200 slide3"></div>
      <!--<img src="${path}/resources/img/slide3.png" alt="sneakers" class="d-block h200"> -->
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
</section>

<script type="text/javascript">
	$(document).ready(function() {
		let msg = '<c:out value="${msg}"/>';
		if(!(msg ==''))
			alert(msg);
	});		
</script>

<%@ include file = "section/sec1.jsp" %>

<%@ include file = "section/sec2.jsp" %>

<%@ include file = "section/sec3.jsp" %>

<%@ include file = "section/sec5.jsp" %>

<!-- sec4삽입 예정 -->
<%@ include file = "section/sec4.jsp" %>

<%@ include file = "section/sec6.jsp" %>

<%@ include file = "include/footer.jsp" %>
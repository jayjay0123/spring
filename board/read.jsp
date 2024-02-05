<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file='../include/header.jsp'%>
<div class="container">
	<div class="row read_sec">
		<div class="col-md-12">
		<h3 class="my-5">제품 보기</h3>
		
		<form>
			<div class="mb-3 mt-3">
				<label for="seq" class="form-label">글 번호: </label>
				<input type="text" class="form-control" id="seq" value="${read.seq}" name="seq" readonly="readonly">
			</div>
			<div class="mb-3 mt-3">
				<label for="title" class="form-label">글 제목: </label>
				<input type="text" class="form-control" id="title" value="${read.title}" name="title" readonly="readonly">
			</div>
			<div class="mb-3 mt-3">
				<label for="content" class="form-label">글 내용: </label>
				<textarea rows="10"class="form-control" name="content" readonly="readonly">${read.content}</textarea>
			</div>
			<div class="mb-3 mt-3">
				<label for="writer" class="form-label">작성자: </label>
				<input type="text" class="form-control" id="writer" value="${read.writer}" name="writer" readonly="readonly">
			</div>
			<div class="mb-3 mt-3">
				<label for="regDate" class="form-label">작성일자: </label>
				<span class="form-control" id="regDate"><fmt:formatDate value="${read.regDate}" pattern="yyyy-MM-dd" /></span>				
			</div>
			
			<div class="inputArea" >
			   <label for="imgFile">이미지</label>
			   <p>원본 이미지</p>
			   <img src="${pageContext.request.contextPath}/${read.imgFile}" class="oriImg"/>
			</div>
            <div class="d-flex justify-content-end my-5">
            	<div class="btn-group">
            		<input type="button" class="btn btn-outline-success" value="수정하기" onclick="location.href='${path}/board/modify?seq=${read.seq}'"/>
					<input type="button" class="btn btn-outline-primary" value="취소" onclick="location.href='${path}/board/photo?num=1'" />
            	</div>
            </div>
		</form>

		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp'%>
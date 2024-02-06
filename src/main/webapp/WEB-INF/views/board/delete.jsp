<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-md-12">
		<div class="h200"></div>
		<h1>delete</h1>
		
		<form method="post" autocomplete="off">
			<p>
				<label for="seq">글 번호</label>
				<input type="text" id="seq" name="seq" value="${delete}" readonly="readonly" />
			</p>
			<p>
				정말로 삭제 하시겠습니까?
			</p>
			<div class="d-flex justify-content-center my-5">
				<div class="btn-group">
					<button type="submit" class="btn btn-outline-danger">예, 삭제합니다.</button>
					<button id="cancle_btn" class="btn btn-outline-primary">아니오, 삭제하지 않습니다.</button>
				</div>				
			</div>
		</form>
		
		</div>
	</div>
</div>

<%@ include file="../include/footer.jsp" %>
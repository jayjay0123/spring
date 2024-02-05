<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file='../include/header.jsp'%>

<div class="container">
	<div class="row modify_sec">
		<div class="col-md-12">
		<h3 class="my-5">리뷰 수정</h3>
		
		<form method="post" class="was-validated" autocomplete="off" enctype="multipart/form-data">
			<div class="mb-3 mt-3">
				<label for="seq" class="form-label">글 번호: </label>
				<input type="text" class="form-control" id="seq" value="${modify.seq}" name="seq" readonly="readonly">
			</div>
			<div class="mb-3 mt-3">
				<label for="title" class="form-label">글 제목: </label>
				<input type="text" class="form-control" id="title" value="${modify.title}" name="title" >
			</div>
			<div class="mb-3 mt-3">
				<label for="content" class="form-label">글 내용: </label>
				<textarea rows="10"class="form-control" name="content" >${modify.content}</textarea>
			</div>
			<div class="mb-3 mt-3">
				<label for="writer" class="form-label">작성자: </label>
				<input type="text" class="form-control" id="writer" value="${modify.writer}" name="writer" >
			</div>
			<div class="mb-3 mt-3">
				<label for="regDate" class="form-label">작성일자: </label>
				<span class="form-control"><fmt:formatDate value="${modify.regDate}" pattern="yyyy-MM-dd" /></span>				
			</div>
			
			<div class="inputArea">
			   <label for="imgFile">이미지</label>			   
			   <input type="file" id="imgFile" name="file" class="form-control" value="파일첨부" />
				<div class="select_img">
					<p>원본 이미지</p>
					<img src="${pageContext.request.contextPath}/${modify.imgFile}" class="oriImg"/>
					<input type="hidden" name="imgFile" value="${modify.imgFile}">
					<input type="hidden" name="thumbImg" value="${modify.thumbImg}">				
				</div>
			</div>
			
			
			<script>
				 $("#imgFile").change(function(){
				  if(this.files && this.files[0]) {
				   var reader = new FileReader;
				   reader.onload = function(data) {
				    $(".select_img img").attr("src", data.target.result).width(500);        
				   }
				   reader.readAsDataURL(this.files[0]);
				  }
				 });
			</script>
						

            <div class="d-flex justify-content-end my-5">
            	<div class="btn-group">
            		<input type="submit" class="btn btn-outline-success" value="수정하기"/>
					<input type="button" id="delete_btn" class="btn btn-outline-danger" value="삭제하기" onclick="location.href='${path}/board/delete?seq=${modify.seq}'" />
				</div>
            </div>
		</form>

		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp'%>
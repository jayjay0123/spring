<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file='../include/header.jsp'%>
 

<div class="h50"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12">
		<h3 class="my-5">리뷰 작성하기</h3>
		
		<form method="post" id="form" class="was-validated" autocomplete="off" enctype="multipart/form-data">
			<table class="table table-bordered">
				<colgroup>
					<col style="width:15%;">
					<col style="width:85%;">
				</colgroup>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" id="title" name="title" class="form-control" placeholder="제목을 적어주세요" required />
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>
						<input type="text" id="writer" name="writer" class="form-control" maxlength="5" value="${member.userName}"  />
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="password" class="form-control" placeholder="비밀번호를 적어주세요" required />
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="content" class="form-control" placeholder="내용을 적어주세요"></textarea>
					</td>
				</tr>
				<tr>
					<th>이미지 첨부</th>
					<td>
						<input type="file" id="imgFile" name="file" class="form-control" value="파일첨부" required />
						<div class="select_img"><img src=""></div>
					</td>
				</tr>		
			</table>
			
			<table>
            <tr>
				<td>                
<pre class="mt-5">
1. 수집 개인정보 항목 : 제목, 성명, 내용, 전화번호, 이미지, 주소 
2. 개인정보의 수집 및 이용목적 : 제휴신청에 따른 본인확인 및 원활한 의사소통 경로 확보 
3. 개인정보의 이용기간 : 모든 검토가 완료된 후 3개월간 이용자의 조회를 위하여 보관하며, 이후 해당정보를 지체 없이 파기합니다. 
4. 그 밖의 사항은 개인정보취급방침을 준수합니다.
</pre>
                  
	<div class="my-3 d-flex align-items-center">
	   <input type="checkbox" name="info" value="1" id="check_all" class="form-check-input"> 
	   <div class="px-3">개인정보 수집 및 이용에 대해 동의합니다. </div>
	</div>
               </td>
            </tr>
            </table>
            
            <div class="d-flex justify-content-end my-5">
            	<div class="btn-group">
            		<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${path}/board/photo?num=1'" />
            		<input type="submit" id="btn_sub" value="작성" class="btn btn-success">
            	</div>
            </div>
		</form>

		</div>
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

<script> 
 $('#btn_sub').on('click', function(){
	 const checkbox = document.getElementById('check_all').checked;
	 if(checkbox == false){
		alert('개인정보수집 동의를 해주세요');
		return false;
	}
	document.form.submit();	
	
});
</script>



<%@ include file='../include/footer.jsp'%>
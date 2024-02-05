<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file='../include/header.jsp'%>
<div class="h50"></div>
<div class="h50"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card o-hidden border-0 shadow-lg my-5">
	<div class="card-body p-0">
	<div class="row">
	<div class="h50"></div>
 			<h3 class="mb-4 text-center">마이 페이지</h3>
		<form class="table table-borderd" method="post">
			<div class="form-group row mb-3">
	            <div class="col-sm-12 mb-3 mb-sm-0 d-flex">
					<input type="text" 
					class="form-control w60"
					value="아이디" readonly/>
					<input type="text" 
					class="form-control"
					name="userId"
					maxlength="50"
					value="${data.userId}" readonly/>
                 </div>
             </div>	
            <div class="form-group row mb-3">
	            <div class="col-sm-12 mb-3 mb-sm-0 d-flex">
	           		<input type="text" 
					class="form-control w60"
					value="비밀번호" readonly/>
					<input type="password" 
					class="form-control"
					name="userPass"
					value="${data.userPass}"
					maxlength="100"/>					
                 </div>
             </div>	
             <div class="form-group row mb-3">
	            <div class="col-sm-12 mb-3 mb-sm-0 d-flex">
	           		<input type="text" 
					class="form-control w60"
					value="비밀번호 확인" readonly/>
					<input type="password"
					class="form-control"
					name="userPassRe"
					value="${data.userPassRe}"
					maxlength="100"/>
                 </div>
             </div>	
             <div class="form-group row mb-3">
           		<div class="col-sm-12 mb-3 mb-sm-0 d-flex"> 
	           		<input type="text" 
					class="form-control w60"
					value="이름" readonly />
              		<input type="text" 
              		class="form-control "
              		name="userName"
              		maxlength="50"
              		value="${data.userName}"
              		/>
           		</div>
        	</div>               
        	<div class="form-group row mb-3">
	           	<div class="col-sm-12 mb-3 mb-sm-0 d-flex">
	           		<input type="text" 
					class="form-control w60"
					value="전화번호" readonly/>
	                <input type="text" 
	                class="form-control "
	                name="userPhone"
	                value="${data.userPhone}"
	                maxlength="20"
	                />
           		</div>
        	</div> 
        	<div class="form-group row mb-3">
           		<div class="col-sm-12 mb-3 mb-sm-0 d-flex">
           			<input type="text" 
					class="form-control w60"
					value="이메일" readonly/>
	                 <input type="email" 
	                 class="form-control "
	                 name="userEmail"
	                 value="${data.userEmail}"
	                 maxlength="40"
	                 />
                </div>
           	</div>
           	<div class="form-group row mb-3">
           		<div class="col-sm-12 mb-3 mb-sm-0 d-flex">
           			<input type="text" 
					class="form-control w60"
					value="주소" readonly/>
	                 <input type="text" 
	                 class="form-control a1"
	                 name="userAddr1"
	                 value="${data.userAddr1}"
	                 maxlength="10"
	                 />
	                 <input type="text" 
	                 class="form-control a2"
	                 name="userAddr2"
	                 value="${data.userAddr2}"
	                 maxlength="40"
	                 />
	                 <input type="text" 
	                 class="form-control a3"
	                 name="userAddr3"
	                 value="${data.userAddr3}"
	                 maxlength="40"
	                 />
                </div>
           	</div>
           		
			<div class="d-flex justify-content-end">
				<div class="btn-group my-5">
					<!-- <a href="${path}/member/mypage?userId=${userId}" class="btn btn-outline-success">수정</a> -->	
					<!--  <input type="hidden" name="userId" value="${userId}"/>-->
					<input type="submit" class="btn btn-outline-success" value="수정"/>
				</div>	
			</div>
		</form>
		</div>
		</div>
		</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		let msg = '<c:out value="${msg}"/>';
		if(!(msg ==''))
			alert(msg);
	});		
</script>

<%@include file="../include/footer.jsp" %>

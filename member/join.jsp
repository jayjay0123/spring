<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   
<%@ include file='../include/header.jsp'%>
<div class="h50"></div>
<div class="h50"></div>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="card o-hidden border-0 shadow-lg my-5">
	<div class="card-body p-0">
	<div class="row">
		<div class="col-lg-5 d-none d-lg-block bg-register-image"> </div>
		<div class="col-lg-7">
 			<div class="p-5">
				<div class="text-center">
 					<h3 class="mb-4">
               		Create an Account!
               		</h3>
               	<form class="user" method="post" class="was-validated">
					<div class="form-group row mb-3">
	                  	<div class="col-sm-12 mb-3 mb-sm-0">
							<input type="text" 
							class="form-control"
							placeholder="아이디"
							name="userId"
							id="userId"
							maxlength="20"
							oninput="checkId()"
							/>	
						<span class="id_ok" style="display:none;">사용 가능한 아이디입니다. </span>
	                  	<span class="id_already" style="display:none;">중복된 아이디입니다. </span>
								
	                  	</div>
	                  	
               	    </div>
               	    <div class="mb-3 d-flex" >
         
	               		<div class="form-group col-md-6 pl-3">
							<input 
							type="password"
							class="form-control"
							placeholder="비밀번호"
							name="userPass"
							maxlength="20"
							/>
						</div>
						
	               		<div class="form-group col-md-6">
							<input 
							type="password"
							class="form-control"
							placeholder="비밀번호확인"
							name="userPassRe"
							maxlength="20"
							/>
	               		</div>
	               	
               		</div>
               		<div class="form-group row mb-3">
                  		<div class="col-sm-12 mb-3 mb-sm-0"> 
                     		<input type="text" 
                     		class="form-control form-control-user"
                     		placeholder="이름"
                     		name="userName"
                     		maxlength="20"
                     		/>
                  		</div>
               		</div>               
               		<div class="form-group row mb-3">
                  		<div class="col-sm-12 mb-3 mb-sm-0">
		                     <input type="text" 
		                     class="form-control form-control-user"
		                     placeholder="휴대폰"
		                     name="userPhone"
		                     maxlength="20"
		                     />
                  		</div>
               		</div> 
               		<div class="form-group row mb-3">
                  		<div class="col-sm-12 mb-3 mb-sm-0">
			                 <input type="email" 
			                     class="form-control form-control-user"
			                     placeholder="이메일"
			                     name="userEmail"
			                     maxlength="40"
			                     />		                     
                  		</div>
               		</div>          
            
		 <div class="input-group my-2">
            <label class="input-group-text form-control-user">주소</label>
            <input type="text" class="form-control form-control-user address_input_1" name="userAddr1" placeholder="주소 찾기를 눌러주세요" readonly="readonly"/>
            <a class="btn btn-outline-primary form-control-user" onclick="go_daum_address()"> 주소 찾기</a>
         </div>         
         <div class="input-group my-2">
            <input type="text" class="form-control form-control-user address_input_2" name="userAddr2" placeholder="주소" readonly="readonly"/>
         </div>         
         <div class="input-group my-2">
            <input type="text" class="form-control form-control-user address_input_3" name="userAddr3" placeholder="상세 주소" readonly="readonly"/>
         </div>             
               
               <div class="form-group mb-3">
               <div class="btn-group">
                  <label class="btn border-0 active ft">
                     <input type="radio" name="userGender" value="남자" autocomplete="off" checked>&nbsp;남자
                  </label>
                  <label class="btn border-0 ft">
                     <input type="radio" name="userGender" value="여자" autocomplete="off">&nbsp;여자
                  </label>
               </div>
               </div>
               
               <p class="mb-3">
                  <input type="submit" 
                  class="btn btn-outline-primary btn-user btn-block"
                  value="회원가입"
                  onclick="IDCheck"
                  />
               </p>
               
               </form>
               <hr>
               <div class="text-center">
                  <a class="small" href="/member/forgot.jsp">
                  Forgot Password?
                  </a>
               </div>
               
               <div class="text-center">
                  <a class="small" href="${path}/member/login.jsp">
                  Already have an account? Login!
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>
   </div>
</div>
      </div>
   </div>
</div>

<script type="text/javascript">
	function checkId(){
		var id = $('#userId').val();

		$.ajax({
			url : '${path}/member/IdCheck', //컨트롤러에서 받아 처리
			data : {
				userId : id //입력한 값을 id라는 변수에 담음
			},
			type : 'post',
			dataType : 'json',
			success : function(cnt){ 
				if(cnt != '1' && id.length >0) { 
					$(".id_ok").css("display","inline-block");
					$(".id_already").css("display","none");
				}else if(cnt == '1' && id.length >0){ 					
					$(".id_ok").css("display","none");
					$(".id_already").css("display","inline-block");
					$(".userId").val('');
				}else {
					$(".id_ok").css("display","none");
					$(".id_already").css("display","none");
				}
			}
		}); //End Ajax
	};


</script>
<%@ include file='../include/footer.jsp'%>
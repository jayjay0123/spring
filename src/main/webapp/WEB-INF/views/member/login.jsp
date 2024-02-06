<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file='../include/header.jsp'%>




<div class="h50"></div>
<div class="h50"></div>
<div class="container bg-gradient-primary">
	<div class="row">
	<div class="justify-content-center">
	<div class="col-lg-12">
    	<div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
        		<div class="row">

                <!-- 배경이미지 -->
                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                 
                <!-- input -->
                <div class="col-lg-6">
         	    	<div class="p-5">
                		<div class="text-center mb-5">
                            <h1 class="h4 text-grey-900 mb-3">
                             Login
                            </h1>
                        </div>
                        
                         
                    <form  method="post" autocomplete="off">
                      
						<div class="form-group mb-3">
                        	<input type="text" 
                            class="form-control form-control-user"
                            placeholder="아이디"
                            name="userId"
                            maxlength="20"
                            required="required" 
                            />
                         </div>
                         
                         <div class="form-group mb-3">
                           <input type="password"
                           class="form-control form-control-user"
                           placeholder="비밀번호"
                           name="userPass"
                           maxlength="20"
                           required="required" 
                           />
                      	 </div>
                        
                     	<div class="form-group mb-3 ">                       
                          <!--   <div class="custom-control custom-checkbox small">
                           
                           <input type="checkbox" 
                           class="custom-control-input"
                           id="rememberMe" />
                           <label class="custom-control-label" for="customCheck">
                           Remember Me
                           </label>
                           </div> -->                     
                        
                        </div>
                        <p class="mb-5">
                           <input type="submit" 
                           class="btn btn-outline-primary btn-user btn-block" 
                           value="로그인"
                           id="signin_btn"
                           name="signin_btn"
                           />
                        </p>

                        <c:if test="${msg == false }">
                        <p class="text-danger">로그인에 실패했습니다</p>
                        </c:if>                                       
                         </form> 
                                         
                         <hr>
                         
                         <div class="text-center mb-3">
                            <a class="small" href="${path}/forgot">
                            Forgot Password?
                            </a>
                         </div>
                         
                         <div class="text-center mb-3">
                            <a class="small" href="${path}/member/join">
                            회원가입
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
<div class="h50"></div>
<div class="h50"></div>

<script type="text/javascript">
	$(document).ready(function() {
		let result = '<c:out value="${result}"/>';
		if(!(result ==''))
			alert("회원가입이 완료되었습니다.");
		
		let msg = '<c:out value="${msg}"/>';
		if(!(msg ==''))
			alert(msg);
	});
	
	
</script>
<script>
    $("#rememberMe").click(function () {
        if ($("input:checkbox[id='rememberMe']").is(":checked")) {
            Cookies.set("rememberMe", true);
        } else {
            Cookies.set("rememberMe", false);
        }
        alert("rememberMe")
    })
    if (Cookies.get("rememberMe") === 'true') {
        $("input:checkbox[id='rememberMe']").prop("checked", true);
    }
</script>


<%@ include file='../include/footer.jsp'%>
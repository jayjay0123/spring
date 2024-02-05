<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file='../include/header.jsp'%>

<div class="h50"></div>
<div class="container">
	<div class="row">
		<div class="col-md-12 view">
		<h3 class="my-5">Review 게시판</h3>		
		
			<ul>						
		        <c:forEach items="${list}" var="list">
		        <li>
		        	<div class="review_img">
		        		<img src="${pageContext.request.contextPath}/${list.thumbImg}">
		        	</div>
		        	<div class="review_title">
		        		<a href="${path}/board/view?seq=${list.seq}">${list.content}</a>
		        	</div>
		        	<div class="review_cont">${list.writer}</div>
		        	<div class="review_cont"><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></div>
		        	<div class="review_cont">${list.hit}</div> 
		        </li>
		        </c:forEach>	        
			</ul>
                    
            <div class="d-flex justify-content-end my-5">
            	<div class="btn-group">
            		<input type="button" value="쓰기" class="btn btn-success" onclick="location.href='${path}/board/write'" />
            	</div>
            </div>       
            
		</div>
	</div>
</div>

<%@ include file='../include/footer.jsp'%>
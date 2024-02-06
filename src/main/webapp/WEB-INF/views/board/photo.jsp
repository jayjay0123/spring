<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file='../include/header.jsp'%>
<div class="container">
	<div class="row photo_sec">

		<h3 class="my-5">제품 리뷰</h3>
		<p>Zegna의 카테고리 별 인기상품, 추천 상품, 제냐의 생생한 리뷰를 모았습니다.</p>
		
<div class="col-md-12">	
	<div class="reviews_best">
		
		<div class="cont-area">
			<div class="Review">
				<b>카테고리별 인기상품</b>																	
			</div>
		</div>
		
<div class="swiper best-slider" >
	<div class="swiper-wrapper">
		<div class="swiper-slide">
			<div class="prod">
				<div class="prod_img">
					<a href="#" class="open-popup">
						<img src="${path}/resources/img/review/re1.png">								
					</a>
				</div>
				<div class="prod_review">
					<a href="" class="open-popup">
						<q>
						수트 퀄리티나 서비스는 최고인듯
						</q>
					</a>
				</div>
			</div>
		</div>
			
		<div class="swiper-slide">
			<div class="prod">
			<div class="prod_img">
				<a href="#" class="open-popup">
					<img src="${path}/resources/img/review/re7.png">								
				</a>
			</div>
			<div class="prod_review">
				<a href="" class="open-popup">
					<q>
					착용감이 부드럽고 발이 편하네요
					</q>
				</a>
			</div>
			</div>
		</div>
			
		<div class="swiper-slide">
			<div class="prod">
			<div class="prod_img">
				<a href="#" class="open-popup">
					<img src="${path}/resources/img/review/re3.png">								
				</a>
			</div>
			<div class="prod_review">
				<a href="" class="open-popup">
					<q>
					스타일리쉬하게 들기 좋습니다.
					</q>
				</a>
			</div>
			</div>
		</div>
			
		<div class="swiper-slide">
			<div class="prod">
			<div class="prod_img">
				<a href="#" class="open-popup">
					<img src="${path}/resources/img/review/re3.png">								
				</a>
			</div>
			<div class="prod_review">
				<a href="" class="open-popup">
					<q>
					보부상 스타일로 짐을 많이 넣고 다니기 좋습니다.
					</q>
				</a>
			</div>
			</div>
		</div>
			
		<div class="swiper-slide">
			<div class="prod">
			<div class="prod_img">
				<a href="#" class="open-popup">
					<img src="${path}/resources/img/review/re3.png">								
				</a>
			</div>
			<div class="prod_review">
				<a href="" class="open-popup">
					<q>
					스타일리쉬하게 들기 좋습니다.
					</q>
				</a>
			</div>
			</div>
		</div>
		
		<div class="swiper-slide">
			<div class="prod">
			<div class="prod_img">
				<a href="#" class="open-popup">
					<img src="${path}/resources/img/review/re1.png">								
				</a>
			</div>
			<div class="prod_review">
				<a href="" class="open-popup">
					<q>
					수트 퀄리티나 서비스는 최고인듯
					</q>
				</a>
			</div>
			</div>
		</div>
			
	</div>
</div>									

</div>
<script type="text/javascript">
const swiper4 = new Swiper('.best-slider', {
    slidesPerView:2,
    spaceBetween:5,
    autoplay:{
      delay:5000,
      disableOnInteraction: false,
    },
    breakpoints: {
      570: {
        slidesPerView: 2,
        spaceBetween: 5
      },
      800: {
          slidesPerView: 3,
          spaceBetween: 5
        },
      1280:{
        slidesPerView: 5,
        spaceBetween: 20
      },
    },
    loop: true,
    
  });
</script>
			
<div class="center2 ">
	<div class="Review d-flex justify-content-between">					
		<b>타인의 취향</b>			
			<c:if test ="${member!= null}">
			<div class="nav-item d-flex mx-3">
	            <button class="nav-link btn write" onclick="location.href='${path}/board/write'">글쓰기</button>
	        </div>
	        </c:if>
	        <c:if test ="${member == null }">
	        	<button class="nav-link btn" onclick="location.href='${path}/member/login'">로그인이 필요합니다</button>
	        </c:if>
    </div>
</div>     	    
              
<div class="view">
				
	<ul>						
        <c:forEach items="${list}" var="list">
        <li class="one">
        	<div class="review_img">
        		<a href="${path}/board/read?seq=${list.seq}">
        			<img src="${pageContext.request.contextPath}/${list.thumbImg}">
        		</a>
        	</div>
        	<div class="review_title">
        		<a href="${path}/board/read?seq=${list.seq}">${list.content}</a>
        	</div>
        	<div class="review_cont">${list.writer}</div>
        	<div class="review_cont"><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /></div>
        	<div class="review_cont"><span>hits &nbsp;</span>${list.hit}</div>
        </li>
        </c:forEach>	        
	</ul>

</div>
    
	<div class="paging d-flex justify-content-center my-5">
		<c:if test="${page.prev}">
			 <span>[ <a href="${path}/board/photo?num=${page.startPageNum - 1}">이전</a> ]</span>
		</c:if>
		
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		  	<span>
		  		 <c:if test="${select != num}">
				  	 <a href="${path}/board/photo?num=${num}">${num}</a>
				  </c:if>    
				  
				  <c:if test="${select == num}">
				  	 <b>${num}</b>
				  </c:if>
		 	</span>
		</c:forEach>
		
		<c:if test="${page.next}">
            <span>[ <a href="${path}/board/photo?num=${page.endPageNum + 1}" >다음</a> ]</span> 			 
		</c:if>
	</div>         
              
		
		
		</div>
	</div>
</div>



<%@include file="../include/footer.jsp" %>

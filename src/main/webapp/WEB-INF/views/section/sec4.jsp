<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="sec4">
<div class="center content">
	<div class="project">
		<h3>PHOTO REVIEWS</h3>
		<input type="button" class="btn btn-outline-secondary" onclick="location.href='${path}/board/photo?num=1'"
		value="더보기"/>
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
</section>
<script type="text/javascript">
const swiper3 = new Swiper('.best-slider', {
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



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="sec1">
	<div class="center">
		<div class="content">
		    <h2>WHAT'S NEW</h2>		    
		    <p>편안한 실루엣과 울트라 소프트 원단의 결합을 통해 일상적으로 착용하기 좋은 캐주얼 의류가 탄생했습니다. 
		    아이코닉한 제냐 로고로 독보적인 존재감을 드러내는 세련된 새로운 시즌 제품을 만나보세요.</p>		    
		</div>
		<div class="swiper new">
			<div class="swiper-wrapper">
			    <div class="swiper-slide w100">
			        <div class="image img1"><a href="${path}/new.jsp"></a></div>
			        <p>레드 울 블렌드 팬츠</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img2"><a href="${path}/new.jsp"></a></div>
			        <p>다크 Foliage 울 블렌드 팬츠</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img3"><a href="${path}/new.jsp"></a></div>
			        <p>다크 Foliage Oasi Cashmeere
			        <br> 폴로 스웨터</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img4"><a href="${path}/new.jsp"></a></div>
			        <p>ZEGNA x The Elder Statesman
			         <br> Oasi Cashmere 셔츠</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img5"><a href="${path}/new.jsp"></a></div>
			        <p>ZEGNA x The Elder Statesman
			        <br>  Pure Cashmere 스카프</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img6"><a href="${path}/new.jsp"></a></div>
			        <p>ZEGNA x The Elder Statesman
			        <br>  Pure Cashmere 스카프</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img7"><a href="${path}/new.jsp"></a></div>
			        <p>ZEGNA x The Elder Statesman
			        <br>  Pure Cashmere 담요</p>
			    </div>
			    <div class="swiper-slide w100">
			        <div class="image img8"><a href="${path}/new.jsp"></a></div>
			        <p>ZEGNA x The Elder Statesman
			        <br>  알파카/울 슬리퍼</p>
			    </div>
			</div>                  
            <div class="swiper-pagination"></div>
        </div><!--swiper-->
	</div>
</section>
<script type="text/javascript">
const swiper = new Swiper('.new', {
    slidesPerView:3,
    spaceBetween:5,
    autoplay:{
      delay:5000,
      disableOnInteraction: false,
    },
    //반응형 breakpoints
    breakpoints: {
      570: {
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
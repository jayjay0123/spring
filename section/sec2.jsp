<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="sec2">
	<div class="center">
		<div class="content col-md-3">
		    <h3>ZEGNA WINTER</h3>
		    <h3>2024 FASHION SHOW</h3>	    
		    <p class="p">Discover the ZEGNA Winter 2024 Fashion Show from Artistic Director Alessandro Sartori.
		     Envisioned as a complete system of dressing, the collection’s versatile pieces can be transformed
		      into an array of outfits that encourage freedom and effortlessness.  </p>		    
		</div>
		<div class="swiper col col-md-9">
			<div class="swiper-wrapper">
			    <div class="swiper-slide">
			        <div class="image img1"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img2"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img3"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img4"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img5"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img6"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img7"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img8"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img9"><a href="${path}/new.jsp"></a></div>
			    </div>
			    <div class="swiper-slide">
			        <div class="image img10"><a href="${path}/new.jsp"></a></div>
			    </div>
			</div>                  
            <div class="swiper-pagination"></div>
        </div><!--swiper-->
	</div>
</section>
<script type="text/javascript">
const swiper2 = new Swiper('.col', {
    slidesPerView:2,
    spaceBetween:5,
    autoplay:{
        delay:5000,
        disableOnInteraction: false,
      },
    //반응형 breakpoints
    breakpoints: {
      570: {
        slidesPerView: 2,
        spaceBetween: 3
      },
      1280:{
        slidesPerView: 3,
        spaceBetween: 10
      },
    },
    loop: true,
    
  });
</script>

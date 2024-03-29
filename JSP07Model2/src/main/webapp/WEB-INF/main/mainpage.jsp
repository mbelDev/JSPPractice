<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/swiper-bundle.min.css" />

<%@include file="../include/gnb.jsp"%>

<main class="main">
  <section class="main-visual">
    <div class="container">
      <div class="swiper visualSwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <h1 class="title title-visual">잘 오셨습니다 형제님!</h1>
            <span class="desc desc-visual"
              >우리는 새로운 뉴욕의 차가운 어둠을 밝히는 CLEANERS
              입니다!</span
            >
            <img
              src="../images/cleaner-man.jpg"
              alt="환경정화를 하는 클리너들"
              class="img-visual"
            />
          </div>
          <div class="swiper-slide">
            <h1 class="title title-visual">우리를 부르십시오!</h1>
            <span class="desc desc-visual"
              >준비된 CLEANERS가 형제님의 곁으로 달려갑니다!</span
            >
            <img
              src="../images/cleaners.jpg"
              alt="출동 준비를 마친 클리너들"
              class="img-visual"
            />
          </div>
          <div class="swiper-slide">
            <h1 class="title title-visual">우리는 두렵지 않습니다!</h1>
            <span class="desc desc-visual"
              >우리는 우리의 방해꾼들의 시체 너머에서 희망을 발견할
              것입니다!</span
            >
            <img
              src="../images/cleaners-fight-3.jpg"
              alt="교전중인 클리너들"
              class="img-visual"
            />
          </div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination pagination-visual"></div>
      </div>
    </div>
  </section>
  <!--                                main-visual                                          -->

  <section class="main-subTitle">
    <div class="container"></div>
  </section>
  <!--                                main-subTitle                                        -->

  <section class="main-intro">
    <div class="container intro-visual">
      <div class="contents-intro">
        <h1 class="title title-intro">Who are CLEANERS?</h1>
        <p class="desc desc-intro">
          그린 플루 사태 이후, 우리는 너무도 많은 이들을 떠나보냈습니다.
        </p>
        <br />
        <p class="desc desc-intro">
          이제 Joe Ferro 와 CLEANERS가 희망의 불꽃을 밝힙니다.
        </p>
      </div>
    </div>
  </section>
  <!--                                main-intro                                           -->

  <section class="main-work" data-aos="fade-up" data-aos-delay="150">
    <div class="container">
      <div class="descript descript_work">
        <div class="col-lg-12">
          <div class="title-between">
            <h2 class="title title-work">Our Products</h2>
            <p class="desc desc-work">
              선박과 항만을 <strong>유기적인 관계</strong>로 기획하고
              <strong>제품을 구현</strong>합니다.
            </p>
          </div>
        </div>
      </div>
      <div class="row visual visual_work">
        <div class="col-lg-4">
          <a class="work-thumnail" href="">
            <h2>CLEANS</h2>
            <h4>환경 정화</h4>

            <div class="more">
              <img src="../img/ic-plus-light.svg" alt="" class="img-work" />
            </div>
            <div class="image">
              <p></p>
              <img src="../images/cleaner-hd.jpg" alt="" class="img-work" />
            </div>
          </a>
        </div>
        <div class="col-lg-4">
          <a class="work-thumnail" href="">
            <h2>POLICING</h2>
            <h4>치안 유지</h4>

            <div class="more">
              <img src="../img/ic-plus-light.svg" alt="" />
            </div>
            <div class="image">
              <p></p>
              <img src="../images/cleaners-work-5.jpg" alt="" />
            </div>
          </a>
        </div>
        <div class="col-lg-4">
          <a class="work-thumnail" href="">
            <h2>DISPATCH</h2>
            <h4>출장 방화</h4>

            <div class="more">
              <img src="../img/ic-plus-light.svg" alt="" />
            </div>
            <div class="image">
              <p></p>
              <img src="../images/dispatch-01-wh40k.jpg" alt="" />
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
  <!--                                main-work                                           -->

  <section class="main-contact">
    <div class="container">
      <div class="contact-visual"></div>
    </div>
  </section>
  <!--                                main-contact                                        -->

  <section class="main-join">
    <div class="container">
      <div class="join-contents">
        <h1 class="title title-join">우리는 CLEANERS입니다</h1>
        <span class="desc desc-join">CLEANERS의 활동에 대해 더 알고싶으신가요?</span>
        <button class="btn btn-more btn-join">더 알아보기</button>
      </div>
      <div class="join-video">
        <video
          src="../video/cleaners-key-visual-mp4.mp4"
          class="join-visual"
          autoplay
          loop
          muted
          playsinline
        ></video>
      </div>
    </div>
  </section>
  <!--                                main-join                                           -->

  <section class="main-news">
    <div class="container">
      <h1 class="title-news">NEWS</h1>
      <span class="desc-news">CLEANSE의 새로운 소식들을 받아보십시오!</span>
      <div class="swiper newsSwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide news-slide">
            Slide 1
            <a class="news__article">
              <div class="thumnail thumnail-news">
                <span class="channel"> Smart maritime network </span>
                <img src="../images/cleaners-work-2.png" alt="" />
              </div>
              <div class="descript descript-news">
                <h5 class="lg">
                  Singapore’s Smart Port Challenge announces 2022 start-up
                  winners
                </h5>
                <p class="date">2022-11-18</p>
              </div>
            </a>
          </div>
          <div class="swiper-slide news-slide">
            Slide 2
            <a class="news__article">
              <div class="thumnail thumnail-news">
                <span class="channel"> Smart maritime network </span>
                <img src="../images/assault-cleaner.jpg" alt="" />
              </div>
              <div class="descript descript-news">
                <h5 class="lg">
                  Singapore’s Smart Port Challenge announces 2022 start-up
                  winners
                </h5>
                <p class="date">2022-11-18</p>
              </div>
            </a>
          </div>
          <div class="swiper-slide news-slide">
            Slide 3
            <a class="news__article">
              <div class="thumnail thumnail-news">
                <span class="channel"> Smart maritime network </span>
                <img src="../images/cleaners-fight-3.jpg" alt="" />
              </div>
              <div class="descript descript-news">
                <h5 class="lg">
                  Singapore’s Smart Port Challenge announces 2022 start-up
                  winners
                </h5>
                <p class="date">2022-11-18</p>
              </div>
            </a>
          </div>
          <div class="swiper-slide news-slide">Slide 4</div>
          <div class="swiper-slide news-slide">Slide 5</div>
        </div>
        <div class="swiper-pagination pagination-news"></div>
      </div>
    </div>
  </section>
  <!--                                main-news                                           -->
</main>

<script src="../js/swiper-bundle.min.js"></script>
<script>
  const swiperVisual = new Swiper(".visualSwiper", {
    loop: true,
    pagination: {
      el: ".pagination-visual",
      type: "fraction",
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
</script>
<script>
  var swiperNews = new Swiper(".newsSwiper", {
    slidesPerView: 3,
    spaceBetween: 30,
    freeMode: true,
    pagination: {
      el: ".pagination-news",
      clickable: true,
    },
  });
</script>
<%@include file="../include/footer.jsp"%>

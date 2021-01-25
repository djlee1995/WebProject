<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.spring.imfind.imf.PoliceVO" %>
<%@ page import = "com.spring.imfind.el.YH.LoginDTO" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE HTML>
<html>
    <!-- Header Section Begin -->
      <jsp:include page="${request.contextPath}/NewHeader_CSS"></jsp:include>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/home/css/css_YH.css?after" type="text/css">
    <!-- Header End -->
    
    <!-- swiper 플러그인 -->
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
   
   <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
   <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   
   <style>
      .box{
         /* border : 1px solid black; */
         width: 50vw;
         position: absolute;
         left: 50%;
         padding-top : 50px;
      }
       .flexslider.js-fullheight{
         width : 50vw;
      }
      .slides{
         width : 200%;
      } 
      @media screen and (max-width: 992px){
        .box{
          width: 100vw;
          left : 0;
        }
      }
      .li-group {
         padding-left : 50px;

      }
      .li-group > ul{
         list-style : none;
      }
      .li-group > ul > li{
          min-height: 40px !important;
          border: none;
          font-family: 'Noto Sans KR', sans-serif;
          margin: 48px 33px 0 0;
          padding: 0 0 0 0;
          border: 0;
          float: left;
          font-size: 2.3rem;
      }
      .li-group > ul > li:hover{
         transform : scale(1.2);
         tarnsition : transform 1s;
      }
      
      .li-group > ul > li > a{
         color : black;
         font-family: 'Noto Sans KR', sans-serif;
      }
      .flex-active-slide > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > ul:nth-child(1) > li{
         background : white;
      }
      @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

      .notosanskr * { 
         font-family: 'Noto Sans KR', sans-serif;
      }

      nav{
         position: fixed;
         top: 0;
         width: 100vw;
         left: 0;
         z-index: 100;
         padding-right : 35px;
      }
      aside{
         padding-top : 6.76%;
      }
      .fh5co-nav #fh5co-logo{
         font-size : 31px;
      }
      #fh5co-services{
          margin-top: 195px !important;
      }
      .overlay {
         position: absolute;
         bottom: 28px;
         left: 14px;
         right: 0;
         background-color: rgba(0, 0, 0, 0.2);
         overflow: hidden;
         width: 90%;
         height: 95.03%;
         padding: 0;
      }
      .services:hover .overlay {
           height: 100%;
      }
       div.col-lg-3:hover .overlay {
           height: 100%;
           z-index : 1000;
      } 
      div.col-lg-3 {
           height: 100%;
         padding: 0 7px 0 7px;
      } 
      #fh5co-blog > div > div.row{
         margin : 0 auto;
      }
      .title{
         font-family: 'Noto Sans KR', sans-serif;
         font-size: 74px;   
      }
      .fh5co-nav ul li a {
         font-family: 'Noto Sans KR', sans-serif;
         font-weigth : bold;
          font-size: 15px;
          padding: 29px 15px;
          color: rgba(0, 0, 0, 0.7);
          -webkit-transition: 0.5s;
          -o-transition: 0.5s;
          transition: 0.5s;
      }
      .fh5co-blog .blog-text{
         padding : 16px !important;
         margin-top:1px; 
         max-height:146px; 
         overflow:hidden; 
         vertical-align:top;
         text-overflow: ellipsis; 
         word-break:break-word; 
/*          white-space:nowrap; */
      }
      .blog-text, 
      #fh5co-blog > div > div > div > div > div > h3,
      h2,
      p {
         font-family : 'Noto Sans KR', sans-serif !important;
      }
      @media(min-width : 1200px){
         .col-lg-3 {
             width: 20%;
             max-height: 493px;
         }
      }
      section{
          position: relative;
          top: 226px;
      }
      footer{
         position : relative;
         top : 300px;
      }
      .fh5co-blog .img-responsive,
      .police-photo{
         object-fit: contain;
         overflow: hidden;
         height : 182px !important;
      }
      .text.map{
         display : flex;
         justify-content : flex;
         align-items : flex;
      }

      div.container-fluid:nth-child(1) > div:nth-child(1){
         display: flex;
         justify-content: center;
         align-items: center;
         margin-bottom: 8px;
         position: relative;
         top: -15px;
      }
      .fh5co-nav{
         padding-right : 18px !important;
         background : white;
      }
      
      .swiper-container{
         width : 100%;
         height : 340px;
      }
      .swiper-container.row{
         width : 100%;
         height : 320px;
      }
      .arrow-container{
         display : flex;
         justify-content : center;
         align-items : center;
         position : relative;
         top: -175px;
      }
      .arrow-next,
      .arrow-prev,
      .arrow-next2,
      .arrow-prev2{
         margin : 0 595px;
         color : rgba(0, 0, 0, 0.3);
         cursor: pointer;
      }
      .swipe-slide{
           box-shadow: 0 2px 4px 0 hsla(0,0%,80.8%,.5);
      }
      .hidden-panel{
         opacity : 100%;
      }
      .hidden-panel:hover{
         opacity : 0%;
         background: black;
         width:100%;
         height:100%;
      }
   .container-poeplelost,
   .container-animal{
      border: 1px solid black;
   }
      
   /* 인덱스 css 다시하기 */
   .container-police,
   .container-poeplelost,
   .container-animal{
      width: 75vw;
      margin: 0 auto;
   }
   @media(min-width: 1900px){
      .container-police,
      .container-poeplelost,
      .container-animal{
         width: 62vw;
         margin: 0 auto;
      }
   }
   #fh5co-blog{
      padding-top:0;
      padding-bottom:16px;
   }
   /* 경찰청 분실물 row */
   .container-police > div:nth-child(1) > div:nth-child(1){
      margin : 0 auto;
      width : 100%;
      padding : 0;
   }
   .col-md-8.col-md-offset-2.text-center.fh5co-heading{
      margin-bottom : 16px;
   }
   .cover{
        opacity: 0;  /* for demo purpose  */
   }
    .stack-top{
        z-index: 9;
        background : rgba(36, 49, 70, 0.76);
          width: 100%;
        height: 99%;            
        position: absolute;
        margin:0;
        padding:0;
        top: 4px;
        left: 0;
    }
    .cover:hover{
         opacity : 0.6;
    }
    h3.lost-title > a{
       font-family: 'Noto Sans KR', sans-serif;
       font-size:1.5rem;
    }
/*     .banner{
       width: 100% ;
       margin:0;
       padding:0;
    }
    .slider-text{
       heigth:40px;
       min-height: 20vh;
    } */
   </style>
   
<script>
var code;
var x;
var y;
function doPopupopen() { 
       openWin = window.open("./police?x="+x+"&y="+y+"&code="+code+"", "");
   }

function getXY (getUserLocation){
   
   if('geolocation' in navigator) {
        /* 위치정보 사용 가능 */
        var options = {
           enableHighAccuracy: true,
        };
        navigator.geolocation.getCurrentPosition((position, options) => {
           var coords =  {'y' : position.coords.latitude, 'x' : position.coords.longitude };
           getUserLocation(coords); // 현재위치 주소 얻기
        });
        
   } else {
        /* 위치정보 사용 불가능 */
   }
}
function getListNearMe(item){
   $.ajax({
      url : './getNearXY',
      data : {'x' : item.x, 'y' : item.y},
      async : false,
      success : function(data){
         
         //console.log(data);
         const parentNode = document.querySelector(".swiper-wrapper.first");
            data.police.forEach(function(item){
             console.log(item);
            const colNode = document.createElement('div');
            colNode.className = 'swiper-slide';
            code=item.code;
            x=item.x;
            y=item.y;
            colNode.innerHTML = '<div class="cover stack-top"><button onclick="doPopupopen();">클릭</button></div><div class="fh5co-blog">'
                                +'<img class="img-responsive" src="'+ item.photo + '" alt="">'
                                +'<div class="blog-text">'
                                    +'<span class="posted_on">' + item.lost_date + '</span>'
                                    +'<span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>'         
                                    +'<h3 class="lost-title"><a href="#">' + item.item +'</a></h3>'
                                    +'<p>'+ item.depplace +'</p>'
                                          +'<p style="margin-bottom : 0;">' + item.info + '</p>'
                                 +'</div></div>';

            parentNode.appendChild(colNode);  
            
         });   
            
         
            data.item.forEach(function(item){
               const parentNode = document.querySelector(".swiper-wrapper.lost");
               
               console.log(item)
               const colNode = document.createElement('div');
               colNode.className = 'swiper-slide';
               colNode.innerHTML = '<div class="fh5co-blog">'
                                +'<a href="#">'+ item.lost_Up_File + '</a>'
                                +'<div class="blog-text">'
                                    +'<span class="posted_on">' + item.Lost_Date + '</span>'
                                    +'<span class="comment"><a href="">' + item.commentTotalCnt +'<i class="icon-speech-bubble"></i></a></span>'         
                                    +'<h3><a href="./iteminfo?lost_PostNum='+ item.lost_PostNum +'">' + item.lost_Title + '</a></h3>'
                                    +'<p>'+ item.lost_Loc +'</p>'
                                          +'<p style="margin-bottom : 0;">' + item.lost_Content + '</p>'
                                 +'</div>';
            parentNode.appendChild(colNode);
            });
      },
      error : function(data){
         alert('실패')
      }            
   });
}

function getUserLocation(coords){

    //ajax 시작
   $.ajax({
      url : 'https://dapi.kakao.com/v2/local/geo/coord2regioncode.json',
      headers : { 'Authorization' : 'KakaoAK d5e7c97eeecbba70fa5f4e5f4bc57517' },
      type: 'GET',
      //async : false,
      data : { 'x' : coords.x, 'y' : coords.y },
      success : function(data){
         //호출 성공하면 작성할 내용
            if(data.documents.length != 0 ){ // 값이 있으면

            var result = data.documents[0]
            
            var item =  {'city' : result.region_1depth_name,
                       'gu' : result.region_2depth_name,
                       'x' : result.x,
                       'y' : result.y}
        
               document.querySelector('.fh5co-heading h2').innerHTML =  '<i class="fas fa-street-view"></i> '+ item.city + ' ' + item.gu + ' 습득물'
               return item;
         }
      }, 
      error:function(request,status,error){
          alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      }
   }).done(function(data){
       getListNearMe(coords);
   });   
}
document.addEventListener('DOMContentLoaded', function(){
    
    // swiper 초기화 시키기
    var mySwiper1 = new Swiper('.swiper-container.police',{
       
      slidesPerView: 5,
      direction : 'horizontal',
      loop : true,
      spaceBetween: 10,
      observer: true,
      autoplay : {
         delay : 2500,
      },
      pagination : {
         el: '.swiper-pagination.first',
         type: 'progressbar',
      },
    
      navigation : {
         nextEl: '.arrow-next',
         prevEl: '.arrow-prev',
      },
    });
    
    // swiper 초기화 시키기
    var mySwiper2 = new Swiper('.swiper-container.lost',{
       
      slidesPerView: 5,
      direction : 'horizontal',
      loop : true,
      spaceBetween: 10,
      observer: true,
      autoplay : {
         delay : 2500,
      },
      pagination : {
         el: '.swiper-pagination.second',
          type: 'progressbar',
      },
    
      navigation : {
         nextEl: '.arrow-next2',
         prevEl: '.arrow-prev2',
      },
    });
    
     // swiper 초기화 시키기
    var mySwiper = new Swiper('.swiper-container',{
       
      slidesPerView: 5,
      direction : 'horizontal',
      loop : true,
      spaceBetween: 10,
      observer: true,
      
      pagination : {
         el: '.swiper-pagination',
          type: 'progressbar',
      },
    
      navigation : {
         nextEl: '.arrow-next',
         prevEl: '.arrow-prev',
      },
    }); 

    var result = getXY(getUserLocation);
    
});

</script>
</head>
   
   <body>
    <%   LoginDTO dto = (LoginDTO)request.getAttribute("memberInfo"); %>
   
    <%
       if(session.getAttribute("loginUser") == null && session.getAttribute("kakaoLoginUser") == null){
    %>
            <jsp:include page="${request.contextPath}/el/header"></jsp:include>      
    <%
       } else{
    %>
            <jsp:include page="${request.contextPath}/el/afterLoginHeader"></jsp:include>      
   <%
       }
   %>


<root>
   <!-- 메인 광고 표시 -->
   <aside id="fh5co-hero" class="js-fullheight">
      <div class="flexslider js-fullheight">
         <ul class="slides">
               <li>
                  <div class="overlay-gradient"></div>
                  <div class="container-fluid">
                     <div class="row">
                        <div class="banner col-md-offset-3 col-md-pull-3 js-fullheight slider-text slider-text-bg">
                           <div class="slider-text-inner">
                              <h1>공공기관이 습득한 분실물<br> 찾기 </h1>
                           <h2>경찰청 + 대중교통 + 택시 + 지하철 + 기타 <a href="http://freehtml5.co/" target="_blank"></a></h2>
                           <p class="ct"><a href="index.if">이동하기 <i class="icon-arrow-right"></i></a></p>
                           </div>
                        </div> 
                         <div class="box">
                            <div id="fh5co-mission" style="padding-top: .2rem;">
                           <div class="container">
                              <div class="row">
                                 <div class="col-md-6 col-md-offset-3 text-center animate-box" style="margin-left : 7%;">
                                    <h2 style="   font-family: 'Noto Sans KR', sans-serif;">분실물 통합 조회 ${memberInfo.id}</h2>
                                    <blockquote>
                                       <p style="font-family: 'Noto Sans KR', sans-serif;">지역별 관할 지구대, 대중교통 및 공공 기관에서 습득한 분실물을 지도 기반으로 통합 조회가 가능합니다.</p>
                                    </blockquote>
                                 </div>
                                 <div class="col-md-6 col-md-offset-3 text-center animate-box" style="margin-left : 7%;">
                                    <h2 style="   font-family: 'Noto Sans KR', sans-serif;">분실물 등록 서비스</h2>
                                    <blockquote>
                                       <p style="font-family: 'Noto Sans KR', sans-serif;">분실자가 등록한 분실물 게시글을 위치 기반 서비스로 가까이에 위치한 사용자에게 알려드립니다.</p>
                                    </blockquote>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="li-group">
                              <ul>
                                 <li class=""><a href="./itemboard"><span>분실물 등록</span></a></li> 
                                 <li class=""><a href="./petboard"><span>분실 동물 등록</span></a></li> 
                                 <li class=""><a href="./item"><span>분실물 조회</span></a></li> 
                                 <li class=""><a href="./pet"><span>분실 동물 조회</span></a></li> 
                              </ul>
                        </div>
                     
                         </div>        
                     </div>
                  </div>
               </li>
         <li style="background-image: url(images/img_bg_2.jpg);">
               <div class="overlay-gradient"></div>
               <div class="container-fluid">
                  <div class="row">
                     <div class="banner col-md-offset-3 col-md-pull-3 js-fullheight slider-text slider-text-bg">
                        <div class="slider-text-inner">
                           <h1>찾으시는 물건이 없나요?</h1>
                           <h2>ImFind가 분실물 실시간 알람과 위치 기반<a href="http://freehtml5.co/" target="_blank"></a></h2>
                           <p class="ct"><a href="/imfind/index">이동하기 <i class="icon-arrow-right"></i></a></p>
                        </div>
                     </div>
                         <div class="box" >
                            <div id="fh5co-mission" style="padding-top: .2rem;">
                           <div class="container">
                              <div class="row">
                                 <div class="col-md-6 col-md-offset-3 text-center animate-box" style="margin-left : 7%;">
                                    <h2 style="   font-family: 'Noto Sans KR', sans-serif;">분실물 통합 조회</h2>
                                    <blockquote>
                                       <p style="font-family: 'Noto Sans KR', sans-serif;">지역별 관할 지구대, 대중교통 및 공공 기관에서 습득한 분실물을 지도 기반으로 통합 조회가 가능합니다.</p>
                                    </blockquote>
                                 </div>
                                 <div class="col-md-6 col-md-offset-3 text-center animate-box" style="margin-left : 7%;">
                                    <h2 style="   font-family: 'Noto Sans KR', sans-serif;">분실물 등록 서비스</h2>
                                    <blockquote>
                                       <p style="font-family: 'Noto Sans KR', sans-serif;">분실자가 등록한 분실물 게시글을 위치 기반 서비스로 가까이에 위치한 사용자에게 알려드립니다.</p>
                                    </blockquote>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="li-group">
                              <ul>
                                 <li class=""><a href="./itemboard"><span>분실물 등록</span></a></li> 
                                 <li class=""><a href="./petboard"><span>분실 동물 등록</span></a></li> 
                                 <li class=""><a href="./item"><span>분실물 조회</span></a></li> 
                                 <li class=""><a href="./pet"><span>분실 동물 조회</span></a></li> 
                              </ul>
                        </div>
                     </div>              
                  </div>
               </div>
            </li>
           </ul>
        </div>
   </aside>
   <!-- 메인 광고 표시 끝  -->
   
   <!-- 공공데이터 구역  -->
   <section>
      <div class="container-police">
         <div id="fh5co-blog">
            <div class="container">
               <div class="row animate-box">
                  <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                     <h2>Recent Post</h2>
                     <p>사용자의 현재 위치 근처에 있는 분실물과 습득물입니다.</p>
                  </div>
               </div>
               <div class="swiper-container police">
                  <div class="swiper-wrapper first">
                     
                  </div>
                  <div class="swiper-pagination first"></div>
               </div>
            </div>
            <div class="arrow-container">
               <div class="arrow-prev"><i class="fas fa-chevron-left fa-3x"></i></div>
               <div class="arrow-next"><i class="fas fa-chevron-right fa-3x"></i></div>
            </div>
         </div>
      </div>
   </section>
   <!-- 공공데이터 구역 끝  -->
   
   <!-- 분실물 구역 시작 -->
   <section>
      <div class="container-poeplelost">
         <div id="fh5co-blog" class="section lostpost">
            <div class="container">
               <div class="row animate-box">
                  <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                     <h2>분실물 찾아주세요 <svg xmlns="http://www.w3.org/2000/svg" viewBox="4 -10 24 24" width="64" height="48"><path fill-rule="evenodd" 
                     d="M3.267 1.457c.3.286.312.76.026 1.06A6.475 6.475 0 001.5 7a6.472 6.472 0 001.793 4.483.75.75 0 01-1.086 1.034 8.89 8.89 0 01-.276-.304l.569-.49-.569.49A7.971 7.971 0 010 7c0-2.139.84-4.083 2.207-5.517a.75.75 0 011.06-.026zm9.466 0a.75.75 0 011.06.026A7.975 7.975 0 0116 7c0 2.139-.84 4.083-2.207 5.517a.75.75 0 11-1.086-1.034A6.475 6.475 0 0014.5 7a6.475 6.475 0 00-1.793-4.483.75.75 0 01.026-1.06zM8.75 8.582a1.75 1.75 0 10-1.5 0v5.668a.75.75 0 001.5 0V8.582zM5.331 4.736a.75.75 0 10-1.143-.972A4.983 4.983 0 003 7c0 1.227.443 2.352 1.177 3.222a.75.75 0 001.146-.967A3.483 3.483 0 014.5 7c0-.864.312-1.654.831-2.264zm6.492-.958a.75.75 0 00-1.146.967c.514.61.823 1.395.823 2.255 0 .86-.31 1.646-.823 2.255a.75.75 0 101.146.967A4.983 4.983 0 0013 7a4.983 4.983 0 00-1.177-3.222z"></path></svg></h2>
                     <p>최근 분실 신고된 분실물입니다.</p>
                  </div>
               </div>
               <a href="#" class="btn btn-primary">분실물 찾아주세요</a>
               <div class="swiper-container lost">
                  <div class="swiper-wrapper lost">
                     
                  </div>
                  <div class="swiper-pagination second"></div>
               </div>
            </div>
            <div class="arrow-container">
               <div class="arrow-prev2"><i class="fas fa-chevron-left fa-3x"></i></div>
               <div class="arrow-next2"><i class="fas fa-chevron-right fa-3x"></i></div>
            </div>
         </div>
      </div>
   </section>
<!-- 분실물 구역 끝 -->

<!-- 동물 분실 시작 -->
    <section>
       <div class="container-animal">
         <div id="fh5co-blog" class="section lostpost">
            <div class="container">
               <div class="row animate-box">
                  <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                     <h2>반려동물을 찾아주세요</h2>
                     <p>사용자의 현재 위치에서 분실신고된 반려동물입니다.</p>
                  </div>
               </div>
               <a href="#" class="btn btn-primary">분실물 찾아주세요</a>
               <div class="row swiper-container">
                  <div class="swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                        <div class="swiper-slide">
                           
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                        <div class="swiper-slide">
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                        <div class="swiper-slide">
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                           <div class="swiper-slide">
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                           <div class="swiper-slide">
                           <div class="fh5co-blog animate-box">
                              <a href="#"><img class="img-responsive" src="/imfind/resources/home/images/blog-1.jpg" alt=""></a>
                              <div class="blog-text">
                                 <span class="posted_on">Nov. 15th</span>
                                 <span class="comment"><a href="">21<i class="icon-speech-bubble"></i></a></span>
                                 <h3><a href="#">구찌</a></h3>
                                 <p>명동</p>
                                 <p style="margin-bottom : 0;">답십리지구대에서는 [2020.12.20]  [주민등록증(화이트(흰)색)]을 습득/보관 하였습니다.</p>
                                 <!-- <a href="#" class="btn btn-primary">Read More</a> -->
                              </div>
                           </div>
                        </div> 
                     </div>
                  <div class="swiper-pagination"></div>
               </div>
            </div>
            <div class="arrow-container">
               <div class="arrow-prev"><i class="fas fa-chevron-left fa-3x"></i></div>
               <div class="arrow-next"><i class="fas fa-chevron-right fa-3x"></i></div>
            </div>
         </div>
       </div>
    </section>
 <!-- 동물 분실 끝 -->
</root>
<!-- footer 시작 -->
 <footer id="fh5co-footer" role="contentinfo" style="padding-top: 24px;padding-bottom: 16px;">
      <div class="container" style="padding-bottom: 0px;">
         <div class="row row-pb-md" style="margin-top: 50px;">
            <div class="col-md-4 fh5co-widget">
               <h4>차자조</h4>
               <p>김민정</p>
               <p>김연수</p>
               <p>이동준</p>
               <p>이유희</p>
               <p>홍은지</p>
            </div>
            <div class="col-md-4 col-md-push-1">
               <h4>Links</h4>
               <ul class="fh5co-footer-links">
                  <li><a href="#">if</a></li>
                  <li><a href="#">else</a></li>
                  <li><a href="#">Won Cases</a></li>
                  <li><a href="#">Blog</a></li>
                  <li><a href="#">About us</a></li>
               </ul>
            </div>

            <div class="col-md-4 col-md-push-1">
               <h4>Contact Information</h4>
               <ul class="fh5co-footer-links">
                  <li>198 West 21th Street, <br> Suite 721 New York NY 10016</li>
                  <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                  <li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                  <li><a href="http://gettemplates.co">gettemplates.co</a></li>
               </ul>
            </div>
         </div>

         <div class="row copyright">
            <div class="col-md-12 text-center">
               <p>
                  <small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> 
                  <small class="block">Designed by <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
               </p>
               <p>
                  <ul class="fh5co-social-icons">
                     <li><a href="#"><i class="icon-twitter"></i></a></li>
                     <li><a href="#"><i class="icon-facebook"></i></a></li>
                     <li><a href="#"><i class="icon-linkedin"></i></a></li>
                     <li><a href="#"><i class="icon-dribbble"></i></a></li>
                  </ul>
               </p>
            </div>
         </div>

      </div>
   </footer>
<!-- footer 끝 -->

   <div class="gototop js-top">
      <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
   </div>
   
   
    <!-- Header Section Begin -->
      <jsp:include page="${request.contextPath}/NewFooter_JS"></jsp:include>
    <!-- Header End -->

   </body>
</html>

    
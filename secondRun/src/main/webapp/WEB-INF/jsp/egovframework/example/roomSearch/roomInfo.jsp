<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <style>
    /*푸터*/
.containers {
	width: 50%; 
	margin: 0 auto;
}
.containers .rows  {
  width: 50%;
  height: 250px;
  float: left;
}
 .input-box { border:2px solid #e8e8e8; }
.red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
	color:#fff; padding:12px 15px 13px; border-radius:3px; }
.white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    	
.detail-container{
	position: relative;
	width: 950px;
	margin: 12px auto;
	overflow: hidden;
}
.detail-area{
	float: left;
	width: 630px;
}
.house-detail .fotorama {
	background-color: #424242;
	border: 1px solid #e5e5e5;
}
.clear {
	display: block;
	overflow: hidden;
}
.sidebar {
	padding: 20px;
    
}
.dot {
    width: 10px;
    height: 10px;
    margin: 5px;
    border-radius: 25px;
    background-color: #fff;
}
.dot.active {
    background-color: #1BC8C2;
}
.affix {
    position: fixed;
}
.sidebar-container{
	margin: 0;
    padding-top: 10px;
    list-style: none;
    text-decoration: none;
    color: #000;
}
.sidebar-content{
	border: 1px solid #ccc;
    padding: 0;
    margin-bottom: 10px;
    width: 330px;
    border-radius: 4px;
    overflow: visible;
}
.trade-type{
	float: left;
    display: inline-block;
    width: 30%;
    background: #555;
    padding: 8px;
    text-align: center;
    color: #fff;
    font-size: 15px;
    border-top-left-radius: 3px;
}
.sale-num {
    display: inline-block;
    width: 70%;
    background: #eeeeee;
    padding: 8px;
    font-size: 15px;
    text-align: left;
    color: #444;
}
.detail{
    margin-bottom: 0;
    padding-bottom: 0;
    text-align: center;
    padding: 20px 20px 10px;
}
.sigudong {
    color: #444;
    font-size: 15px;
    font-weight: bold;
    margin-left: 20px;
    margin-bottom: 24px;
}
.buttons {
    width: 100%;
    background-color: #FDFDFD;
       margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    color: #000;
}
	
div.buttons table.action #add-favorite {
   	font-size: 14px;
}
#add-favorite {
    cursor: pointer;
    background-color: #FDFDFD;
}
.house-detail .sidebar table.action td:first-child {
    border-left-width: 0;
}
.house-detail .sidebar table.action td:first-child {
    border-right: 1px solid #ccc;
}
.house-detail .sidebar table.action td {
    text-align: center;
    width: 50%;
    border-top: 1px solid #ccc;
    padding: 12px;
}

.sidebar-content .contact {
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    color: #000;
}
.house-detail .contact-title {
    border-top: 1px solid #ccc;
    padding: 20px;
    background-color: #FDFDFD;
    font-weight: normal;
}

div.contact-title.clear img.profile {
    float: left;
    width: 48px;
    height: 48px;
    border-radius: 50%;
}

div.contact-title.clear div.name {
    margin-left: 60px;
    font-size: 14px;
    color: #444;
    font-weight: bold;
}

div#sidebar-content div.contact-info {
    background-color: #fdfdfd;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
}

div#sidebar-content div.contact-info div.person {
    padding: 0px 20px 20px 20px;
    font-size: 15px;
}


/* .house-detail .sidebar button, .mb button {
    background-color: #1bc8c2;
    width: 100%;
    border: none;
    font-size: 15px;
    color: white;
    padding: 10px;
    margin:0px;
} */


#contract_type.monthly {
    width: 40px;
    border: 2px solid #1BC8C2;
    color: #1BC8C2;
}

#contract_type {
    border-radius: 3px;
    font-size: 17px;
    font-weight: bold;
    height: 30px;
    line-height: 25px;
    text-align: center;
}
	
.house-detail .detail .detail-table {
    font-size: 15px;
    color: #444444;
    margin-top: 20px;
    font-weight: bold;
}

.commonHouse{
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
    color: #000;
    display: block;
}
	
.house-detail .detail .detail-table .column {
    margin-top: 12px;
    margin-bottom: 12px;
    padding-left: 3px;
    padding-right: 0;
}

.house-detail .detail .detail-table .row {
   	padding: 8px;
}
.house-detail .content .detail .row {
    margin-left: 0;
    margin-right: 0;
}
.row.border-top.first {
    border-top: 2px solid #777777;
}
.row.border-top {
    border-top: 1px solid #e5e5e5;
}
.row.border-top.last {
    border-bottom: 2px solid #777777;
}
.text-left{
	text-align:left;
}
.text-right{
	text-align:right;
}
.right-padding-20{
 	text-align:right; 
 	padding-right:30px !important;
} 
.left-padding-20{
	text-align:left; 
	padding-left:20px !important;
}
.house-detail .hl .round-box {
    border-right: 3px;
    border: #e5e5e5 solid 1px;
    padding: 20px;
    font-size: 14px;
    border-radius: 4px;
    text-align: left;
}
</style>


<!-- Main Content -->
<div class="single-property-container" style="padding-top: 150px;">
	<div class="container">
		<div class="row house-detail clear">
			<!-- 좌측 사진 및 내용 -->
			<div class="content col-md-14" id="single-content">
				<div id="fotorama" class="fotorama" data-nav="dots"	data-thumbwidth="90" data-navposition="bottom" data-loop="true" data-allowfullscreen="true" data-keyboard="true"	data-maxheight="415"	style="width: 655px; height: 450px; overflow: hidden; cursor: zoom-in;">
					<div class="slides" style="width: 5360px; height: 450px; position: relative; left: -655px;">
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/EqgmPy6X5zU742t0_origin.jpg"	style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/sJG0kAxwC3H4ENpd_origin.jpg"	style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/7AKets5ec5XxO1hz_origin.jpg" style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/eu5lgo12Jyk0I6WQ_origin.jpg" style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/ql7QvpSSa7QoKvAG_origin.jpg" style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/ckFGSeRznm6R4SqS_origin.jpg" style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180202/1217819/J0rvls0Qwh9Pf4o2_origin.jpg" style="width: 655px; height: 447px; left: 0px; top: 1.5px; position: relative;">
						</div>
						<div class="slide" style="width: 655px; height: 450px; float: left;">
							<img src="http://cdn.peterpanz.com/photo/20180205/1222669/EqgmPy6X5zU742t0_origin.jpg"	style="width: 338px; height: 450px; left: 166px; top: 0px; position: relative;">
						</div>
					</div>
					<!-- width = dot수 * 20  -->
					<div class="indicator" style="bottom: 0px; position: relative; width: 150px; height: 20px; top: -25px; left: 275px;">
						<div class="dot active" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
						<div class="dot" style="float: left;"></div>
					</div>
					<div class="watermark"
						style="width: 655px; height: 450px; position: relative; left: 0px; right: 0px; top: -470px; bottom: 0px; background: url(img/roomInfo/watermark.png) 50% 50%/30% no-repeat;"></div>
					<div class="prev"
						style="width: 100px; height: 450px; left: 0px; top: -920px; bottom: 0px; right: 335px; position: relative; cursor: pointer; color: rgb(255, 255, 255); background-image: url(&quot;img/roomInfo/left.png&quot;); background-repeat: no-repeat; background-position: 15px 50%;"></div>
					<div class="next"
						style="width: 100px; height: 450px; left: 555px; top: -1370px; bottom: 0px; right: 0px; position: relative; cursor: pointer; color: rgb(255, 255, 255); background-image: url(&quot;img/roomInfo/right.png&quot;); background-repeat: no-repeat; background-position: 55px 50%;"></div>
				</div>
				
				<div class="detail" style="padding:0px">
					<div class="detail-table" style="overflow: hidden;" >
						<h3 style="font-size:20px;font-weight: bold;position: relative;text-align:left">
							<span>매물정보</span>
						</h3>
	                    <div class="commonHouse">
	                    	<div class="row border-top first">
						        <div class="col-md-4 column text-left">주소</div>
						        <div class="col-md-8 column right-padding-20">서울 서초구 반포동</div>
						        <div class="col-md-6 column left-padding-20">방 개수</div>
						        <div class="col-md-6 column text-right">1개</div>
						    </div>
						    <div class="row border-top">
						        <div class="col-md-4 column text-left">건물형태</div>
						        <div class="col-md-8 column right-padding-20">빌라/주택</div>
						        <div class="col-md-6 column left-padding-20">욕실개수</div>
						        <div class="col-md-6 column text-right">1개</div>
						    </div>
						    <div class="row border-top last">
						        <div class="col-md-4 column text-left">입주가능일</div>
						        <div class="col-md-8 column right-padding-20">즉시입주</div>
						        <div class="col-md-6 column left-padding-20">준공년월</div>
						        <div class="col-md-6 column text-right"></div>
						    </div>
	                    </div>
	               </div>
				   <h3 style="font-size:20px;font-weight: bold;position: relative;text-align:left; margin-top: 30px; margin-bottom: 10px">
						<span>옵션</span>
					</h3>
                    <img src="img/roomInfo/detail_new.png"/>
                    <img src="img/roomInfo/detail_full_x.png"/>
                    <img src="img/roomInfo/detail_park_x.png"/>
                    <img src="img/roomInfo/detail_ev_x.png"/>
                    <img src="img/roomInfo/detail_animal.png"/>
                    <img src="img/roomInfo/detail_loan_x.png"/>
                    
                    <div class="detail-table" style="overflow: hidden;">
					    <h3 style="font-size:20px;font-weight: bold;position: relative;text-align:left;">
					        <span class="detailTitle">시설정보</span>
					    </h3>
					    <div class="commonHouse">
					        <div class="row border-top first">
					            <div class="col-md-4 column text-left">난방방식</div>
					            <div class="col-md-8 column right-padding-20">개별난방</div>
					            <div class="col-md-6 column left-padding-20">냉방시설</div>
					            <div class="col-md-6 column text-right">벽걸이에어컨</div>
					        </div>
					        <div class="row border-top">
					            <div class="col-md-4 column text-left">생활시설</div>
					            <div class="col-md-8 column right-padding-20">붙박이장,신발장,싱크대</div>
					            <div class="col-md-6 column left-padding-20">보안시설</div>
					            <div class="col-md-6 column text-right">인터폰,현관보안</div>
					        </div>
					        <div class="row border-top last">
					            <div class="col-md-4 column text-left">기타시설</div>
					            <div class="col-md-8 column right-padding-20">베란다</div>
					            <div class="col-md-6 column left-padding-20"></div>
					            <div class="col-md-6 column text-right"></div>
					        </div>
					    </div>
					</div>
					<div class="description hl">
	                    <h3 style="font-size:20px;font-weight: bold;position: relative;text-align:left;">
	                        <span class="detailTitle">상세설명</span>
	                    </h3>
	                    <div class="round-box">
							상세설명란<br>
							피카츄돈가스<br>
							홍대는 너무 멀다<br><br>
							테스트용 텍스트 광야에서 싶이 따뜻한 위하여, 부패뿐이다. 발휘하기 그들에게 귀는 바이며, 대중을 못할 부패뿐이다. 남는 것은 내려온 싶이 인생에 것이다. 곧 때에, 주며, 만천하의 청춘을 인생의 피다. 남는 아니한 시들어 기관과 봄바람이다. 뼈 따뜻한 인생에 싸인 약동하다. 청춘 맺어, 불어 이것이다. 뼈 청춘은 밥을 구할 광야에서 봄바람이다. 온갖 튼튼하며, 무엇이 인생에 것이다. 천지는 위하여 열매를 남는 커다란 이것이야말로 능히 장식하는 봄바람이다. 따뜻한 몸이 그들의 방지하는 소리다.이것은 인간은 얼음과 얼마나 그리하였는가?<br>
	                    </div>
	                </div>
				</div>
			</div>
			<!-- 우측슬라이드 -->
			<div class="col-md-8 sidebar clear web visible-lg">
				<div id="sidebar-content" class="sidebar-container affix" style="top: 138px;">
					<div class="sidebar-content">
					    <div style="background-color: #eee; border-top-left-radius: 4px; border-top-right-radius: 4px;">
					        <div class="trade-type">직거래</div>
					        <div class="sale-num">
					            매물번호 <span id="saleNum">1222669</span>
					        </div>
					    </div>
					    <div class="detail">
						    <div id="sidebar-price-container" style="text-align: center;">
  									<table style="width: 200px;">
      									<tbody><tr>
          									<td  style="width: 30px;">
                                          		<div id="contract_type" class="monthly" >월세</div>
          									</td>
          									<td nowrap="" style="padding-left: 13px; text-align: left; font-size: 33px;" id="price" >
                                              	80/55
                                      		</td>
      									</tr></tbody>
  									</table>
							</div>
					    </div>
					    <div  class="sigudong">서울 서초구 반포동</div>
					    <div class="buttons">
					        <table class="action" style="width: 100%;">
					        <tbody>
						        <tr>
							        <td id="add-favorite" class="off">
								        <a href="#" class="btn-flat">
			                                <span class=""><img id="add-favorite-icon" src="img/roomInfo/like_off_13px.png"></span> <span class="inText">찜</span>
			                            </a>
							        </td>
							        <td class="btn-report">
								        <a href="#">
									        <span class="fa"><img src="img/roomInfo/siren.png"></span> <span class="inText">신고</span>
									    </a>
							        </td>
						        </tr>
					        </tbody>
					        </table>
					    </div>
					    <div class="contact">
				            <div class="contact-title clear">
				    			<img src="img/roomInfo/user.jpg" alt="" class="profile">
				   				<div class="name">메트로킹공인중개사사무소<br> 대표자: 뚤라 </div>    
							</div>
				            <div class="contact-info">
					            <div class="person">
									<div><strong>담당자: 핫산</strong> (대표공인중개사)</div>
									서울 강남구 부자동네
						            <hr>
						            <button id="call_info" class="white-button" style="width: 100%;">
			                        	 연락처 보기
				                    </button>
					            </div>
					            
				        	</div>
				    	</div>
					</div>	
					</div>
				</div>
			</div>
		<!-- 최하단 지도 -->
		<div class="content col-md-14" style="height:400px; padding:0px; padding-right: 10px">
			 <h3 style="font-size:20px;font-weight: bold;position: relative;text-align:left;">
                 <span class="detailTitle">위치 및 주변 시설</span>
             </h3> 
             <div id="roomInfo-map" style="width:100%;height:75%; padding-left: 50px"></div>
		</div>
	</div>
</div>
		

<!-- Scripts -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9b2d4124725769d07819c8362366a157&libraries=services"></script>
<script>
	
$(document).ready(function() {

	//우측슬라이드
	$(window).scroll(function () { //when window is scrolled
	    //alignSidebar();
	  });
	
	//찜 클릭
	$("#add-favorite").click(function(){
		var stat = $(this).attr("class");
	
		if(stat === "off") {
			$(this).attr("class","on");
			$("#add-favorite-icon").attr("src" , "img/roomInfo/like_on_13px.png");
		} else {
			$(this).attr("class","off");
			$("#add-favorite-icon").attr("src" , "img/roomInfo/like_off_13px.png");
		}
	});
	
	
	
	 var container = document.getElementById('roomInfo-map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴 
	
	
	//슬라이드개수
	var x = $(".slide").length;
    x = x - 1;
    
    var nowCnt = 1;

	$(".prev").click(function(){
		if (nowCnt === 1) {
			nowCnt=x;
		} else {
			nowCnt-=1;
		}
		$(".dot").removeClass("active");
		$('.dot').eq(nowCnt-1).addClass('active');
		$(".slides").attr("style","width: 8710px; height: 450px; position: relative; left: -" +nowCnt*655  + "px;")
		
	});
	$(".next").click(function(){
		if (nowCnt === x) {
			nowCnt=1;
		} else {
			nowCnt+=1;
		}
		$(".dot").removeClass("active");
		$('.dot').eq(nowCnt-1).addClass('active');
		$(".slides").attr("style","width: 8710px; height: 450px; position: relative; left: -" +nowCnt*655  + "px;")
	});
});
function alignSidebar() {
	  var singleContent = $('#single-content');
	  var sidebar = $('#sidebar-content');
	  var eTop = singleContent.offset().top; //get the offset top of the element
		
	  /* console.log("eTop : " + eTop);
	  console.log("$(window).scrollTop() : " + $(window).scrollTop());
	  console.log("singleContent.height() : " + singleContent.height());
	  console.log("============================");
	  console.log("sum : " + (eTop - $(window).scrollTop() +singleContent.height() ) );
	  console.log("sidebar.height() : " + sidebar.height());
	  console.log("right sum  : " + (sidebar.height()+90));
	  console.log(""); */
	  
	  //console.log("$(window).scrollTop() : " + $(window).scrollTop());
	  console.log("singleContent.height() : " + singleContent.height());
	  
	  console.log("top: " + singleContent.position().top);
	  console.log("bottom: " + sidebar.position().bottom);
	  
	  
	  if ($(window).scrollTop() + 70 >singleContent.height()) {
		  //sidebar.css("bottom", singleContent.height());
	  }
	  else {
	    //sidebar.css("top", "138px");
	  }
	}
</script>

</body>
</html>
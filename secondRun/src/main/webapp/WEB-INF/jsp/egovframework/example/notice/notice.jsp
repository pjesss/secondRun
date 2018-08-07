<%@ page language="java" contentType="text/html; charset=UTF-8" %>
    <style>
    
    .input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    	
    .containers {
	    width: 50%;
	    margin: 0 auto;
	}
	.containers .rows  {
      width: 50%;
      height: 250px;
      float: left;
    }
    .pagination {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		padding-left: 0;
		list-style: none;
		border-radius: 0.4rem;
		margin-left: auto;
		margin-right: auto;
		width: 300px;
	}
	
	td {
		vertical-align: middle !important;
	}
	
	tr {
		height: 65px;
		font-weight: bold;
	}
	
	.title {
		
	}
	
	.author {
	    text-align: center !important;
	    width: 20% !important;
	}
	
	.writeDate {
		width: 20% !important;
	}
	
	
	/*우측 리스트 하단 페이지수*/
	.List.map-page .ListPagination {
		width: 100%
	}

	.ListPagination {
		width:100%;
		position: absolute;
		bottom:0px;
		height: 44px;
		padding-top: 8.5px;
		padding-bottom: 8.5px;
		border-top: 1px solid #d1d1d1;
		background-color: white;
		text-align: center
	}
	
	.Pagination {
		font-size: 12px;
		font-weight: bold
	}
	
	.Pagination>li {
		display: inline-block
	}
	
	.Pagination>li+li {
		margin-left: 6px
	}
	
	.Pagination-item {
		display: block;
		width: 24px;
		height: 24px;
		line-height: 20px;
		text-align: center;
		text-decoration: none;
		color: #585858;
		cursor: pointer
	}
	
	.Pagination-item:hover {
		border-radius: 50%;
		background-color: #d1d1d1;
		line-height: 22px;
		color: #585858
	}
	
	.Pagination-item.active {
		padding: 2px;
		border-radius: 50%;
		background-color: #58b5d3 !important;
		line-height: 20px;
		color: #fff;
		cursor: default
	}
	
	.Pagination-item--prev, .Pagination-item--next {
		width: auto
	}
	
	.Pagination-item--prev:hover, .Pagination-item--next:hover {
		background-color: transparent;
		color: #3b8de0
	}
	
	.Pagination-item--prev.disable, .Pagination-item--next.disable {
		cursor: default
	}
	
	.ListZero {
	    position: absolute;
	    top: 0;
	    right: 0;
	    bottom: 0;
	    left: 0;
	    background-position: 50%;
	    background-repeat: no-repeat;
	    display: none
	}
	.ListZero.show {
	    background-size: 174.5px 213px;
	    background-image: url("img//roomInfo/listzero.png");
	    display:inline
	}
	
    </style>

		<!-- Main Content -->
		<div class="content-wrapper">
			<div class="container">
				<div class="section-header">
					<h1>공지사항</h1>
					<p>내방의 공지사항을 확인해 보세요.</p>
				</div>
				<div style="padding-bottom: 50px;">
					<div class="pull-left">
			            <form role="search" method="post">
			                <!-- 카테고리 선택창 -->
			                <select class="input-sm" id="selectCategory" name="selectCategory">
			                    <option value="all">전체</option>
			                    <option value="lease">전세</option>
			                    <option value="lent">월세</option>
			                    <option value="trade">매매</option>
			                    <option value="question">질문</option>
			                </select>
			                <!-- 검색어 입력창 -->
			                <input class="input-sm input-box" type="text" id="inputSearch" name="inputSearch">
			                <!-- 검색 버튼 -->
			                <button class="white-button" type="submit">
			                    <i class="fa fa-search"></i> 검색</button>
			                <!-- 결과 내 검색창 -->
			                <input class="input-sm input-box" type="text" id="inputFilter" placeholder="결과 내 재검색">
			            </form>
			        </div>
					<div class="pull-right" style="padding-right: 130px;">
		            	<a href="boardWrite.do"><button class="white-button">글쓰기</button></a>
			        </div>
		        </div>
				<table class="table table-hover">
					<tbody>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">직거래 매물 네이버 전송 비용 변경 안내</a></td>
							<td class="author">관리자</td><td class="writeDate">2018-02-14</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">2월 매물 검증 센터 휴무(설명절) 안내</a></td>
							<td class="author">관리자</td><td class="writeDate">2018-02-13</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">내방 구하기 서비스 이관에 따른 매물관리정책 변경 안내</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-11-03</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">Z회원 ZERO부동산을 만나다 2차(~11/30)</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-09-22</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">내방 웹 매물 등록안내</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-08-02</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">내방 ZERO부동산 제휴모집</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-08-01</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;"> Z회원이 ZERO부동산을 만나다 - 수수료 없는 부동산</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-07-28</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">내방 제휴 업체 모집</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-07-11</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">허위매물과 직거래피해 근절 위한 문자(SMS) 매물인증안내</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-07-06</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">2017 내방 직거래 피해근절 캠페인</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-06-12</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">골치 아픈 임대차분쟁, 신속하게 조정으로 해결!</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-06-05</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">내방에 매물 등록시 네이버부동산에도 동시노출</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-04-25</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">[안심직거래 서비스 런칭]-공인중개사없이도 안전하게 직거래 할 수 있다.</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-03-23</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">두꺼비세상, 내방 구하기 서비스 이관에 따른 이용약관 변경 안내</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-03-10</td>
						</tr>
						<tr>
							<td class="title"><a href="/secondRun/viewDetailPage.do" style="color: black;">★ 서울시와 함께하는 청년주거 디딤돌 ★ 청년 임차보증금 융자 지원사업 신청자를 모집합니다!</a></td>
							<td class="author">관리자</td>
							<td class="writeDate">2017-02-02</td>
						</tr>
					</tbody>
				</table> 
			</div>
			<div style="width: 100%; height: 50px;">
				<div class="ListPagination pagination-wrap">
		    		<ul class="Pagination">
			    		<li><a class="Pagination-item Pagination-item--prev disable">&lt; PREV</a></li>
			    		<li><a class="Pagination-item active">1</a></li>
			    		<li><a class="Pagination-item ">2</a></li>
			    		<li><a class="Pagination-item ">3</a></li>
			    		<li><a class="Pagination-item ">4</a></li>
			    		<li><a class="Pagination-item Pagination-item--next">NEXT &gt;</a></li>
		    		</ul>
		   		</div>
			</div>
		</div>
		
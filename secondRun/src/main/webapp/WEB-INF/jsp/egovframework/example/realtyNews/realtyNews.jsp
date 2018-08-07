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
		<div class="content-wrapper" style="padding-top: 150px;">
			<div class="container">
				<div class="section-header">
					<h1>부동산 뉴스</h1>
					<p>내방의 부동산 뉴스입니다.</p>
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
				<div class="col-md-12" style="width: 100%;">
					<div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/52_2018117174145_3.jpg"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/52_2018111161443_4.png"></a></div>
					</div>
					<div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/duse_event_1.png"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
					</div>
					<div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
						<div class="thumbnail" style="float: left; width:30%;"><a href="/secondRun/viewDetailPage.do"><img src="http://www.peterpanz.com/images/event/5_20171025113647_1.png"></a></div>
					</div>
				</div>
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

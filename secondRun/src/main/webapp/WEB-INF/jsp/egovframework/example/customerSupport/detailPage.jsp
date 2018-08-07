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
	
	.detailTitle {
		font-size: 20px;
		font-weight: bold;
		padding-top: 10px;
	}
	
	.detailDate {
		font-size: 20px;
		font-weight: bold;
		padding-top: 30px;
		padding-left: 10px;
		float: left;
	}
	
	.detailAuthor {
		font-size: 20px;
		font-weight: bold;
		padding-top: 30px;
		float: right;
	}
    </style>

		<!-- Main Content -->
		<div class="content-wrapper" style="padding-top: 150px;">
			<div class="container">
				<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="notice">
					<div class="detailWrap">
						<div class="detailView">
							<div class="detailHeader">
								<div class="detailTitle">★ 서울시와 함께하는 청년주거 디딤돌 ★ 청년 임차보증금 융자 지원사업 신청자를 모집합니다!</div>
								<div class="detailDate">2017-02-02</div>
								<div class="detailAuthor">관리자</div>
							</div>
							<div class="detailBody">
								<img src="http://www.peterpanz.com/images/notice/0123_Youth_financial_support_01.png">
							</div>
						</div>
						<button class="red-button" type="button" style="margin-top: 30px; margin-bottom: 30px; float: right;">목록</button>
						<div></div>
					</div>
				</div>
			</div>
			</div>
		</div>
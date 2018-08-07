<%@ page language="java" contentType="text/html; charset=UTF-8" %>
    <style>
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
					<h1>FAQ <small>(자주묻는 질문)</small></h1>
					<p>내방에 대해 자주 묻는 질문과 그에 대한 답변을 제공합니다.</p>
				</div>
				<div class="col-md-12" style="width: 100%;">
					<div class="tab-content panels-faq">
						<div class="tab-pane active" id="tab1">
							<div class="panel-group" id="help-accordion-1">
								<div class="panel panel-default panel-help">
									<a href="#opret-produkt" data-toggle="collapse" data-parent="#help-accordion-1">
									    <div class="panel-heading" style="background-color: #f9f9f9; border-top: 3px solid #1BC8C2;">
									    	<h3 style="font-size: 18px; color: black;">회원가입을 하면 어떤 점이 좋나요?</h3>
									    </div>
									</a>
									<div id="opret-produkt" class="collapse in">
									    <div class="panel-body">
									    	<p>내방의 회원이 되시면 원룸∙투룸∙오피스텔 등 다양한 전∙월세 매물을 살펴보는 과정에서 ‘찜’하실 수 있습니다. ‘찜’해 둔 방을 모아서 확인하고, 본 목록을 통해 마음에 드는 방들의 가격이나 옵션 등을 한 눈에 비교하실 수 있습니다. 뿐만 아니라 회원가입 후 직접 방 사진을 찍어 관련 정보를 기입, 매물을 광고하실 수 있으며, 공인중개사 회원은 물론 개인 회원도 직거래 매물을 광고할 수 있습니다.</p>
									    </div>
									</div>
								</div>
								<div class="panel panel-default panel-help">
									<a href="#rediger-produkt" data-toggle="collapse" data-parent="#help-accordion-1">
									    <div class="panel-heading" style="background-color: #f9f9f9; border-top: 3px solid #1BC8C2;">
									    	<h3 style="font-size: 18px; color: black;">내방은 어떤 서비스인가요?</h3>
									    </div>
									</a>
									<div id="rediger-produkt" class="collapse">
									    <div class="panel-body">
									    	<p>내방은 모바일 어플리케이션을 통해 원루∙투룸∙오피스텔∙아파트 등 다양한 전∙월세 매물을 검색 및 조회하고, 매물별 자세한 정보를 확인할 수 있는 서비스로, 필요한 경우 매물을 광고한 공인중개회원/개인회원에게 직접 연락을 취해 매물에 대한 추가 문의도 가능합니다. 또한 모든 회원이 직접 방 사진을 찍어 즉시 업로드하고 매물의 옵션 사항이나 위치 등의 정보를 입력해 매물 광고가 가능한 국내 최초의 오픈형 부동산 플랫폼으로서, 신뢰성을 높이기 위해 계속적으로 노력하고 있습니다.</p>
									    </div>
									</div>
								</div>
								<div class="panel panel-default panel-help">
									<a href="#ret-pris" data-toggle="collapse" data-parent="#help-accordion-1">
									    <div class="panel-heading" style="background-color: #f9f9f9; border-top: 3px solid #1BC8C2;">
									    	<h3 style="font-size: 18px; color: black;">페이스북으로 회원가입이 되지 않아요.</h3>
									    </div>
									</a>
									<div id="ret-pris" class="collapse">
									    <div class="panel-body">
									    	<p>새로 변경된 페이스북 서비스 정책에 따라 휴대폰 번호로 페이스북을 가입하셨거나 페이스북에서 이메일 인증을 거치지 않으신 분들은 내방에서 페이스북 회원가입이 되지 않게 되었습니다. 위의 경우에 해당되는 분들은 내방의 이메일 회원가입을 통해 가입을 진행하시면 문제없이 이용이 가능합니다. 이외의 다른 경우로 가입이 안되시는 경우 사용하시는 휴대폰기종과 상황을 고객센터로 남겨주시면 빠르게 해결해드리도록 하겠습니다.</p>
									    </div>
									</div>
								</div>
								<div class="panel panel-default panel-help">
									<a href="#slet-produkt" data-toggle="collapse" data-parent="#help-accordion-1">
									    <div class="panel-heading" style="background-color: #f9f9f9; border-top: 3px solid #1BC8C2;">
									    	<h3 style="font-size: 18px; color: black;">매물개수 제한이 있나요?</h3>
									    </div>
									</a>
									<div id="slet-produkt" class="collapse">
									    <div class="panel-body">
									    	<p>내방에 광고할 수 있는 매물개수에는 특별한 제한을 두지 않습니다. 단, 직거래 매물의 경우 1개 계정 당 1개 매물 업로드를 기준으로 합니다. 무분별한 매물 업로드를 통한 허위 정보의 발생을 막기 위해 허위매물 전담팀이 계속해서 직접 매물 정보를 확인하게 됩니다.</p>
									    </div>
									</div>
								</div>
								<div class="panel panel-default panel-help">
									<a href="#opret-kampagne" data-toggle="collapse" data-parent="#help-accordion-1">
									    <div class="panel-heading" style="background-color: #f9f9f9; border-top: 3px solid #1BC8C2;">
									      <h3 style="font-size: 18px; color: black;">허위매물은 어떻게 관리 하나요?</h3>
									    </div>
									</a>
									<div id="opret-kampagne" class="collapse">
										<div class="panel-body">
										    <p>허위매물 전담팀이 수시로 매물을 살펴보고 허위매물을 필터링하고 있습니다. 지역구별 평균 시세를 파악해 시세에 비해 확연히 저렴한 매물이나 실사진이 아닌 사진이 포함된 경우 직접 연락을 취해 정보 수정을 요청합니다. 광고 기간이 30일이 지난 매물의 경우 자동으로 비공개 처리하여 계약이 완료된 매물의 노출 가능성을 줄였고, 사용자가 직접 허위매물을 신고할 수 있도록 관련 제도를 마련하여 내방면에서 허위매물 ZERO를 위한 노력을 기울이고 있습니다.</p>
										</div>
									</div>
								</div>
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
			</div>
		</div>

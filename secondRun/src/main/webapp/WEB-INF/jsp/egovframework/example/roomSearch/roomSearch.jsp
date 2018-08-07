<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<style>
     .input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    	
	.find-main {
	  padding-top: 121px;
	  padding-bottom: 10px;
	  min-height: 90vh;
	}
	
	/*상단 방검색 조건 메뉴*/
	
	h2{
	    margin-top: 0px;
    	margin-bottom: 0px;
	}
	.find-nav {
	  	display: block;
		position: absolute;
		top: 121px;
		left: 0;
		z-index: 10;
		height: 41px;
		padding-left: 20px;
		background-color: #f7f7f7;
		box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		width:100%; 
	}
	
	.find-nav .find-searchdiv {
		float:right;
		right: 100px;
	}
	
	
	.find-nav .filter-dropdown {
		float: left
	}
	
	.find-nav .filter-dropdown .title {
		position: relative;
		left: 0;
		z-index: 3;
		height: 41px;
		padding: 0 10px;
		background-color: #f7f7f7;
		line-height: 41px;
		cursor: pointer
	}
	
	.find-nav .filter-dropdown .title.active {
		background-color: #fff
	}
	
	.find-nav .filter-dropdown .title .name {
		display: inline-block;
		margin-right: 9px;
		font-size: 13px;
		font-weight: normal;
		white-space: pre;
		color: #585858
	}
	
	.find-nav .filter-dropdown .title .name .badge {
		width: 15px;
		height: 15px;
		margin-left: 10px;
		line-height: 15px
	}
	
	.find-nav .filter-dropdown .title .nabang-icon {
		color: #3b8de0
	}
	
	.find-nav .filter-dropdown .filter-icon {
		display: inline-block;
		float: left;
		width: 13px;
		height: 13px;
		margin-top: 14px;
		margin-right: 5px
	}
	
	.find-nav .filter-dropdown .filter-icon.deal {
		background-position: 0 0
	}
	
	.find-nav .filter-dropdown .filter-icon.deposit {
		background-position: -13px 0
	}
	
	.find-nav .filter-dropdown .filter-icon.price {
		background-position: 0 -13px
	}
	
	.find-nav .filter-dropdown .title:hover {
		background-color: #fff
	}
	
	.find-nav .filter-dropdown .content {
		display: block;
		position: absolute;
		top: 40px;
		z-index: 1;
		padding: 18px 15px 6px 11px;
		background-color: #fff;
		box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2)
	}
	
	.find-nav .filter-dropdown .content .popup-title {
		margin-bottom: 13px;
		font-size: 13px;
		color: #585858
	}
	
	.find-nav .filter-dropdown .content .line {
		width: 100%;
		height: 1px;
		background-color: #d1d1d1;
		margin-bottom: 13px
	}
	
	.find-nav .filter-dropdown .content .placeholder {
		padding-left: 14px;
		margin-bottom: 8px;
		font-size: 13px;
		color: #919191
	}
	
	.find-nav .filter-dropdown .content input[type="number"] {
		width: 95px;
		height: 24px;
		padding: 0 6px;
		margin-bottom: 10px
	}
	
	.find-nav .filter-dropdown .content .input1:focus, .find-nav .filter-dropdown .content .input2:focus , .find-nav .filter-dropdown .content .input3:focus , .find-nav .filter-dropdown .content .input4:focus
		{
		border: 1px #3b8de0 solid
	}
	
	.find-nav .filter-dropdown .content .input1 {
		margin-left: 14px
	}
	.find-nav .filter-dropdown .content .input3 {
		margin-left: 14px
	}
	
	.find-nav .filter-dropdown .content .swing {
		display: inline;
		margin: 0 2px
	}
	
	.find-nav .filter-dropdown .content .price-line {
		width: 204px;
		height: 1px;
		background-color: #d1d1d1;
		margin: 0 auto
	}
	
	.find-nav .filter-dropdown .content .price-filter {
		margin: 0 -15px 0 -11px
	}
	
	.find-nav .filter-dropdown .content .price-filter .popup-title {
		margin-left: 14px
	}
	
	.find-nav .filter-dropdown .content .price-select-list {
		display: inline-block;
		position: relative
	}
	
	.find-nav .filter-dropdown .content .price-select-list .price-list .price-item
		{
		color: #919191;
		cursor: pointer
	}
	
	.find-nav .filter-dropdown .content .price-select-list .price-list .price-item:hover
		{
		background-color: #e5f1fe
	}
	
	.find-nav .filter-dropdown .content .price-select-list .price-list .price-item.active
		{
		background-color: #3b8de0;
		color: #fff
	}
	
	.find-nav .filter-dropdown .content .price-select-list.from {
		float: left;
		width: 50%;
		text-align: left
	}
	
	.find-nav .filter-dropdown .content .price-select-list.from .price-item {
		padding: 9px 10px 9px 23px
	}
	
	.find-nav .filter-dropdown .content .price-select-list.from2 {
		float: left;
		width: 50%;
		text-align: left
	}
	
	.find-nav .filter-dropdown .content .price-select-list.from2 .price-item {
		padding: 9px 10px 9px 23px
	}
	
	.find-nav .filter-dropdown .content .price-select-list.to {
		float: right;
		width: 50%;
		text-align: right
	}
	
	.find-nav .filter-dropdown .content .price-select-list.to .price-item {
		padding: 9px 23px 9px 10px
	}
	
	.find-nav .filter-dropdown .content .price-select-list.to2 {
		float: right;
		width: 50%;
		text-align: right
	}
	
	.find-nav .filter-dropdown .content .price-select-list.to2 .price-item {
		padding: 9px 23px 9px 10px
	}
	
	.find-nav .filter-dropdown .content .checkbox-wrap {
		display: block;
		margin-bottom: 12px;
		cursor: pointer
	}
	
	.find-nav .filter-dropdown .content .checkbox-wrap .checkbox {
		float: left;
		margin-right: 7px
	}
	
	.find-nav .filter-dropdown .content .checkbox-wrap .name {
		float: left;
		color: #919191
	}
	.price-item{
		height:33px;
	}
	
	
	@media ( min-width :1024px) {
		.find-nav .filter-dropdown .title {
			padding: 0 20px
		}
		.find-nav .filter-dropdown .content {
			padding: 18px 15px 6px 21px
		}
		.find-nav .filter-dropdown .content .price-filter {
			margin: 0 -15px 0 -21px
		}
		.find-nav .filter-dropdown .content .price-filter .popup-title {
			margin-left: 19px
		}
		.find-nav .filter-dropdown .content .price-filter .placeholder {
			margin-left: 6px
		}
		.find-nav .filter-dropdown .content .price-filter .input1 {
			margin-left: 20px
		}
		.find-nav .filter-dropdown .content .price-filter .input3 {
			margin-left: 20px
		}
		.find-nav .filter-dropdown .content .price-filter .from .price-item {
			padding: 9px 10px 9px 28px
		}
		.find-nav .filter-dropdown .content .price-filter .to .price-item {
			padding: 9px 28px 9px 10px
		}
		.find-nav .filter-dropdown .content .price-filter .from2 .price-item {
			padding: 9px 10px 9px 28px
		}
		.find-nav .filter-dropdown .content .price-filter .to2 .price-item {
			padding: 9px 28px 9px 10px
		}
	}
	
	.find-nav .filter-dash {
		position: relative;
		top: 13px;
		float: left;
		width: 1px;
		height: 16px;
		background-color: #d1d1d1
	}
	.sort-by-asc
	{
	    left: 3px;
	    display: inline-block;
	    width: 0;
	    height: 0;
	    border: solid 5px transparent;
	    margin: 4px 4px 0 3px;
	    background: transparent;
	    border-bottom: solid 7px #F80;
	    border-top-width: 0;
	}
	
	.sort-by-desc
	{
	    left: 3px;
	    display: inline-block;
	    width: 0;
	    height: 0;
	    border: solid 5px transparent;
	    margin: 4px 4px 0 3px;
	    background: transparent;
	    border-top: solid 7px #F80;
	    border-bottom-width: 0;
	}
	
	.custom-control-input {
	  position: absolute;
	  z-index: -1;
	  opacity: 0;
	}
	
	.custom-control-input:checked ~ .custom-control-label::before {
	  color: #fff;
	  background-color: #78C2AD;
	}
	
	.custom-control-input:focus ~ .custom-control-label::before {
	  -webkit-box-shadow: 0 0 0 1px #fff, 0 0 0 0.2rem rgba(120, 194, 173, 0.25);
	          box-shadow: 0 0 0 1px #fff, 0 0 0 0.2rem rgba(120, 194, 173, 0.25);
	}
	
	.custom-control-input:active ~ .custom-control-label::before {
	  color: #fff;
	  background-color: #f3faf8;
	}
	
	.custom-control-input:disabled ~ .custom-control-label {
	  color: #888;
	}
	
	.custom-control-input:disabled ~ .custom-control-label::before {
	  background-color: #f7f7f9;
	}
	
	input[type="checkbox"], input[type="radio"] {
	box-sizing: border-box;
	padding: 0
	}
	.filter .filter-dropdown .content .price-select-list .price-list .price-item
	{
	color: #919191;
	cursor: pointer
	}
	
	.filter .filter-dropdown .content .price-select-list .price-list .price-item:hover
		{
		background-color: #e5f1fe
	}
	
	.filter .filter-dropdown .content .price-select-list .price-list .price-item.active
		{
		background-color: #3b8de0;
		color: #fff
	}
	ul{ list-style:none; }
	
	/*좌측지도영역*/
	.find-left {
	  width:75%; height:90%; position:absolute; left:0px; top:161px; overflow-y: hidden;
	}
	
	
	/*(구버전)우측 리스트 XXX*/
	.find-right {
		overflow-y: hidden;
		width:20%; height:85%; position:absolute; left:80%; top:161px;
		z-index: 3;
		background-color: #fff;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.2)
	}
	/*우측 리스트*/
	.List.map-page {
		overflow-y: hidden;
		position: absolute;
		top: 161px;
		width:25%; height:90%;
		left:75%;
		z-index: 3;
		background-color: #fff;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.2)
	}
	.List.map-page .ListInfo {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%
	}
	.ListInfo {
		padding: 12px 10px;
		background-color: #3b8de0;
		color: #fff
	}
	.List.map-page .ListInfo {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%
	}
		.List.list-page .ListInfo-wrap {
		width: 100%;
		padding: 12px 0;
		background-color: #3b8de0
	}
	
	.List.list-page .ListInfo {
		width: 861px;
		padding: 0;
		margin: 0 auto
	}
	.ListWrap {
		overflow-y: auto;
		position: absolute;
		top: 42px;
		right: 0;
		bottom: 0;
		left: 0;
		width: 100%;
		height: auto;
		margin-bottom: 44px;
		background-color: #f7f7f7;
		transition: opacity .5s
	}
	
	.List.list-page .FeatureList {
		margin-bottom: 10px;
		text-align: center
	}
	.Room-header {
		height: 40px;
		padding-left: 10px;
		background-color: #f7f7f7;
		font-size: 1.1em;
		line-height: 40px;
		color: #585858
	}
	.List.map-page .Room-branch:first-child .FeatureAgent {
		margin-top: -10px
	}
	.List.map-page .Room-tree {
		padding: 10px;
		background-color: #fff
	}
	.Room-list {
		background-color: #fff;
		font-size: 11px;
		color: #919191
	}
	.Room-item {
		display: block;
		position: relative;
		height: 125px;
		padding: 9px;
		border: 1px solid #dfdfdf;
		margin-top: -1px;
		background-color: #fff;
		color: #000
	}
	
	.Room-item:hover {
		background-color: #d2e5ff
	}
	
	.Room-item:hover .RoomItem-preview__cover {
		background-color: #000;
		opacity: .6;
		filter: alpha(opacity = 60)
	}
	
	.Room-item>a {
		display: table;
		width: 100%
	}
	
	.RoomItem-preview, .RoomItem-detail {
		display: table-cell;
		vertical-align: middle
	}
	
	.RoomItem-preview {
		width: 1%
	}
	
	.RoomItem-preview__mask {
		position: relative;
		width: 120px;
		height: 105px
	}
	
	.RoomItem-preview__mask.is-pano:before {
		content: ' ';
		display: block;
		position: absolute;
		left: 0;
		bottom: 0;
		z-index: 10;
		width: 57px;
		height: 18px;
		background-size: 100%;
		background-repeat: no-repeat
	}
	
	.RoomItem-preview__image {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-image:
		background-repeat: no-repeat;
		background-position: center;
		background-size: cover;
		
	}
	
	.RoomItem-preview__cover {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%
	}
	
	.RoomItem-preview__cover[class*="is-"] {
		background-size: 50%;
		background-color: rgba(0, 0, 0, 0.35);
		background-repeat: no-repeat;
		background-position: center
	}
	
	
	.RoomItem-preview, .RoomItem-detail {
		display: table-cell;
		vertical-align: middle
	}
	.RoomItem-detail {
		width: 100000px;
		max-width: 1px;
		padding-left: 14px
	}
		.List.list-page .FeatureList .RoomItem-detail {
		padding-left: 21px;
		padding-right: 0
	}
		.RoomItem-info {
		position: relative
	}
	.RoomItem-header:before, .RoomItem-header:after {
		content: " ";
		display: table
	}
	
	.RoomItem-header:after {
		clear: both
	}
	
	.RoomItem-header:before, .RoomItem-header:after {
		content: " ";
		display: table
	}
	
	.RoomItem-header:after {
		clear: both
	}
	
	.RoomItem-header .room-visited {
		display: inline-block;
		margin-top: 3px;
		margin-left: 8px;
		font-size: 12px
	}
	
	.RoomItem-header .room-visited .nabang-icon {
		color: #d1d1d1
	}
	.RoomItem-price {
		float: left;
		font-size: 20px;
		font-weight: bold;
		line-height: 1;
		color: #2f2f2f
	}
	
	.RoomItem-price__type {
		margin-right: 10px;
		font-weight: bold;
		letter-spacing: -1px
	}
	
	.RoomsItem-price__title.is-0 {
		color: #2074c8
	}
	
	.RoomsItem-price__title.is-1 {
		color: #f5a623
	}
	
	.RoomsItem-price__title.is-2 {
		color: #46c448
	}
	
	.RoomItem-summary {
		display: inline-block;
		width: 100%;
		margin-top: 3px;
		font-size: 13px;
		color: #2f2f2f;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap
	}
	
	.RoomItem-summary span:after {
		display: inline-block;
		content: '|';
		padding: 0 1px 0 2px;
		color: #919090
	}
	
	.RoomItem-summary span:last-child:after {
		display: none
	}
	.RoomItem-types {
		display: -webkit-box;
		margin-top: 3px;
		text-overflow: ellipsis;
		-webkit-line-clamp: 1;
		-webkit-box-orient: vertical;
		overflow: hidden
	}
	
	.RoomItem-types.is-full .tag {
		margin-right: 4px
	}
	.tag {
		display: inline-block;
		padding: 1px 8px;
		border-radius: 100px;
		background-color: #e7f4ff;
		margin-right: 5px;
		font-size: 13px;
		line-height: 16px;
		color: #353535;
		cursor: pointer
	}
	.RoomItem-title {
		display: block;
		padding: 0;
		margin-top: 3px;
		font-size: 14px;
		color: #6c6c6c;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap
	}
	.RoomItem-date {
		display: none;
		position: absolute;
		top: 5px;
		right: 10px;
		color: #585858
	}
	.RoomItem-options {
		display: none
	}
	
	.RoomItem-icons {
		float: right
	}
	
	.RoomItem-icons .room-favorite .icon_heart {
		color: #ef4351
	}
	
	.RoomItem-icons .room-favorite .icon_heart-o {
		color: #d1d1d1
	}
	
	.RoomItem-icons .room-favorite .icon_heart-o:hover {
		color: #ef4351;
		cursor: pointer;
	}
	.icon-size-2xl {
	    /* vertical-align: -5px; */
	    font-size: 19px;
	}
	
	.Room-list {
		background-color: #fff;
		font-size: 11px;
		color: #919191
	}

	.List.map-page .ListPagination {
		width: 460px
	}
	
	.List.map-page .Room-tree {
		padding: 10px;
		background-color: #fff
	}
	
	.List.map-page .Room-branch:first-child .FeatureAgent {
		margin-top: -10px
	}
	
	.List.map-page .FeatureAgent {
		padding-top: 10px
	}
	
	.List.map-page .AreaRoom {
		padding-bottom: 10px
	}
	
	.List.map-page .AreaRoom .Room-list {
		padding-right: 10px;
		padding-left: 10px;
		background-color: transparent
	}
		
/*########*/

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

<section class="find-main">
	<div class="find-nav">
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">매물종류</h2>
					<i class="sort-by-desc"	></i>
				</div>
				<div class="content hidden" style="width: 146px;">
					<div class="filter-item deal-type detail-content">
						<div class="popup-title" >
							<span>매물종류</span>
						</div>
						<div>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" checked="" value="월세 + 전세">
								<span class="name">월세 + 전세</span>
							</label>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" value="월세"	>
								<span class="name">월세</span>
							</label>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" value="전세"	>
								<span class="name">전세</span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">거래종류</h2>
					<i class="sort-by-desc"></i>
				</div>
				<div class="content  hidden" style="width: 146px;"
					>
					<div class="filter-item deal-type detail-content">
						<div class="popup-title">
							<span>거래종류</span>
						</div>
						<div>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" checked="" value="전체"	>
								<span class="name">전체</span>
							</label>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" value="중개">
								<span class="name">중개</span>
							</label>
							<label class="checkbox-wrap clearfix">
								<input class="checkbox" type="checkbox" value="직거래">
								<span class="name">직거래</span>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">방 종류</h2>
					<i class="sort-by-desc"></i>
				</div>
				<div class="content  hidden" style="width: 146px;">
					<div class="filter-item filter-small-view"	>
						<div class="popup-title">
							<span>방 종류</span>
						</div>
						<div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" checked="" value="전체">
									<span class="name">전체</span>
								</label>
							</div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="원룸"	>
									<span class="name">원룸</span>
								</label>
							</div>
							<div >
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="1.5룸">
									<span class="name">1.5룸</span>
								</label>
							</div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="투룸">
									<span class="name">투룸</span>
								</label>
							</div>
							<div >
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="쓰리룸">
									<span class="name">쓰리룸</span>
								</label>
							</div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="오피스텔">
									<span class="name">오피스텔</span>
								</label>
							</div>
							<div >
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="아파트">
									<span class="name">아파트</span>
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">보증금 0 만원~무제한	</h2>
					<i class="sort-by-desc"></i>
				</div>
				<div class="content hidden" style="width: 241px;">
					<div class="filter-item filter-small-view price-filter">
						<div class="popup-title">
							<span>보증금 가격</span>
						</div>
						<p class="placeholder">보증금 (ex. 10,000만원 = 1억원)</p>
						<input class="input1 input-box" type="number" value="0">
						<div class="swing">~</div>
						<input class="input2 input-box" type="number" value="999999">
						<div class="price-line" ></div>
						<div class="clearfix">
							<div class="price-select-list from">
								<ul class="price-list">
									<li class="price-item active"><span>0 만원</span></li>
									<li class="price-item"><span>100 만원</span></li>
									<li class="price-item"><span>500 만원</span></li>
									<li class="price-item"><span>1,000 만원</span></li>
									<li class="price-item"><span>2,000 만원</span></li>
									<li class="price-item"><span>3,000 만원</span></li>
									<li class="price-item"><span>4,000 만원</span></li>
									<li class="price-item"><span>5,000 만원</span></li>
									<li class="price-item"><span>6,000 만원</span></li>
									<li class="price-item"><span>7,000 만원</span></li>
									<li class="price-item"><span>8,000 만원</span></li>
									<li class="price-item"><span>9,000 만원</span></li>
									<li class="price-item"><span>10,000 만원</span></li>
									<li class="price-item"><span>무제한</span></li>
								</ul>
							</div>
							<div class="price-select-list to">
								<ul class="price-list">
									<li class="price-item"><span>0 만원</span></li>
									<li class="price-item"><span>100 만원</span></li>
									<li class="price-item"><span>500 만원</span></li>
									<li class="price-item"><span>1,000 만원</span></li>
									<li class="price-item"><span>2,000 만원</span></li>
									<li class="price-item"><span>3,000 만원</span></li>
									<li class="price-item"><span>4,000 만원</span></li>
									<li class="price-item"><span>5,000 만원</span></li>
									<li class="price-item"><span>6,000 만원</span></li>
									<li class="price-item"><span>7,000 만원</span></li>
									<li class="price-item"><span>8,000 만원</span></li>
									<li class="price-item"><span>9,000 만원</span></li>
									<li class="price-item"><span>10,000 만원</span></li>
									<li class="price-item active"><span>무제한</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">월세 0 만원~무제한</h2>
					<i class="sort-by-desc"></i>
				</div>
				<div class="content hidden" style="width: 241px;">
					<div class="filter-item filter-small-view price-filter">
						<div class="popup-title">
							<span>월세 가격</span>
						</div>
						<input class="input3 input-box" type="number" value="0">
						<div class="swing">~</div>
						<input class="input4 input-box" type="number" value="999999">
						<div class="price-line"></div>
						<div class="clearfix">
							<div class="price-select-list from2">
								<ul class="price-list">
									<li class="price-item active"	><span>0 만원</span></li>
									<li class="price-item"><span>10 만원</span></li>
									<li class="price-item"><span>20 만원</span></li>
									<li class="price-item"><span>30 만원</span></li>
									<li class="price-item"><span>40 만원</span></li>
									<li class="price-item"><span>50 만원</span></li>
									<li class="price-item"><span>60 만원</span></li>
									<li class="price-item"><span>70 만원</span></li>
									<li class="price-item"><span>80 만원</span></li>
									<li class="price-item"><span>90 만원</span></li>
									<li class="price-item"><span>100 만원</span></li>
									<li class="price-item"><span>무제한</span></li>
								</ul>
							</div>
							<div class="price-select-list to2">
								<ul class="price-list">
									<li class="price-item"><span>0 만원</span></li>
									<li class="price-item"><span>10 만원</span></li>
									<li class="price-item"><span>20 만원</span></li>
									<li class="price-item"><span>30 만원</span></li>
									<li class="price-item"><span>40 만원</span></li>
									<li class="price-item"><span>50 만원</span></li>
									<li class="price-item"><span>60 만원</span></li>
									<li class="price-item"><span>70 만원</span></li>
									<li class="price-item"><span>80 만원</span></li>
									<li class="price-item"><span>90 만원</span></li>
									<li class="price-item"><span>100 만원</span></li>
									<li class="price-item active"><span>무제한</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			<div class="filter-dropdown">
				<div class="title">
					<h2 class="name">추가옵션</h2>
					<i class="sort-by-desc"></i>
				</div>
				<div class="content hidden"  id="aaaa" style="width: 149px;">
					<div class="filter-item deal-type detail-content">
						<div class="popup-title">
							<span>추가옵션</span>
						</div>
						<div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="주차가능">
									<span class="name">주차가능</span>
								</label>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="반려동물">
									<span class="name">반려동물</span>
								</label>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="360도매물">
									<span class="name">360도매물</span>
								</label>
							</div>
							<div class="line"></div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="5평 이하">
									<span class="name">5평 이하</span>
								</label>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="5~10평 이하">
									<span class="name">5~10평 이하</span>
								</label>
							</div>
							<div class="line"></div>
							<div>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="반지층">
									<span class="name">반지층</span>
								</label>
								<label class="checkbox-wrap clearfix">
									<input class="checkbox" type="checkbox" value="저층 1층~3층">
									<span class="name">저층 1층~3층</span>
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="filter-dash"></div>
			
			<div class="find-searchdiv" style="padding-right:10px; padding-top: 5px;" >
				<input class="input-box" type="text" placeholder="검색어를 입력해주세요." style="width:280px; height: 30px;">
				<a href="#" class="white-button">Search</a>
			</div>
		</div>
		
	<div class="find-left">
		<div id="left-map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	</div>
	<div class="List list-component map-page">
    	<div class="ListOutWrap">
    		<div class="ListInfo room-info clearfix">
    		<span> &gt; 검색결과 93개 </span>
    		</div>
    		<div class="ListWrap list-wrap" style="opacity: 1;">
    			<!--  이지역 추천공인중개업소 매물 하단 -->
    			<div class="FeatureList list-agent-area">
    				<div class="Room-section">
			    		<div class="Room-header feature-title">
				    		<div class="Room-title feature-list-title">
				    			<span>이 지역 추천 공인 중개업소 매물</span>
				    		</div>
			    		</div>
						<ul class="Room-tree features">
							<li class="Room-branch feature"> <!--방1,2-->
								<ul class="Room-list items">
									<li class="Room-item"> <!--방1-->
										<a href="roomInfo.do" target="_blank">
											<div class="RoomItem-preview"> <!--방1 사진-->
												<div class="RoomItem-preview__mask">
													<div class="RoomItem-preview__image"></div>
													<div class="RoomItem-preview__image" style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/7366a545-624d-4d54-ab8a-748dfd6beaaf);"></div>
													<div class="RoomItem-preview__cover"></div>
												</div>
											</div>
											<div class="RoomItem-detail"><!--방1 정보-->
												<div class="RoomItem-info">
													<div class="RoomItem-header"> <!-- 월세 500/43 , 즐겨찾기-->
														<div class="RoomItem-price">
															<p>
																<span class="RoomItem-price__type">월세</span>
																<span class="RoomsItem-price__title is-0">500/43</span>
															</p>
														</div>
														<span class="room-visited"><i	class="nabang-icon"></i></span>
														<div class="RoomItem-icons">
															<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
														</div>
													</div>
													<span class="RoomItem-summary"> <!-- 원룸 | 2층 | 23.1 | 관리비 2만원 -->
														<span>원룸	</span>
														<span>2층 </span>
														<span>23.1m² </span>
														<span>관리비 2만원</span>
													</span>
													<div class="RoomItem-types types"> <!--해쉬태그부분 -->
														<span class="#주차 tag">#주차</span>
													</div>
													<span class="RoomItem-title">★★★전철역 3분 초역세권 풀옵션</span>
													<span class="RoomItem-date">3일전</span>
												</div>
												<div class="RoomItem-options">
													<span class="option-list clearfix"><span class="title">옵션</span>
													<span class="ellipsis">에어컨,세탁기, 신발장, 냉장고, 가스레인지</span></span>
												</div>
											</div>
										</a>
									</li>
									
									<li class="Room-item"><!--방2-->
										<a href="roomInfo.do" target="_blank">
											<div class="RoomItem-preview">
												<div class="RoomItem-preview__mask">
													<div class="RoomItem-preview__image"></div>
													<div class="RoomItem-preview__image" style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/40cebf7a-226e-439b-afc3-aca7a0bc80ff);"></div>
													<div class="RoomItem-preview__cover"></div>
												</div>
											</div>
											<div class="RoomItem-detail">
												<div class="RoomItem-info">
													<div class="RoomItem-header">
														<div class="RoomItem-price">
															<p>
																<span class="RoomItem-price__type">월세</span>
																<span class="RoomsItem-price__title is-0">1000/50</span>
															</p>
														</div>
														<span class="room-visited"><i class="nabang-icon"></i></span>
														<div class="RoomItem-icons">
															<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
														</div>
													</div>
													<span class="RoomItem-summary">
														<span>투룸 </span>
														<span> 1층 </span>
														<span> 49.5m² </span>
														<span> 관리비 1만원</span>
													</span>
													<div class="RoomItem-types types">
														<span class="#주차 tag">#주차</span>
														<span class="#반려동물 tag">#반려동물</span>
													</div>
													<span class="RoomItem-title">★★★전세를 올수리 하는 2룸입니다</span>
													<span class="RoomItem-date">6일전</span>
												</div>
												<div class="RoomItem-options">
													<span class="option-list clearfix">
														<span class="title">옵션</span>
														<span class="ellipsis">신발장</span>
													</span>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>	
				</div>
				<!--이지역 주변방 -->
				<div class="AreaRoom new-rooms clearfix">
					<div class="Room-header new-rooms-title">
						<div class="Room-title new-list-rooms-title">이 지역 주변 방</div>
					</div>
					<ul class="Room-list items">
						<li class="Room-item">
							<a href="roomInfo.do" target="_blank">
								<div class="RoomItem-preview">
									<div class="RoomItem-preview__mask">
										<div class="RoomItem-preview__image"></div>
										<div class="RoomItem-preview__image" style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/2e912e8d-cd83-4b9c-9938-6f4235fc5ff9);"></div>
										<div class="RoomItem-preview__cover"></div>
									</div>
								</div>
								<div class="RoomItem-detail">
									<div class="RoomItem-info">
										<div class="RoomItem-header">
											<div class="RoomItem-price">
												<p>
													<span class="RoomItem-price__type">월세</span>
													<span class="RoomsItem-price__title is-0">2000/80</span>
												</p>
											</div>
											<span class="room-visited"><i class="nabang-icon"></i></span>
											<div class="RoomItem-icons">
												<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
											</div>
										</div>
										<span class="RoomItem-summary">
											<span>쓰리룸</span>
											<span>2층 </span>
											<span>72.6m² </span>
											<span>관리비 3만원</span>
										</span>
										<div class="RoomItem-types types">
											<span class="#주차 tag">#주차</span>
										</div>
										<span class="RoomItem-title">정남향 신축 쓰리룸 월세 2000/80~~~</span>
										<span class="RoomItem-date">23일전</span>
									</div>
									<div class="RoomItem-options">
										<span class="option-list clearfix">
											<span class="title">옵션</span>
											<span class="ellipsis">신발장,가스레인지</span>
										</span>
									</div>
								</div>
							</a>
						</li>
						<li class="Room-item">
							<a href="roomInfo.do" target="_blank">
								<div class="RoomItem-preview">
									<div class="RoomItem-preview__mask">
										<div class="RoomItem-preview__image"></div>
										<div class="RoomItem-preview__image"style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/e9294e52-f373-4b11-881e-b11d019080dd);"></div>
										<div class="RoomItem-preview__cover"></div>
									</div>
								</div>
								<div class="RoomItem-detail">
									<div class="RoomItem-info">
										<div class="RoomItem-header">
											<div class="RoomItem-price">
												<p>
													<span class="RoomItem-price__type">월세</span>
													<span class="RoomsItem-price__title is-0">2000/70</span>
												</p>
											</div>
											<span class="room-visited"><i class="nabang-icon"></i></span>
											<div class="RoomItem-icons">
												<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
											</div>
										</div>
										<span class="RoomItem-summary">
											<span>투룸</span>
											<span>2층 </span>
											<span>198m² </span>
											<span>관리비 3만원</span>
										</span>
										<div class="RoomItem-types types">
											<span class="#주차 tag">#주차</span>
										</div>
										<span class="RoomItem-title">[운정부동산] 거실 주방 방 넓고 햇볕 잘드는 투룸 월세 </span>
										<span class="RoomItem-date">4일전</span>
									</div>
									<div class="RoomItem-options">
										<span class="option-list clearfix">
											<span class="title">옵션</span>
											<span class="ellipsis">신발장,가스레인지, 전자도어락</span>
										</span>
									</div>
								</div>
							</a>
						</li>
						<li class="Room-item">
							<a href="roomInfo.do" target="_blank">
								<div class="RoomItem-preview">
									<div class="RoomItem-preview__mask">
										<div class="RoomItem-preview__image"></div>
										<div class="RoomItem-preview__image"style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/e9294e52-f373-4b11-881e-b11d019080dd);"></div>
										<div class="RoomItem-preview__cover"></div>
									</div>
								</div>
								<div class="RoomItem-detail">
									<div class="RoomItem-info">
										<div class="RoomItem-header">
											<div class="RoomItem-price">
												<p>
													<span class="RoomItem-price__type">월세</span>
													<span class="RoomsItem-price__title is-0">2000/70</span>
												</p>
											</div>
											<span class="room-visited"><i class="nabang-icon"></i></span>
											<div class="RoomItem-icons">
												<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
											</div>
										</div>
										<span class="RoomItem-summary">
											<span>투룸</span>
											<span>2층 </span>
											<span>198m² </span>
											<span>관리비 3만원</span>
										</span>
										<div class="RoomItem-types types">
											<span class="#주차 tag">#주차</span>
										</div>
										<span class="RoomItem-title">[운정부동산] 거실 주방 방 넓고 햇볕 잘드는 투룸 월세 </span>
										<span class="RoomItem-date">4일전</span>
									</div>
									<div class="RoomItem-options">
										<span class="option-list clearfix">
											<span class="title">옵션</span>
											<span class="ellipsis">신발장,가스레인지, 전자도어락</span>
										</span>
									</div>
								</div>
							</a>
						</li>
						<li class="Room-item">
							<a href="roomInfo.do" target="_blank">
								<div class="RoomItem-preview">
									<div class="RoomItem-preview__mask">
										<div class="RoomItem-preview__image"></div>
										<div class="RoomItem-preview__image"style="background-image: url(https://d1774jszgerdmk.cloudfront.net/512/e9294e52-f373-4b11-881e-b11d019080dd);"></div>
										<div class="RoomItem-preview__cover"></div>
									</div>
								</div>
								<div class="RoomItem-detail">
									<div class="RoomItem-info">
										<div class="RoomItem-header">
											<div class="RoomItem-price">
												<p>
													<span class="RoomItem-price__type">월세</span>
													<span class="RoomsItem-price__title is-0">2000/70</span>
												</p>
											</div>
											<span class="room-visited"><i class="nabang-icon"></i></span>
											<div class="RoomItem-icons">
												<span class="room-favorite"><i class="nabang-icon icon_heart-o icon-size-2xl">♥</i></span>
											</div>
										</div>
										<span class="RoomItem-summary">
											<span>투룸</span>
											<span>2층 </span>
											<span>198m² </span>
											<span>관리비 3만원</span>
										</span>
										<div class="RoomItem-types types">
											<span class="#주차 tag">#주차</span>
										</div>
										<span class="RoomItem-title">[운정부동산] 거실 주방 방 넓고 햇볕 잘드는 투룸 월세 </span>
										<span class="RoomItem-date">4일전</span>
									</div>
									<div class="RoomItem-options">
										<span class="option-list clearfix">
											<span class="title">옵션</span>
											<span class="ellipsis">신발장,가스레인지, 전자도어락</span>
										</span>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
	    	<!-- 하단 번호 -->	
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
	   		 <!--  매물없을경우 show 붙어야함 -->
	   		<div class="ListZero" ></div>
	   	</div>	
   	</div>
</section>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9b2d4124725769d07819c8362366a157&libraries=services"></script>
	
<script>
var map="";

$(window).resize(function(){
	var win_height = $(window).height();
	$(".find-left").css("height",win_height - 161);
	$(".List.map-page").css("height",win_height - 161);
});

$(document).ready(function() {
	$("html").css("overflow","hidden");
	
	var win_height = $(window).height();
	$(".find-left").css("height",win_height - 161);
	$(".List.map-page").css("height",win_height - 161);
	
	var container = document.getElementById('left-map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 1 //지도의 레벨(확대, 축소 정도)
	};

	map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴

	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new daum.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	
	// 지도에 원을 표시한다
	var circle = new daum.maps.Circle({
		map: map, // 원을 표시할 지도 객체
		center : new daum.maps.LatLng(37.55492082542465, 126.91815360988448), // 지도의 중심 좌표
		radius : 10, // 원의 반지름 (단위 : m)
		fillColor: '#FF0000', // 채움 색
		fillOpacity: 0.5, // 채움 불투명도
		strokeWeight: 3, // 선의 두께
		strokeColor: '#FF0000', // 선 색
		strokeOpacity: 0.9, // 선 투명도 
		strokeStyle: 'solid' // 선 스타일
	});	
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();
	 
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('마포구 서교동 463-30 서광빌딩 4층', function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {

	        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });
			//console.log("map : " + result[0].y);
			//console.log("position : " + result[0].x );
	        
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});   
	
	//보증금
	$(".price-item").click(function() {
		var priceParent = $(this).parent().parent().attr("class");
		
		//좌측
		if (priceParent === "price-select-list from") {
			$(".from .price-list .price-item").removeClass("active");
			$(this).addClass("active");
			
			var priceNm = $(this).text();
			if(priceNm === "무제한"){
				$(".content .input1").val(999999);
			} else {
				var price = priceNm.replace("만원","").replace(",","").trim();
				$(".content .input1").val(parseInt(price));
			}
		} else if (priceParent === "price-select-list to") {
			$(".to .price-list .price-item").removeClass("active");
			$(this).addClass("active");
			
			var priceNm = $(this).text();
			if(priceNm === "무제한"){
				$(".input2").val(999999);
			} else {
				var price = priceNm.replace("만원","").replace(",","").trim();
				$(".input2").val(parseInt(price));
			}
		}
	});
	
	//월세
	$(".price-item").click(function() {
		var priceParent = $(this).parent().parent().attr("class");
		
		//좌측
		if (priceParent === "price-select-list from2") {
			$(".from2 .price-list .price-item").removeClass("active");
			$(this).addClass("active");
			
			var priceNm = $(this).text();
			if(priceNm === "무제한"){
				$(".input3").val(999999);
			} else {
				var price = priceNm.replace("만원","").replace(",","").trim();
				$(".input3").val(parseInt(price));
			}
		} else if (priceParent === "price-select-list to2") {
			$(".to2 .price-list .price-item").removeClass("active");
			$(this).addClass("active");
			
			var priceNm = $(this).text();
			if(priceNm === "무제한"){
				$(".input4").val(999999);
			} else {
				var price = priceNm.replace("만원","").replace(",","").trim();
				$(".input4").val(parseInt(price));
			}
		}
	});
	
	$(".filter-dropdown .title").click(function() {
		var this_title = $(this);
		var this_parent = $(this).parent("div");
		
		if (this_title.hasClass("active")) {
			$(".title").removeClass("active");
			$(".content").addClass("hidden");
			this_parent.find(".sort-by-asc").attr("class" ,"sort-by-desc" );
		} else {
			$(".title").removeClass("active");
			$(".content").addClass("hidden");
			$(".sort-by-asc").attr("class" ,"sort-by-desc" );
			$(this).addClass('active');
			this_parent.find(".content").removeClass('hidden');	
			this_parent.find(".sort-by-desc").attr("class" ,"sort-by-asc" );
		}
	});
	
	$('.nabang-icon').click(function(e){
		e.preventDefault();  // 하트아이콘 클릭시 a태그 이벤트 안타도록
	  	var clickCls = $(this);
		
		if (clickCls.hasClass("icon-size-2xl")) {
			if (clickCls.hasClass("icon_heart-o")){
				clickCls.removeClass("icon_heart-o");
				clickCls.addClass("icon_heart");
			} else {
				clickCls.removeClass("icon_heart");
				clickCls.addClass("icon_heart-o");
			}		
		}
	});	
});

function refresh_find() {
	
}

var isEmpty = function(val) {
	if (val === "" || val ===null || val ===undefined || (val !== null && typeof val === "object" && !Object.keys(val).length)) {
		return true;
	} else {
		return false;
	}
};
</script>
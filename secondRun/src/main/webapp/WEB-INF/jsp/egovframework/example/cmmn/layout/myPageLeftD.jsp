<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
#myPageLeft {
	
	margin-top: 46px;
	margin-left: 33px;
	margin-right: 40px;
   
}
.row {
	margin-top: 55px;
}
#myPageRight {
	
	border-bottom: 2px solid #333;
	line-height: 40px;
	margin-top: 23px;
    margin-bottom: 50px;
}
#myPageLeftScript {
	padding-bottom: 13px;
	font-size: 30px;
	border-bottom: 2px solid #333;
	margin-bottom: 30px;
}
ul {
	list-style: none;
}
#leftUi li {
	margin-bottom: 10px;
}
a {
	color: #333;
}
a:hover {
	color: black;
	font-weight: bold;
	border-bottom: 1px solid #333;
	
}
</style>
<div class="col-md-4" id="myPageLeft"> 
	<div id="myPageLeftScript"><b>마이페이지</b></div> 
	<ul id="leftUi">	 
		<li><a href="/?pn=mypage.order.list" class="">내정보</a></li> 
		<li><a href="/?pn=mypage.point.list" class="">쪽지함</a></li> 
		<li><a href="/?pn=mypage.coupon.list" class="hit">내가 참여한 이벤트 내역</a></li> 
		<li><a href="/?pn=mypage.wish.list" class="">찜한상품</a></li> 
		<li><a href="/?pn=mypage.as.list" class="">장바구니</a></li> 
		<li><a href="/?pn=mypage.inquiry.form" class="">1:1온라인문의</a></li> 
		<li><a href="/?pn=mypage.inquiry.list" class="">나의문의내역</a></li> 
		<li><a href="/?pn=mypage.eval.list" class="">포럼</a></li> 
		<li><a href="/?pn=mypage.eval.list" class="">나의상품평가</a></li>
		<li><a href="/?pn=mypage.qna.list" class="">나의상품문의</a></li>  
		<li><a href="/?pn=mypage.modify.form" class="">나의정보수정</a></li> 
		<li><a href="/?pn=mypage.leave.form" class="">회원탈퇴</a></li> 
	</ul> 
</div> 
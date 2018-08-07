<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	.input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    .list-group-item2 { position:relative; display:block; padding:10px 15px; font-size:15px;
        margin-bottom:-1px; background-color:#ffffff; border:1px solid #dddddd; }
    a { color:black; cursor:pointer; }
    a:hover { color:black; }
    .profile-div { position:relative !important; }
    .profile-div img { width:92px; height:92px; border:1px solid #dddddd; }
    .profile-div div { position:absolute !important; top:73px; bottom: -1px; width: 92px; height:18px;
        background-color:#000; font-size:12px; line-height:1.53em; text-align:center; color:#fff;
        cursor:pointer; opacity:0.6; filter:alpha(opacity=60); }
    .title { margin:0px; font-size:14px; font-weight:normal; line-height:32px; }
    .table { word-break:break-all; }
    .table tr:first-child { border-top:2px solid black; }
    .table th { padding:17px 0 17px 15px; border:0; border-bottom:1px solid #dddddd;
        background-color:#ecf0f5; font-size:13px; font-weight:normal; line-height:1.6; text-align:left; }
    .table td { padding:17px 0 17px 35px; border:0; border-bottom:1px solid #dddddd;
        font-size:13px; line-height:1.6; text-align:left; }
</style>
    
<ul class="list-group">
	<li class="list-group-item2"><a href="myInfoModify.do">내 정보</a></li>
    <li class="list-group-item2"><a href="messageBox.do">쪽지함</a></li>
    <li class="list-group-item2"><a href="eventList.do">이벤트 참여내역</a></li>
    <li class="list-group-item2"><a href="inquiryList.do">문의 내역</a></li>
</ul>
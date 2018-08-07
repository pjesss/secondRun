<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
div {
    display: block;
}

.checkbox-wrap {
	display: block;
	margin-bottom: 12px;
	cursor: pointer;
	width: 100%
}

.checkbox-wrap .checkbox {
	float: left;
	margin-right: 7px
}	
.checkbox-wrap .name {
	float: left;
	color: #919191
}

.radio_set{
	width: auto !important;
	display:inline !important;
}

.drop_label{
	margin-top:5px;
	width: 50%;
	height: 30px;
	margin-left: 10px;
}
li{ list-style:none; }
</style>

<div id="submit">
	<form class="submit-form">
		<div id="account" class="Account">
			<h1 style="margin-top: 0px">회원탈퇴</h1>
			<div class="Unregister-body">
				<p class="Unregister-desc">회원 탈퇴를 신청하기전에 아래 안내 사항을 한 번 더 확인해주세요.</p>
				<ol class="Unregister-guide">
					<li>1.회원 탈퇴시, 현재 로그인된 아이디는 즉시 탈퇴 처리됩니다.</li>
					<li>2.회원 탈퇴시, 회원 전용 웹 서비스 이용이 불가합니다.</li>
					<li>3.탈퇴 시 회원 정보 및 찜 서비스, 등록한 게시물 이용 기록이 모두 삭제됩니다.</li>
					<li>4.회원 정보 및 서비스 이용 기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</li>
					<li>5.광고를 위한 매물이등록되어 있을 경우, 탈퇴 시 모든 정보는 삭제 처리 됩니다.</li>
				</ol>
			</div>
		</div>
		
		<div style="margin-top: 30px; width: 100%;">
			<p>회원탈퇴설문조사</p>
			<span>그 동안 내방 서비스를 이용해 주셔서 감사합니다. 서비스 중 불편한 사항이 있으셨으면 마지막으로 선택 부탁드립니다.</span>
			<div style="width: 80%;margin-top: 15px;"  class="input-box">
				<div class="select-filter">
					<label class="drop_label" style="display:inline-block">
						<input type="radio" name="type-select" class="radio_set" />
						<span>사용빈도가 낮아서</span>
					</label>
					<label class="drop_label"  style="display:inline;">
						<input type="radio" name="type-select" class="radio_set"/>
						<span>이벤트나 해택이 적어서</span>
					</label>
					<label class="drop_label" style="display:inline-block">
						<input type="radio" name="type-select" class="radio_set"/>
						<span>타 사이트 가입</span>
					</label>
					<label class="drop_label" style="display:inline;">
						<input type="radio" name="type-select" class="radio_set" />
						<span>물량 부족</span>
					</label>
					<label class="drop_label" style="display:inline-block">
						<input type="radio" name="type-select" class="radio_set"/>
						<span>이용이 불편하고 장애가 많아서</span>
					</label>
					<label class="drop_label" style="display:inline;">
						<input type="radio" name="type-select" class="radio_set"/>
						<span>기타 다른 사유</span>
					</label>
				</div>
				<textarea class="input-box" maxlength="500" style="height:194px; width:98% ;margin: 10px;" placeholder="기타 불편하셨던 사항들을 적어주세요."></textarea>								
			</div>
		</div>
		<div style="margin-top: 15px;width: 100%;">
			<label class="checkbox-wrap">
				<input type="checkbox" value="false" class="checkbox" style="width: 14px !important;"/>
				<span class="name">안내사항을 모두 확인하였으며, 이에 동의합니다.</span>
			</label>
			<br>
			<button class="white-button" id="dropId" type="button">탈퇴하기</button>
		</div>
	</form>
</div>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
$(document).ready(function() {
	
	// 엔터키로 submit 되는것 방지
    $(function() {
    	$('form').bind("keypress", function (e) {
        // textarea 제외
        if (event.target.nodeName != 'TEXTAREA') {
                return e.keyCode != 13;
        }
        });
    });

	$("#dropId").click(function(){
		 if(confirm("회원 탈퇴를 하시겠습니까?")) /*확인을 누르면 true*/
         {
             alert("Yes");
         }
         else{
             alert("No");
         }    
	});

});
</script>
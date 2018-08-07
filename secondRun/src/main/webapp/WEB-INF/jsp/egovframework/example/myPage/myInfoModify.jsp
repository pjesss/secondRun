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
table.update-table {
    table-layout: fixed;
    clear: both;
    width: 100%;
    border-bottom: 1px solid #dfdfdf;
    word-break: break-all;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
table.update-table tr:first-child {
    border-top: 3px solid black;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
table.update-table th {
    padding: 17px 0 17px 15px;
    border: 0;
    border-top: 1px solid #dfdfdf;
    background-color: #ecf0f5;
    font-size: 13px;
    font-weight: normal;
    line-height: 1.6;
    text-align: left;
    width: 250px;
}
table.update-table td {
    padding: 17px 0 17px 35px;
    border: 0;
    border-top: 1px solid #dfdfdf;
    font-size: 13px;
    line-height: 1.6;
    text-align: left;
}
.Profile--register {
    height: 92px;
}
.Profile {
    position: relative;
}
.Profile--register .Profile-img:first-child {
    background-position: 0;
}
.Profile--register .Profile-img {
    width: 92px;
    height: 92px;
    border: 1px solid #d1d1d1;
    margin: 0;
    background-size: cover;
}
.Profile-img {
    position: absolute;
    right: 0;
    left: 0;
    background-size: cover;
}
.Profile--register .Profile-upload {
    position: absolute !important;
    bottom: -1px;
    left: -1px;
    width: 92px;
    background-color: #000;
    font-size: 12px;
    line-height: 1.53846154em;
    text-align: center;
    color: #fff;
    cursor: pointer;
    opacity: .6;
    filter: alpha(opacity=60);
}

.input_text{
	width: 440px;
	height: 35px;
    padding: 6px 12px;
    border: 1px solid #d1d1d1;
    background-color: #fff;
    background-image: none;
    font-size: 13px;
    line-height: 20px;
    vertical-align: middle;
    color: #585858;
    margin-bottom:0px !important;
}
.input_num{
	width: 100px  !important;
	height: 35px;
    padding: 6px 12px;
    border: 1px solid #d1d1d1;
    background-color: #fff;
    background-image: none;
    font-size: 13px;
    line-height: 20px;
    vertical-align: middle;
    color: #585858;
    margin-bottom:0px !important;
    display:inline !important;
}
.table-button-wrap {
    margin-top: 40px;
    text-align: center;
}
.btn-xl {
    width: 260px;
    font-size: 15px;
}
 .title { margin:0px; font-size:14px; font-weight:normal; line-height:32px; }

</style>
<div class="bs-component tab-pane fade active in" id="myInfo">
	<h3 class="title" style="float:left;">개인정보</h3>
	<a href="userLeave.do" class="title" style="float:right; text-decoration:underline;">회원탈퇴</a>
</div>	
<div id="profile">
	<form class="update-form">
		<table class="update-table">
			<tbody>
				<tr>
					<th>프로필</th>
					<td>
						<div class="Profile Profile--register">
							<div class="Profile-img"></div>
							<div class="Profile-img">
								<img src="img/roomInfo/user.jpg">
								<div class="Profile-upload" style="display: inline-block; cursor: pointer; position: static; z-index: 1;">사진변경</div>
                                            <input style="display:none" type="file" accept="image/png, image/gif, image/jpeg" id="inputProfileImage">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>본인 성명</th>
					<td>
						<div>
							<input name="name" type="text" class="input-box input_text" value="핫산" style="width: 50%;" />
						</div>
					</td>
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td>
						<input name="email" type="text" class="input-box input_text" value="abcde@naver.com" style="width: 50%;"/>
					</td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td>
					<div class="Phone" style="display: block;">
							<div class="Phone-auth" style="display: inline-block;">
								<select name="0" class="input-box input_num">
									<option value="">번호선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<span class="input-dash">-</span>
								<input type="number" name="1" max="9999" maxlength="4" class="input-box input_num" value="1234">
								<span class="input-dash" data-reactid=".0.0.1.0.0.1.2.3.1.0.0.3">-</span>
								<input type="number" name="2" max="9999" maxlength="4" class="input-box input_num" value="5678">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>집주소</th>
					<td>
						<div name="Address" class="Address">
							<input id="addSearch" type="text" class="input-box input_text" placeholder="예) 번동 10-1, 강북구 번동" style="width: 50%;display: inline; margin-left: 0px"/>
							<button class="white-button" id="address-button" type="button" >주소검색</button>
							<input class="input-box input_text" id="add1" disabled="" readonly=""  style="margin:10px ;margin-left: 0px"/>
							<input class="input-box input_text" id="add2" type="text" value="" placeholder="상세 주소를 입력하세요. (동, 호수)" style="margin:10px;margin-left: 0px"/>
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호 변경</th>
					<td class="modify-password">
						<div>
							<input name="prevPassword" type="password" class="input-box " placeholder="현재 비밀번호" value="" style="width: 50%;display: inline;padding:5px;margin-bottom:5px ">
							<span style="margin-left: 15px;">현재 비밀번호를 입력하세요</span>
						</div>
						<div>
							<input name="newPassword" type="password" class="input-box " placeholder="변경될 비밀번호" value="" style="width: 50%;display: inline;padding:5px;margin-bottom:5px">
							<span style="margin-left: 15px;">변경될 입력번호를 입력하세요</span>
						</div>
						<div>
							<input name="confirmPassword" type="password" class="input-box " placeholder="변경될 비밀번호 확인"value="" style="width: 50%;display: inline; padding:5px;margin-bottom:0px">
							<span style="margin-left: 15px;">변경될 비밀번호를 한 번 더 입력하세요</span>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="table-button-wrap">
			<div>
				<button class="white-button btn-xl" style="margin-right: 16px;">
					<span>취소</span>
				</button>
				<button type="submit" class="red-button btn-xl">
					<span>확인</span>
				</button>
			</div>
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

	//주소검색
	$("#address-button").click(function(){
		new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
				$("#add1").val(fullAddr);
                
                // 커서를 상세주소 필드로 이동한다.
				$("#add2").focus();
            }
	    }).open({
	    	q : $("#addSearch").val(),
	    	popupName : 'postcodePopup'
	    });	
	});
	
	//사진변경
	$(".Profile-upload").click(function () {
        $('#inputProfileImage').click();
    });

});
</script>
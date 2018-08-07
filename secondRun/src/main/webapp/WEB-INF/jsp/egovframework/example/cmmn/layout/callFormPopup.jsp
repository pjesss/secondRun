<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<style>
/*연락처 보기*/
.call-form-popup {
  position: absolute;
  z-index: 99;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  padding: 200px 25px 0;
  background: rgba(224, 224, 224, 0.6);
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
  visibility: hidden;
  opacity: 0;
}
.call-form-popup.visible {
  visibility: visible;
  opacity: 1;
}
.call-form-popup.visible .call-form {
  opacity: 1;
  -webkit-transform: translateY(0);
  -moz-transform: translateY(0);
  -ms-transform: translateY(0);
  -o-transform: translateY(0);
  transform: translateY(0);
}
.call-form-popup .call-form {
  position: relative;
  -webkit-transform: translateY(-100px);
  -moz-transform: translateY(-100px);
  -ms-transform: translateY(-100px);
  -o-transform: translateY(-100px);
  transform: translateY(-100px);
  opacity: 0.6;
  padding: 25px 20px 35px;
  display: block;
  margin: 0 auto;
  background: #fff;
  max-width: 400px;
  -webkit-box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.13);
  box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.13);
  -webkit-transition: all 0.35s cubic-bezier(0.25, 0.35, 0, 1.74);
  -moz-transition: all 0.35s cubic-bezier(0.25, 0.35, 0, 1.74);
  transition: all 0.35s cubic-bezier(0.25, 0.35, 0, 1.74);
}
.call-form-popup .call-form .brand-wrapper {
  text-align: center;
}
.call-form-popup .call-form form {
  margin: 0 -20px 15px;
  padding: 20px 20px 18px;
  border-bottom: 1px solid #f5f5f5;
}
.call-form-popup .call-form p {
  margin: 0;
  color: #979797;
  font-size: 15px;
  line-height: 1em;
  font-weight: 500;
  text-align: center;
}
.Enquiry-title {
    padding: 6px 0;
    background-color: #ecf0f5;
    font-size: 13px;
    line-height: 1.4em;
}
.modal-body {
    text-align: center;
    padding: 20px 30px 30px 30px;
    position: relative;
    padding: 15px;
}
#contactModal #contactInfo {
    font-size: 14px;
    margin-top: 13px;
}
.modal-body .contact-profile-img {
    width: 90px;
    height: 90px;
    background: no-repeat 50% 50%;
    background-size: cover;
    border-radius: 50%;
    margin: 0 auto;
}
.agent-info-wrap {
    margin-bottom: 20px;
}
.agent-info-wrap table.agent-info {
    width: 314px;
    max-width: 314px;
    margin: 0 auto;
}
.agent-info-wrap table.agent-info td, .agent-info-wrap table.agent-info th {
    padding: 7px 5px;
    border: 1px #d1d1d1 solid;
    font-size: 13px;
}
</style>
<!-- 연락처 보기 -->
<div class="call-form-popup">
	<div class="call-form" id="call-popup">
		<div class="brand-wrapper">
			<img src="img/brand.png" alt="login brand" />
		</div>
		<div class="Enquiry-title">
			<p>
			<span class="text"><span>연락 시 내방에서 보고 연락한다고</span><br><span>말씀하시면 더욱 빠르게 상담 받을 수 있습니다.</span></span>
			</p>
		</div>
		<div class="modal-body">
                  <div class="contact-profile-img" style="background-image: url('img/roomInfo/user.jpg');">
                  </div>
                  <div id="contactInfo">
                   <div>등록인 : abcdefg@naver.com</div>
                   <div id="contactNumber">
                       <span>연락처 :  010-1234-5678</span>
                   </div>
                   <div id="saleNum">[ 매물번호 1222669 ]</div>
               </div>
           </div>
	<div class="agent-info-wrap">
		<table class="agent-info">
			<tbody>
				<tr>
					<th>중개사명</th>
					<td>메트로킹공인중개사사무소</td>
				</tr>
				<tr >
					<th>대표명</th>
					<td>뚤라</td>
				</tr>
				<tr>
					<th>대표번호</th>
					<td>02-123-4567</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
	</div>
</div>
<script>
function callPopup() {
	function scrollTop () {
		$('html, body').animate({
            scrollTop: 0
        }, 800);
	}

	var callLink = $('#call_info'),
		callPopup = $('.call-form-popup'),
		callForm = $('#call-popup')
		
	// Show Login Form
	callLink.on('click', function (e) {
		e.preventDefault();
		
		$('#call-popup').find('#call-form').show();

		scrollTop();

		if ($(window).scrollTop() > 50) {
			setTimeout(function () {
				callPopup.addClass('visible');
			}, 800);
		} else {
			callPopup.addClass('visible');
		}
		return false;
	});

	// Close Popup
	$(document).on('click', function () {
		callPopup.removeClass('visible');
	});
	
	// Stop Propagation
	callForm.on('click', function (e) {
		e.stopPropagation();
	});
	
}
$(document).ready(function() {
	callPopup();
});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<style>
.input-box { border:2px solid #e8e8e8; }
.red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
	color:#fff; padding:12px 15px 13px; border-radius:3px; }
.white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    	
/*신고하기*/
ul{ list-style:none; }

.report-form-popup {
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
.report-form-popup.visible {
  visibility: visible;
  opacity: 1;
}
.report-form-popup.visible .report-form {
  opacity: 1;
  -webkit-transform: translateY(0);
  -moz-transform: translateY(0);
  -ms-transform: translateY(0);
  -o-transform: translateY(0);
  transform: translateY(0);
}
.report-form-popup .report-form {
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
.report-form-popup .report-form .brand-wrapper {
  text-align: center;
}
.report-form-popup .report-form form {
  margin: 0 -20px 15px;
  padding: 20px 20px 18px;
  border-bottom: 1px solid #f5f5f5;
}
.report-form-popup .report-form p {
  margin: 0;
  color: #979797;
  font-size: 15px;
  line-height: 1em;
  font-weight: 500;
  text-align: center;
}
.btn-blue[disabled] {
    border: 1px #dfdfdf solid;
    background-color: #f7f7f7;
    color: #d1d1d1;
    cursor: no-drop;
}
.btn-xl {
    width: 70%;
    height: 60px;
    font-size: 15px;
    line-height: 58px;
}
.btn {
    display: inline-block;
    padding: 0 13px;
    background-image: none;
    margin-bottom: 0;
    font-size: 12px;
    font-weight: 400;
    line-height: 1.53856154;
    text-align: center;
    text-decoration: none;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    transition: all .1s ease;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.btn-blue {
    border: 1px #2074c8 solid;
    background-color: #3b8de0;
    color: #fff;
}

</style>
<!-- 신고하기 -->
<div class="report-form-popup">
	<div class="report-form" id="report-popup">
		<div class="brand-wrapper">
			<img src="img/brand.png" alt="login brand" />
		</div>
		<div class="Enquiry-title">
			<p>
			<span class="text"><span>불법 및 허위 매물 신고하기</span></span>
			</p>
		</div>
		<div class="report-select pure-form user-report-select">
			<h3>
				<span>허위매물 신고 항목</span><strong style="color:red"> (*필수)</strong>
			</h3>
			<ul class="report-list">
				<li class="row-space-2">
					<span>
						<label class="label-checkbox">
							<input type="checkbox" value="1">
								<span>거래가 완료 된 매물</span>
						</label>
					</span>
				</li>
				<li class="row-space-2">
					<span>
						<label class="label-checkbox">
							<input type="checkbox" value="2">
								<span>정보가 다른 매물 (가격 / 사진 / 위치 / 옵션 등)</span>
						</label>
					</span>
				</li>
			</ul>
			<div class="report-msg">
				<textarea class="form-control" placeholder="선택 한 항목에 대한 추가 설명을 입력해 주세요." style="margin-top: 14px;"></textarea>
			</div>
		</div>
		<hr>
		<div class="text-center">
			<button class="white-button btn-xl" style="margin : auto;">
				<span>허위매물 신고하기</span>
			</button>
		</div>
	</div>
</div>
<script>
function reportPopup() {
	function scrollTop () {
		$('html, body').animate({
            scrollTop: 0
        }, 800);
	}

	var reportLink = $('.btn-report'),
		reportPopup = $('.report-form-popup'),
		reportForm = $('#report-popup')
		
	// Show Login Form
	reportLink.on('click', function (e) {
		e.preventDefault();
		
		$('#report-popup').find('#report-form').show();

		scrollTop();

		if ($(window).scrollTop() > 50) {
			setTimeout(function () {
				reportPopup.addClass('visible');
			}, 800);
		} else {
			reportPopup.addClass('visible');
		}
		return false;
	});

	// Close Popup
	$(document).on('click', function () {
		reportPopup.removeClass('visible');
	});
	
	// Stop Propagation
	reportForm.on('click', function (e) {
		e.stopPropagation();
	});
	
}
$(document).ready(function() {
	reportPopup();
});
</script>
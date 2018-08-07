<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!-- Login Form -->
<div class="login-form-popup">
	<div class="login-form" id="login-popup">
		<div class="brand-wrapper">
			<img src="img/brand.png" alt="login brand" />
		</div>

		<form id="login-form">
			<input class="js-input" type="text" placeholder="아이디" />
			<input class="js-input" type="password" placeholder="패스워드" />

			<input type="submit" value="로그인" class="submit-button"/>

			<div class="options">
				<label>
					<input type="checkbox" />
					<span>자동 로그인</span>
				</label>
				<a class="remember-password" href="#">비밀번호 찾기</a>
			</div>
		</form>
		
		<form id="register-form">
			<input class="js-input" type="text" placeholder="이름" />
			<input class="js-input" type="text" placeholder="성" />
			<input class="js-input" type="text" placeholder="아이디" />
			<input class="js-input" type="password" placeholder="비밀번호" />
			<input class="js-input" type="password" placeholder="비밀번호 확인" />

			<input type="submit" value="회원가입" class="submit-button" />
		</form>
		
		<form id="terms-form">
			<div class="dabang-modal-dialog" style="height: 611.987px;">
				<div class="dabang-modal-frame">
					<div class="dabang-modal-content">
						<div class="dabang-modal-header"></div>
						<div class="dabang-modal-body">
							<div id="account" class="Account">
								<h1 class="Account-title">약관동의</h1>
								<div class="Account-body">
									<div class="Agreement">
										<div class="Agreement-terms">
											<h2 class="Agreement-terms__title">
												<span>내방 서비스
													이용약관 동의</span><em>
													(필수)</em>
											</h2>
											<label class="Checkbox Checkbox--chk" style="float: right;"><i
												class="dabang-icon dabang-icon-check" style="color: #d1d1d1;"></i><input
												type="checkbox" id="Agreement1-Btn" class="Checkbox-input" shape="chk" label="동의"
												style="float: right;"><span
												class="Checkbox-label">동의</span></label>
											<iframe
												src="http://localhost:8080/secondRun/terms/term1.html"
												scrolling="yes" width="100%" height="88px" frameborder="0"
												allowtransparency="true" class="Agreement-terms__desc"></iframe>
										</div>
										<div class="Agreement-terms">
											<h2 class="Agreement-terms__title">
												<span>개인정보 수집
													및 이용에 대한 동의</span><em>
													(필수)</em>
											</h2>
											<label class="Checkbox Checkbox--chk" style="float: right;"
												><i
												class="dabang-icon dabang-icon-check" style="color: #d1d1d1;"
												></i><input
												type="checkbox" id="Agreement2-Btn"  class="Checkbox-input" shape="chk" label="동의"
												style="float: right;"
												><span
												class="Checkbox-label"
												>동의</span></label>
											<iframe
												src="http://localhost:8080/secondRun/terms/term2.html"
												scrolling="yes" width="100%" height="88px" frameborder="0"
												allowtransparency="true" class="Agreement-terms__desc"></iframe>
										</div>
										<div class="Agreement-terms">
											<h2 class="Agreement-terms__title">
												<span>위치기반서비스
													이용 동의</span><em data-reactid=".5.1.0.0.1.0.1.0.0:$2.0.1"> (필수)</em>
											</h2>
											<label class="Checkbox Checkbox--chk" style="float: right;">
											<i class="dabang-icon dabang-icon-check" style="color: #d1d1d1;"></i>
											<input	type="checkbox" id="Agreement3-Btn"  class="Checkbox-input" shape="chk" label="동의"
												style="float: right;">
												<span class="Checkbox-label">동의</span></label>
											<iframe
												src="http://localhost:8080/secondRun/terms/term3.html"
												scrolling="yes" width="100%" height="88px" frameborder="0"
												allowtransparency="true" class="Agreement-terms__desc"></iframe>
										</div>
										<div class="Agreement-terms"
											style="margin-top: 17px; text-align: right;">
											<label class="Checkbox Checkbox--chk"><i
												class="dabang-icon dabang-icon-check" style="color: #d1d1d1;"></i><input
												type="checkbox" id="AgreementAll-Btn"  class="Checkbox-input" shape="chk"
												label="모두 동의합니다."><span	class="Checkbox-label">모두
													동의합니다.</span></label>
										</div>
										<div class="Agreement-nav">
											<button
												class="Agreement-nav__btn btn btn-white-gray btn-lg border-radius-large">취소</button>
											<button id="AgreementNext-Btn"
												class="Agreement-nav__btn btn btn-default btn-lg">다음단계</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

		<div class="sign-in-options" id = "login-footer">
			<span>다른 방법으로 로그인</span>
			<a class="facebook" href="my-profile.html">페이스북</a>
			<a class="google" href="my-profile.html">구글</a>
		</div>

		<p class="register-link"><i>계정이 없으세요?</i> <a href="#" class="register-btn">회원가입</a></p>
	</div>
</div>
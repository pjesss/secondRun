<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
function requestPay() {
    var IMP = window.IMP;
    IMP.init('imp40696556'); //가맹점식별코드
    // IMP.request_pay(param, callback) 호출
    IMP.request_pay({ // param
        pg : 'inicis',
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '주문명:결제테스트',
        amount : 1000,
        buyer_email : 'ryan0987@naver.com',
        buyer_name : '테스트',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시',
        buyer_postcode : '123-456'
    }, function (rsp) { // callback
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID: ' + rsp.imp_uid;
            msg += '상점 거래ID: ' + rsp.merchant_uid;
            msg += '결제 금액: ' + rsp.paid_amount;
            msg += '카드 승인번호: ' + rsp.apply_num;
            // jQuery.ajax({
            //     url: "",
            //     method: "POST",
            //     headers: { "Content-Type": "application/json" },
            //     data: {
            //         imp_uid: rsp.imp_uid,
            //         merchant_uid: rsp.merchant_uid
            //     }
            // }).done(function (data) {
            //
            // })
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '오류: ' + rsp.error_msg;
        }
        alert(msg);
    });
}
</script>

					<div>
                        <div class="btn-group btn-group-justified">
                            <a href="#" class="btn btn-primary">전체</a>
                            <a href="#" class="btn btn-default">광고 진행 (2)</a>
                            <a href="#" class="btn btn-default">광고 종료 (0)</a>
                            <a href="#" class="btn btn-default">거래 완료 (1)</a>
                            <a href="#" class="btn btn-default">검수 반려 (0)</a>
                        </div>
                        <div class="well" style="margin-top:20px;">
                            추천 매물로 등록된 매물은 필터 조건에 따라 최상위로 노출되며, 무제한 등록이 가능합니다.
                        </div>
                        <div class="row col-md-12" style="margin-bottom:10px;">
                            <div class="pull-left input-group col-md-3">
                                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                                <input type="text" class="form-control" placeholder="매물 번호 / 제목 / 메모">
                            </div>
                        </div>
                        <div>
                            <h3 class="title" style="float:left;">광고 등록 개수 : 2/30</h3>
                            <div style="float:right; margin:0px;">
                                <span style="font-weight:bold;">30일 상품 </span>사용 중 (총 잔여 시간 : 26일 17시간 52분 19초)
                                <a class="white-button" data-toggle="modal" data-target="#payModal">상품 결제하기</a>
                            </div>
                        </div>
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <td class="col-md-2" style="position: relative; text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        <div style="position:absolute; top:0px; left:0px; background-color:#dcdcdc; width:80%; height:20%; font-weight:bold;">
                                            광고 종료 (D-25)
                                        </div>
                                        <div>3552526</div>
                                    </td>
                                    <td style="vertical-align:middle; border-right:1px solid #dddddd;">
                                        <div style="display:flex; align-items:center;">
                                            <div style="float:left;">
                                                <img src="img/room_images/room1.png">
                                            </div>
                                            <div style="float:left;">
                                                <span style="font-weight:bold;">투룸 전세 1억 3000</span><br>
                                                서울특별시 동작구 상도동 356-99<br>
                                                ♥♥개인 테라스 있는 1.5룸 꿈에...
                                            </div>
                                        </div>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        <textarea style="resize:none;" rows="4" placeholder="메모는 등록자만 볼 수 있으며 외부에는 노출되지 않습니다."></textarea>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        <div style="margin-bottom:10px;">
                                            ★ 추천 매물 등록
                                        </div>
                                        <div style="margin-bottom:10px;">
                                            2018-02-12 | 조회수 337 | 찜 7
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default">수정</button>
                                            <button type="button" class="btn btn-default">삭제</button>
                                            <button type="button" class="btn btn-default">광고 종료</button>
                                            <button type="button" class="btn btn-default">거래 완료</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-md-2" style="position: relative; text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        <div style="position:absolute; top:0px; left:0px; background-color:#dcdcdc; width:80%; height:20%;">
                                            <span style="font-weight:bold;">광고 종료 (D-23)</span>
                                        </div>
                                        <div>3547971</div>
                                    </td>
                                    <td style="vertical-align:middle; border-right:1px solid #dddddd;">
                                        <div style="display:flex; align-items:center;">
                                            <div style="float:left;">
                                                <img src="img/room_images/room2.png">
                                            </div>
                                            <div style="float:left;">
                                                <span style="font-weight:bold;">투룸 전세 2억 2500</span><br>
                                                서울특별시 동작구 상도동 356-99<br>
                                                ♥테라스 있는 신대방 삼거리 초역...
                                            </div>
                                        </div>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        <textarea style="resize:none;" rows="4" placeholder="메모는 등록자만 볼 수 있으며 외부에는 노출되지 않습니다."></textarea>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        <div style="margin-bottom:10px;">
                                            ★ 추천 매물 등록
                                        </div>
                                        <div style="margin-bottom:10px;">
                                            2018-02-10 | 조회수 42 | 찜 2
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default">수정</button>
                                            <button type="button" class="btn btn-default">삭제</button>
                                            <button type="button" class="btn btn-default">광고 종료</button>
                                            <button type="button" class="btn btn-default">거래 완료</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-md-2" style="text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        3547719
                                    </td>
                                    <td style="vertical-align:middle; border-right:1px solid #dddddd;">
                                        <div style="display:flex; align-items:center;">
                                            <div style="float:left;">
                                                <img src="img/room_images/room3.png">
                                            </div>
                                            <div style="float:left;">
                                                <span style="font-weight:bold;">원룸 월세 200/37</span><br>
                                                서울특별시 동작구 상도동 313-9<br>
                                                #1.5룸#7호선#신대방삼거리역#...
                                            </div>
                                        </div>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle; border-right:1px solid #dddddd;">
                                        <textarea style="resize:none;" rows="4" placeholder="메모는 등록자만 볼 수 있으며 외부에는 노출되지 않습니다."></textarea>
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        <div style="margin-bottom:10px;">
                                            2018-02-09 | 조회수 89 | 찜 2
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default">삭제</button>
                                            <button type="button" class="btn btn-default">광고 재등록</button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="pull-right">
                            <a class="red-button" href="roomRegistration.do">매물 등록</a>
                        </div>
                        <!-- 페이징 -->
                        <div class="text-center">
                            <ul class="pagination">
                                <li><a href="#"><<</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">>></a></li>
                            </ul>
                        </div>
                        <div id="payModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">상품 결제</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="well" style="margin-top:10px;">
                                            현재 <span style="font-weight:bold;">30일 상품 </span>사용 중입니다.
                                            (총 잔여 시간 : 26일 17시간 52분 19초)<br>
                                            추가 결제 시 잔여 시간이 늘어납니다.
                                        </div>
                                        <div class="radio">
											<label>
                                                <input type="radio" id="pay90" name="radio" value="pay90" checked="checked">
                                                90일 상품 (￦1,300,000)
                                            </label>
										</div>
										<div class="radio">
											<label>
                                                <input type="radio" id="pay60" name="radio" value="pay60">
                                                60일 상품 (￦900,000)
                                            </label>
										</div>
                                        <div class="radio">
											<label>
                                                <input type="radio" id="pay30" name="radio" value="pay30">
                                                30일 상품 (￦500,000)
                                            </label>
										</div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                        <button class="btn btn-primary" type="submit" data-dismiss="modal" onclick="requestPay()">결제</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
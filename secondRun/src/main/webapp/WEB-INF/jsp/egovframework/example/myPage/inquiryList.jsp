<%@ page language="java" contentType="text/html; charset=UTF-8" %>

                        <div class="row col-md-24">
                            <h3 class="title" style="float:left;">내 1:1 문의 내역</h3>
                            <a class="white-button" style="float:right; margin:0px;">문의 하기</a>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                    	<th class="col-md-2" style="text-align:center;">선택</th>
                                        <th class="col-md-16" style="text-align:center;">제목</th>
                                        <th class="col-md-4" style="text-align:center;">날짜</th>
                                        <th class="col-md-4" style="text-align:center;">답변 여부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    	<td style="text-align:center;"><input type="checkbox"></td>
                                        <td><a href="inquiryRead.do">삭제한 쪽지를 복구할 수 있을까요? (클릭 시 상세 페이지로 이동)</a></td>
                                        <td style="text-align:center;">2018-03-01</td>
                                        <td style="text-align:center;">답변 완료</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- 선택 삭제 버튼 -->
                            <div class="pull-left">
                                <button class="red-button" type="submit"
                                id="deleteReceivedMessage" name="deleteReceivedMessage">선택 삭제</button>
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
                        </div>
	                    <!-- 하단 간격 조정용 br 영역 -->
				        <div class="row col-md-24">
				            <br><br><br><br><br>
				        </div>
                        <div class="row col-md-24">
                            <h3 class="title" style="float:left;">내 Q&A 문의 내역</h3>
                            <a class="white-button" style="float:right; margin:0px;">문의 하기</a>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                    	<th class="col-md-2" style="text-align:center;">선택</th>
                                        <th class="col-md-16" style="text-align:center;">제목</th>
                                        <th class="col-md-4" style="text-align:center;">날짜</th>
                                        <th class="col-md-4" style="text-align:center;">답변 여부</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                    	<td style="text-align:center;"><input type="checkbox"></td>
                                        <td>작년에 진행된 이벤트 관련해서 문의 사항이 있습니다.</td>
                                        <td style="text-align:center;">2018-03-01</td>
                                        <td style="text-align:center;">미답변</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- 선택 삭제 버튼 -->
                            <div class="pull-left">
                                <button class="red-button" type="submit"
                                id="deleteReceivedMessage" name="deleteReceivedMessage">선택 삭제</button>
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
                        </div>
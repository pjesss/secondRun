<%@ page language="java" contentType="text/html; charset=UTF-8" %>
                        <!-- 탭 메뉴 -->
                        <ul class="nav nav-tabs">
    					  <li class="active" style="font-size:12px;"><a href="#receivedMessage" data-toggle="tab">받은 쪽지함</a></li>
    					  <li style="font-size:12px;"><a href="#sentMessage" data-toggle="tab">보낸 쪽지함</a></li>
    					</ul>
    					<div class="tab-content">
                            <!-- 받은 쪽지함 시작 -->
    					    <div class="tab-pane fade active in" id="receivedMessage">
                                <br>
                                <h3 class="title" style="float:left;">새로운 쪽지 0 | 전체 쪽지 3</h3>
                                <a class="white-button" style="float:right; margin:0px;"
                                data-toggle="modal" data-target="#messageModal">쪽지 쓰기</a>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="col-md-2" style="text-align:center;">선택</th>
                                            <th class="col-md-12" style="text-align:center;">내용</th>
                                            <th style="text-align:center;">보낸 사람</th>
                                            <th class="col-md-4" style="text-align:center;">보낸 날짜</th>
                                            <th class="col-md-4" style="text-align:center;">답장</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="text-align:center;"><input type="checkbox"></td>
                                            <td data-toggle="collapse" data-target="#receivedMessage1">Re: 안녕하세요, 집을 보러 가고 싶은데...(클릭 시 펼침)</td>
                                            <td style="text-align:center;">홍길동</td>
                                            <td style="text-align:center;">18-03-16 17:25:38</td>
                                            <td style="text-align:center;"><a class="white-button"
                                            data-toggle="modal" data-target="#messageModal">답장하기</a></td>
                                        </tr>
                                        <tr class="collapse" id="receivedMessage1">
                                            <td></td>
                                            <td colspan="3">
                                                <p><span>7시 이후로 가능합니다~ 도착 전에 전화 주세요 ^^</span></p>
                                            </td>
                                            <td></td>
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
                            <!-- 받은 쪽지함 끝 -->
                            <!-- 보낸 쪽지함 시작 -->
                            <div class="tab-pane fade" id="sentMessage">
                                <br>
                                <h3 class="title" style="float:left;">전체 쪽지 3</h3>
                                <a class="white-button" style="float:right; margin:0px;"
                                data-toggle="modal" data-target="#messageModal">쪽지 쓰기</a>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="col-md-2" style="text-align:center;">선택</th>
                                            <th class="col-md-12" style="text-align:center;">내용</th>
                                            <th style="text-align:center;">받는 사람</th>
                                            <th class="col-md-4" style="text-align:center;">보낸 날짜</th>
                                            <th class="col-md-4" style="text-align:center;">수신 확인</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="text-align:center;"><input type="checkbox"></td>
                                            <td data-toggle="collapse" data-target="#sentMessage1">안녕하세요, 집을 보러 가고 싶은데...</td>
                                            <td style="text-align:center;">김철수</td>
                                            <td style="text-align:center;">18-03-16 17:25:38</td>
                                            <td style="text-align:center;">18-03-16 17:25:38</td>
                                        </tr>
                                        <tr class="collapse" id="sentMessage1">
                                            <td></td>
                                            <td colspan="3">
                                                <p><span>내일 저녁 언제 시간 되시나요??</span></p>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- 선택 삭제 버튼 -->
                                <div class="pull-left">
                                    <button class="red-button" type="submit"
                                    id="deleteSentMessage" name="deleteSentMessage">선택 삭제</button>
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
                            <!-- 보낸 쪽지함 끝 -->
                            <!-- Modal -->
                            <div class="modal fade" role="dialog" id="messageModal">
                                <div class="modal-dialog">
                                <!-- Modal content-->
                                	<form role="form">
	                                    <div class="modal-content">
	                                        <div class="modal-header">
	                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
	                                            <h4 class="modal-title">쪽지 쓰기</h4>
	                                        </div>
	                                        <div class="modal-body">
												<input type="hidden" id="postTitle" name="postTitle" value="">
												<div class="form-group">
													<textarea class="form-control input-box" style="resize:none;" rows="5"></textarea>
												</div>
	                                        </div>
	                                        <div class="modal-footer">
	                                            <button class="red-button" data-dismiss="modal" type="submit">보내기</button>
	                                        </div>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
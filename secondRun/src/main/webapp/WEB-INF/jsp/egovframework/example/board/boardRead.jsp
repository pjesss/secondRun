<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	a { color: black; }
    a:hover { color: black; text-decoration:none; }
    .input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
</style>

    <div class="container" style="padding-top:150px;">

        <!-- 페이지 제목 -->
        <br><h3 class="text-center">게시글 상세 페이지</h3><br><br>

        <!-- 게시글 내용 시작 -->
        <div class="row col-md-24">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="pull-right text-right" style="display:block;">
                        <!-- 작성한 날짜/시간 -->
						<p><span style="padding-right:7px;">작성일</span>
                        <!-- 댓글 수 -->
						<i class="fa fa-comment" style="padding-right:4px;"></i><span style="padding-right:7px;">5</span>
                        <!-- 조회 수 -->
						<i class="fa fa-eye" style="padding-right:4px;"></i><span style="padding-right:7px;">110</span></p>
					</div>
                    <!-- 제목 -->
                    <h3 class="panel-title">이번 달 말에 이사갈 생각인데요</h3>
                </div>
                <!-- 본문 -->
                <div class="panel-body">
                    <p>아직 주인한테 말못했어요<br>말하면 집내놓을테고 <br>보러올텐데... ㅠㅠ<br>이번주안으로는 말해야는거죠? <br>집 알아보려니 막막함<br>부동산돌아 다녀야 할까요?<br>아님 어플보고 연락해보고 가는게 나을까요?<br>그리고 대출 조금 받으려는데 지금받아놔야하나요?<br>조언좀 주세요<br>이사는 다녀봤지만 갈때마다 멍하고<br>막막하네요 ㅠ</p>
                    <!-- 경계선 -->
                    <hr>
                    <!-- 작성자 정보 -->
                    <div class="text-right">
                        <img src="img/profile_images/51.png" class="img-circle" width="50" height="50" style="margin-bottom:5px;">
                        <h4 class="media-heading">User0</h4>
                    </div>
                </div>
            </div>
        </div>
        <!-- 게시글 내용 끝 -->

        <!-- 이전 글/다음 글 버튼 -->
        <div class="row col-md-24">
            <a class="white-button pull-right" style="margin-bottom:30px;">이전 글 <i class="fa fa-arrow-right"></i></a>
            <a class="white-button pull-left" style="margin-bottom:30px;"><i class="fa fa-arrow-left"></i> 다음 글</a>
        </div>

        <!-- 등록된 댓글 시작 -->
        <div class="row col-md-24">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">답변 5개</h3>
                </div>
                <div class="panel-body">

                    <!-- 1번 댓글 시작 -->
                    <div class="media" style="padding-left:10px;">
                        <div class="pull-left">
                            <img src="img/profile_images/52.png" class="img-circle" width="50" height="50">
                        </div>
                        <div class="media-body">
                            <!-- 1번 댓글 본문 -->
                            <div class="col-md-24" id="reply1">
                                <div style="float:right;">
    								<a style="cursor:pointer;"
                                    onclick="getElementById('reply1').style.display='none';
                                    getElementById('replyEdit1').style.display='block';">
    								<i class="fa fa-edit" style="padding-left:8px;"></i>&nbsp;수정</a>&nbsp;/&nbsp;
    								<a style="cursor:pointer;"
                                    onclick="return confirm('정말 삭제하시겠습니까?')" >
    								<i class="fa fa-trash"></i>&nbsp;삭제</a>
    							</div>
                                <h4 class="media-heading">User1 <small><i>작성일</i></small></h4>
                                <p><span>계약일자 전에 나가는 거는 중도퇴실이라 세입자 구하고 나가야될거에요. 최소 한달 전에 집주인에게 말하는게 좋고 말하고 3개월이 지나야 퇴실 해도 보증금 받을 권리가 있다고 들은것 같아요. 근처 부동산에 집 내놓는다고 말하거나 처음에 부동산 통 하셨다면 그곳에 말해도 될거에요. 전세자금 받으려고 하실거면 미리 은행에 가셔서 대출이 가능한지 알아보신다음에 부동산가셔서 좋은 방을 고르시고 계약금 입금하시는게 좋아요. 전세자금대출이 가능한줄 알고 계약금 부터 걸면 나중에 대출이 안될경우 계약금을 돌려 받을 수 없을 수 도 있거든요. 전세대출이 불가 시 계약금을 돌려주는 조건으로 계약서에 특약조건을 넣을수 없으면 섣부르게 계약금 넣지 마시고 젤먼저 대출이 가능한지 알아보세요. 그럼 좋은 곳으로 이사 잘 되시길 바래요,</span></p>
                                <a style="text-decoration:underline; cursor:pointer;"
                                onclick="getElementById('replyToReply1').style.display='block';">답변하기</a>
                            </div>
                            <!-- 1번 댓글 수정창 -->
                            <div class="col-md-24" style="display:none; margin-bottom:15px;" id="replyEdit1">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent">내용</textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button"
                                        onclick="getElementById('reply1').style.display='block';
                                        getElementById('replyEdit1').style.display='none';">취소&nbsp;&nbsp;&nbsp;</a>
                                        <button class="red-button" type="submit">수정</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 1번 댓글의 대댓글 등록창 -->
                            <div class="col-md-24" style="display:none; margin-top:15px; margin-bottom:15px;" id="replyToReply1">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent"></textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button" onclick="getElementById('replyToReply1').style.display='none';">취소&nbsp;&nbsp;&nbsp;</a>
                                        <button class="red-button" type="submit">등록</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 1번 댓글 끝 -->

                    <!-- 2번 댓글 시작 -->
                    <div class="media" style="padding-left:80px;">
                        <div class="pull-left">
                            <img src="img/profile_images/51.png" class="img-circle" width="50" height="50">
                        </div>
                        <div class="media-body">
                            <!-- 2번 댓글 본문 -->
                            <div class="col-md-24" id="reply2">
                                <div style="float:right;">
    								<a style="cursor:pointer;"
                                    onclick="getElementById('reply2').style.display='none';
                                    getElementById('replyEdit2').style.display='block';">
    								<i class="fa fa-edit" style="padding-left:8px;"></i>&nbsp;수정</a>&nbsp;/&nbsp;
    								<a style="cursor:pointer;"
                                    onclick="return confirm('정말 삭제하시겠습니까?')" >
    								<i class="fa fa-trash"></i>&nbsp;삭제</a>
    							</div>
                                <h4 class="media-heading">User0 <small><i>작성일</i></small></h4>
                                <p><span>4월 10일정도 만기라 근데 제가 3월말에 가고싶고 그때시간이 될거같아서요 그래도 제가집내놔야하는건가요??</span></p>
                                <a style="text-decoration:underline; cursor:pointer;"
                                onclick="getElementById('replyToReply2').style.display='block';">답변하기</a>
                            </div>
                            <!-- 2번 댓글 수정창 -->
                            <div class="col-md-24" style="display:none; margin-bottom:15px;" id="replyEdit2">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent">내용</textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button"
                                        onclick="getElementById('reply2').style.display='block';
                                        getElementById('replyEdit2').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">수정</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 2번 댓글의 대댓글 등록창 -->
                            <div class="col-md-24" style="display:none; margin-top:15px; margin-bottom:15px;" id="replyToReply2">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent"></textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button" onclick="getElementById('replyToReply2').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">등록</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 2번 댓글 끝 -->

                    <!-- 3번 댓글 시작 -->
                    <div class="media" style="padding-left:150px;">
                        <div class="pull-left">
                            <img src="img/profile_images/52.png" class="img-circle" width="50" height="50">
                        </div>
                        <div class="media-body">
                            <!-- 3번 댓글 본문 -->
                            <div class="col-md-24" id="reply3">
                                <div style="float:right;">
                                    <a style="cursor:pointer;"
                                    onclick="getElementById('reply3').style.display='none';
                                    getElementById('replyEdit3').style.display='block';">
                                    <i class="fa fa-edit" style="padding-left:8px;"></i>&nbsp;수정</a>&nbsp;/&nbsp;
                                    <a style="cursor:pointer;"
                                    onclick="return confirm('정말 삭제하시겠습니까?')" >
                                    <i class="fa fa-trash"></i>&nbsp;삭제</a>
                                </div>
                                <h4 class="media-heading">User1 <small><i>작성일</i></small></h4>
                                <p><span>계약연장 안 할거라고 얘기하셨으면 집주인이 집을 내놓는게 맞아요. 글쓴이님이 내놓으실필요는없으시고 세입자가 바로구해지면 3월말에 서로 잔금 이사날짜 조율해서 가시면될것같아요</span></p>
                                <a style="text-decoration:underline; cursor:pointer;"
                                onclick="getElementById('replyToReply3').style.display='block';">답변하기</a>
                            </div>
                            <!-- 3번 댓글 수정창 -->
                            <div class="col-md-24" style="display:none; margin-bottom:15px;" id="replyEdit3">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent">내용</textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button"
                                        onclick="getElementById('reply3').style.display='block';
                                        getElementById('replyEdit3').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">수정</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 3번 댓글의 대댓글 등록창 -->
                            <div class="col-md-24" style="display:none; margin-top:15px; margin-bottom:15px;" id="replyToReply3">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent"></textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button" onclick="getElementById('replyToReply3').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">등록</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 3번 댓글 끝 -->

                    <!-- 4번 댓글 시작 -->
                    <div class="media" style="padding-left:80px;">
                        <div class="pull-left">
                            <img src="img/profile_images/54.png" class="img-circle" width="50" height="50">
                        </div>
                        <div class="media-body">
                            <!-- 4번 댓글 본문 -->
                            <div class="col-md-24" id="reply4">
                                <div style="float:right;">
                                    <a style="cursor:pointer;"
                                    onclick="getElementById('reply4').style.display='none';
                                    getElementById('replyEdit4').style.display='block';">
                                    <i class="fa fa-edit" style="padding-left:8px;"></i>&nbsp;수정</a>&nbsp;/&nbsp;
                                    <a style="cursor:pointer;"
                                    onclick="return confirm('정말 삭제하시겠습니까?')" >
                                    <i class="fa fa-trash"></i>&nbsp;삭제</a>
                                </div>
                                <h4 class="media-heading">User2 <small><i>작성일</i></small></h4>
                                <p><span>만기퇴실시 1달전에 임대인에게 통보해야합니다<br>그렇지 않을시엔 묵시적자동갱신으로 3개월후에 해지의 효력이 발생합니다~</span></p>
                                <a style="text-decoration:underline; cursor:pointer;"
                                onclick="getElementById('replyToReply4').style.display='block';">답변하기</a>
                            </div>
                            <!-- 4번 댓글 수정창 -->
                            <div class="col-md-24" style="display:none; margin-bottom:15px;" id="replyEdit4">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent">내용</textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button"
                                        onclick="getElementById('reply4').style.display='block';
                                        getElementById('replyEdit4').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">수정</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 4번 댓글의 대댓글 등록창 -->
                            <div class="col-md-24" style="display:none; margin-top:15px; margin-bottom:15px;" id="replyToReply4">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent"></textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button" onclick="getElementById('replyToReply4').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">등록</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 4번 댓글 끝 -->

                    <!-- 5번 댓글 시작 -->
                    <div class="media" style="padding-left:10px;">
                        <div class="pull-left">
                            <img src="img/profile_images/55.png" class="img-circle" width="50" height="50">
                        </div>
                        <div class="media-body">
                            <!-- 5번 댓글 본문 -->
                            <div class="col-md-24" id="reply5">
                                <div style="float:right;">
                                    <a style="cursor:pointer;"
                                    onclick="getElementById('reply5').style.display='none';
                                    getElementById('replyEdit5').style.display='block';">
                                    <i class="fa fa-edit" style="padding-left:8px;"></i>&nbsp;수정</a>&nbsp;/&nbsp;
                                    <a style="cursor:pointer;"
                                    onclick="return confirm('정말 삭제하시겠습니까?')" >
                                    <i class="fa fa-trash"></i>&nbsp;삭제</a>
                                </div>
                                <h4 class="media-heading">User3 <small><i>작성일</i></small></h4>
                                <p><span>집주인한테 빨리 말하셔야죠 이번달말이면 더더욱 말해야 하지 않을까요?  그리고 계약 10일정도 전 퇴실이면 계약만료전 퇴실이라 어찌됐든 복비 내놓으라 할수도 있고 계약만료 인 사월에 나가는거라도 우선 연락하셔서 나간다고 지금이라도 말씀은 하셔야 집주인도 다음 세입자 구하고 집 내놓을듯해요</span></p>
                                <a style="text-decoration:underline; cursor:pointer;"
                                onclick="getElementById('replyToReply5').style.display='block';">답변하기</a>
                            </div>
                            <!-- 5번 댓글 수정창 -->
                            <div class="col-md-24" style="display:none; margin-bottom:15px;" id="replyEdit5">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent">내용</textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button"
                                        onclick="getElementById('reply5').style.display='block';
                                        getElementById('replyEdit5').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">수정</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 5번 댓글의 대댓글 등록창 -->
                            <div class="col-md-24" style="display:none; margin-top:15px; margin-bottom:15px;" id="replyToReply5">
                                <form role="form">
                                    <input type="hidden" id="postTitle" name="postTitle" value="">
                                    <div class="form-group">
                                        <textarea class="form-control input-box" style="resize:none;" rows="5"
                                        id="replyContent" name="replyContent"></textarea>
                                    </div>
                                    <div class="pull-right">
                                        <a class="white-button" onclick="getElementById('replyToReply5').style.display='none';">취소</a>
                                        <button class="red-button" type="submit">등록</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- 5번 댓글 끝 -->

                </div>
            </div>
        </div>
        <!-- 등록된 댓글 끝 -->

        <!-- 게시판 목록으로 돌아가기 버튼 -->
        <div class="row col-md-24">
            <a href="boardList.do"><button class="white-button pull-right">목록 보기</button></a>
        </div>

        <!-- 새 댓글 등록 영역 -->
        <div class="row col-md-24">
            <!-- 간격 조정용 빈 영역 -->
			<div class="col-md-6"></div>
            <!-- 댓글 입력 폼 -->
			<div class="col-md-12">
				<form role="form">
					<input type="hidden" id="postTitle" name="postTitle" value="">
					<div class="form-group">
						<label class="control-label" for="replyContent">
							<h5>현재 로그인한 사용자 ID</h5>
						</label>
                        <!-- 댓글 입력창 -->
						<textarea class="form-control input-box" style="resize:none;" rows="5" id="replyContent" name="replyContent"></textarea>
					</div>
                    <!-- 댓글 등록 버튼 -->
					<button class="white-button pull-right" type="submit">등록</button>
				</form>
            </div>
		</div>

        <!-- 하단 간격 조정용 br 영역 -->
        <div class="row col-md-24">
            <br><br><br><br><br>
        </div>

    </div>
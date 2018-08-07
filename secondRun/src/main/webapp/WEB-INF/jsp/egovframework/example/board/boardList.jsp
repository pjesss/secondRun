<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .badge-category { width:9px; height:9px; margin-right:5px; display:inline-block; }
    .input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
    #scrollToTop { display:none; position:fixed; bottom:20px; right:30px; z-index:99;
        border:none; outline:none; background-color:red; color:white; cursor:pointer;
        padding:10px; border-radius:0px; font-size:16px; }
    #scrollToTop:hover { background-color:#555; }
</style>

<script>
// 20px 이상 스크롤이 내려가면 scrollToTop 버튼 표시
window.onscroll = function() { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("scrollToTop").style.display = "block";
    } else {
        document.getElementById("scrollToTop").style.display = "none";
    }
}

// scroll To Top
function topFunction() {
    document.body.scrollTop = 0; // 사파리
    document.documentElement.scrollTop = 0; // 크롬, 파이어폭스, IE, 오페라
}

$(document).ready(function() {
    // 결과 내 검색 (필터)
    $("#inputFilter").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#tableBody tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
    // 게시글 더 보기
    $("#btnMore").click(function() {
        $(this).text("불러오는 중...");
        $(this).delay(1000).queue(function() {
            var list = $("#tableBody").html();
            $(list).appendTo("#table"); //게시글 붙이기
            $(this).text("더 보기");
            $(this).dequeue();
        });

        // ajax 코드 (현재 사용 안 함)
        // $.ajax({
        //     url : "url",
        //     type : "POST",
        //     cache : false,
        //     dataType: 'json',
        //     data : ,
        //     success : function(data) {
        //         //console.log(data);
        //         var list="";
        //
        //         $(list).appendTo("#table");
        //     },
        //     error : function(request, status, error){
        //         alert("code: " + request.status + "\n" +
        //         "message: " + request.responseText + "\n" + "error: " + error);
        //     }
        // });
    });
});
</script>

<div class="container" style="padding-top:150px;">

    <!-- 페이지 제목 -->
    <div class="section-header">
    	<h1>자유 게시판</h1>
    </div>

    <!-- 상단 메뉴 영역 -->
    <div class="row col-md-24" style="margin-bottom:20px;">
        <!-- 검색 폼 -->
        <div class="pull-left">
            <form role="search" method="post">
                <!-- 카테고리 선택창 -->
                <select class="input-sm" id="selectSearchOption" name="selectSearchOption">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="writer">작성자</option>
                </select>
                <!-- 검색어 입력창 -->
                <input class="input-sm input-box" type="text" id="inputSearch" name="inputSearch">
                <!-- 검색 버튼 -->
                <button class="white-button" type="submit">
                    <i class="fa fa-search"></i> 검색</button>
                <!-- 결과 내 검색창 -->
                <input class="input-sm input-box" type="text" id="inputFilter" placeholder="결과 내 재검색">
            </form>
        </div>
        <!-- 글쓰기 버튼 -->
        <div class="pull-right">
            <a href="boardWrite.do"><button class="white-button">글쓰기</button></a>
        </div>
    </div>

    <!-- 게시글 목록 시작 -->
    <div class="row col-md-24">
        <table class="table table-hover" id="table">
            <thead>
                <tr>
                    <th class="col-md-18">Topic</th>
                    <th class="text-center">Category</th>
                    <th class="col-md-4 text-center">Users</th>
                    <th class="text-center">Repiles</th>
                    <th class="text-center">Views</th>
                    <th class="text-center">Activity</th>
                </tr>
            </thead>
            <tbody id="tableBody">
                <tr>
                    <td><a href="boardRead.do">이번 달 말에 이사갈 생각인데요</a></td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/16.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/2.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/10.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/12.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">5</td>
                    <td class="text-center">110</td>
                    <td class="text-center">8m</td>
                </tr>
                <tr>
                    <td>월급은 통장을 스칠 뿐... 월세가 너무 비쌉니다 ㅜㅜ</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #e9dd00;"></span>월세</td>
                    <td class="text-center">
                        <img src="img/profile_images/6.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/7.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/8.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">21</td>
                    <td class="text-center">1.4k</td>
                    <td class="text-center">23m</td>
                </tr>
                <tr>
                    <td>제 인생에 내 집 장만은 없을 줄 알았는데, 좋은 기회에 매매를 하게 되었네요 ^^</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #0E76BD;"></span>매매</td>
                    <td class="text-center">
                        <img src="img/profile_images/9.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/10.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/11.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/12.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/13.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">15</td>
                    <td class="text-center">21.2k</td>
                    <td class="text-center">1h</td>
                </tr>
                <tr>
                    <td>월세에서 전세로!</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #12A89D;"></span>전세</td>
                    <td class="text-center">
                        <img src="img/profile_images/3.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/14.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">2</td>
                    <td class="text-center">1.1k</td>
                    <td class="text-center">2h</td>
                </tr>
                <tr>
                    <td>오피스텔은 원래 이렇게 춥나요? ㄷㄷ 얼음왕국 수준이네요.</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/7.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/15.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/6.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/9.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">7</td>
                    <td class="text-center">2.8k</td>
                    <td class="text-center">4h</td>
                </tr>
                <tr>
                    <td>판교로 출퇴근하려면 어떤 지역이 좋을까요?</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/16.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">1</td>
                    <td class="text-center">12</td>
                    <td class="text-center">4h</td>
                </tr>
                <tr>
                    <td>논현 투룸에 이정도 월세면 적당한 건지...</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #e9dd00;"></span>월세</td>
                    <td class="text-center">
                        <img src="img/profile_images/11.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/3.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/7.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/17.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/8.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">11</td>
                    <td class="text-center">580</td>
                    <td class="text-center">15h</td>
                </tr>
                <tr>
                    <td>이쁜 전세집 매물 내놨습니다. 많이 보러 오세요!</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #12A89D;"></span>전세</td>
                    <td class="text-center">
                        <img src="img/profile_images/2.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/6.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/18.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/19.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/20.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">14</td>
                    <td class="text-center">15.2k</td>
                    <td class="text-center">1d</td>
                </tr>
                <tr>
                    <td>내 집 장만의 기회! 놓치면 후회합니다 ^^</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #0E76BD;"></span>매매</td>
                    <td class="text-center">
                        <img src="img/profile_images/21.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/22.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/23.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">5</td>
                    <td class="text-center">305</td>
                    <td class="text-center">2d</td>
                </tr>
                <tr>
                    <td>이런 경우 보증금에서 까이는 게 맞는 건가요?</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/24.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/25.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/26.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/27.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/28.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">17</td>
                    <td class="text-center">7.1k</td>
                    <td class="text-center">5d</td>
                </tr>
                <tr>
                    <td>전세 만기 한달전인데 보증금 질문입니다.</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/29.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/30.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">3</td>
                    <td class="text-center">47</td>
                    <td class="text-center">5d</td>
                </tr>
                <tr>
                    <td>월세 2년 만기 후 연장 계약 예정입니다.</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #e9dd00;"></span>월세</td>
                    <td class="text-center">
                        <img src="img/profile_images/31.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/32.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/34.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/35.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/36.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">7</td>
                    <td class="text-center">87</td>
                    <td class="text-center">6d</td>
                </tr>
                <tr>
                    <td>빌라 (구옥) 매매 생각중입니다.</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #0E76BD;"></span>매매</td>
                    <td class="text-center">
                        <img src="img/profile_images/14.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/37.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/38.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/39.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/40.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">5</td>
                    <td class="text-center">208</td>
                    <td class="text-center">7d</td>
                </tr>
                <tr>
                    <td>반전세로 단기 임대를 했는데 전세금을 못 돌려주겠다네요...</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #12A89D;"></span>전세</td>
                    <td class="text-center">
                        <img src="img/profile_images/28.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/13.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/6.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/7.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/33.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">21</td>
                    <td class="text-center">1.8k</td>
                    <td class="text-center">9d</td>
                </tr>
                <tr>
                    <td>결로 현상이 심할 경우, 계약 해지가 가능할까요?</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/15.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/28.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/35.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/2.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">9</td>
                    <td class="text-center">507</td>
                    <td class="text-center">11d</td>
                </tr>
                <tr>
                    <td>근저당이 거래가액의 50%인 빌라 전세 계약 문의</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/2.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/5.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/25.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">3</td>
                    <td class="text-center">44</td>
                    <td class="text-center">13d</td>
                </tr>
                <tr>
                    <td>이번에 전세로 집 구해서 들어가려 합니다.</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #12A89D;"></span>전세</td>
                    <td class="text-center">
                        <img src="img/profile_images/29.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">1</td>
                    <td class="text-center">21</td>
                    <td class="text-center">15d</td>
                </tr>
                <tr>
                    <td>월세 계약은 다 끝났는데...</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #e9dd00;"></span>월세</td>
                    <td class="text-center">
                        <img src="img/profile_images/33.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/39.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/40.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/2.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">5</td>
                    <td class="text-center">38</td>
                    <td class="text-center">15d</td>
                </tr>
                <tr>
                    <td>계약 만료 전 방을 빼달라해서 방을 빼는데요...</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #F7941D;"></span>질문</td>
                    <td class="text-center">
                        <img src="img/profile_images/13.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/15.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/21.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/17.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">6</td>
                    <td class="text-center">250</td>
                    <td class="text-center">15d</td>
                </tr>
                <tr>
                    <td>월세 직거래시 필요한게 뭔지 알려 주세요!</td>
                    <td class="text-center"><span class="badge-category" style="background-color: #e9dd00;"></span>월세</td>
                    <td class="text-center">
                        <img src="img/profile_images/9.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/29.png" class="img-circle" width="25" height="25">
                        <img src="img/profile_images/39.png" class="img-circle" width="25" height="25">
                    </td>
                    <td class="text-center">3</td>
                    <td class="text-center">30</td>
                    <td class="text-center">17d</td>
                </tr>
            </tbody>
        </table>
        <!-- 경계선 -->
        <hr>
        <!-- 더 보기 버튼 -->
        <div class="text-center">
            <button class="white-button"
            data-loading-text="<i class='fa fa-spinner fa-spin'></i>&nbsp;&nbsp;&nbsp;불러오는 중..."
            id="btnMore">더 보기</button>
        </div>
    </div>
    <!-- 게시글 목록 끝 -->

    <!-- Scroll To Top 버튼 -->
    <button class="btn" onclick="topFunction()" title="Go to top" id="scrollToTop">Top</button>

    <!-- 하단 간격 조정용 br 영역 -->
    <div class="row col-md-24">
        <br><br><br><br><br>
    </div>

</div>

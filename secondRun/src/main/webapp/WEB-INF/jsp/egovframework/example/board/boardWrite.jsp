<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .input-box { border:2px solid #e8e8e8; }
    .red-button { text-align:center; background:#b71c1c; font-size:14px; font-weight:500; 
    	color:#fff; padding:12px 15px 13px; border-radius:3px; }
    .white-button { margin-top:13px; margin-left:4px; margin-right:4px; background:0; color:#ff7272; 
    	font-size:16px; line-height:1em; font-weight:600; text-transform:uppercase; }
</style>

<div class="container" style="padding-top:150px;">

    <!-- 페이지 제목 -->
    <br><h3 class="text-center">글쓰기</h3><br><br>

    <!-- 글 등록 폼 시작 -->
    <div class="row col-md-24">
        <form role="form">

            <!-- 제목 입력창 -->
            <div class="form-group">
                <input class="form-control input-box" type="text" id="postTitle" name="postTitle" value="" placeholder="제목">
            </div>

            <!-- 내용 입력창 -->
            <div class="form-group">
                <textarea class="form-control input-box" style="resize:none;" rows="15" id="postContent" name="postContent" placeholder="내용"></textarea>
                <!-- 첨부된 이미지 썸네일 표시 영역 -->
                <div id="postImages">
                </div>
            </div>

            <!-- 경계선 -->
            <hr>

            <!-- 파일 업로드 -->
            <div class="pull-left col-md-10">
                <div class="row input-group">
                    <button class="red-button" type="button" id="findFile" name="findFile">파일 첨부</button>
                    <input style="display:none;" type="file" id="inputFile" name="inputFile">
                </div>
                <!-- 파일 프리뷰 표시 영역 -->
                <div class="row" id="filePreview">
                </div>
            </div>

            <!-- 취소/글쓰기 버튼 -->
            <div class="pull-right">
                <a class="white-button" href="javascript:history.back(-1)"
                onclick="return confirm('정말 취소하시겠습니까? 내용이 저장되지 않습니다.')">취소&nbsp;&nbsp;&nbsp;</a>
                <button class="red-button" type="submit">글쓰기</button>
            </div>

        </form>
    </div>
    <!-- 글 등록 폼 끝 -->

    <!-- 하단 간격 조정용 br 영역 -->
    <div class="row col-md-24">
        <br><br><br><br><br>
    </div>

</div>

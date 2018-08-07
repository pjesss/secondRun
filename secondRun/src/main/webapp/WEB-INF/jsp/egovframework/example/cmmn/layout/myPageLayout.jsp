<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="header"/>
		<style>
		   	.searchBar {
			  margin: 0 0 20px;
			  /*background: rgba(0, 0, 0, 0.1);*/
			  width: 300px;
			  color: #868686;
			  font-size: 14px;
			  font-weight: 300;
			  border-radius: 5px;
			  padding: 12px 20px;
			  border: 1px solid gray;
			}
			.containers {
			    width: 50%; 
			    margin: 0 auto;
			}
			.containers .rows  {
		      width: 50%;
		      height: 250px;
		      float: left;
		    }
		</style>
		
		<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	</head>
	<body>
		<div id="page">
			<header>
				<tiles:insertAttribute name="nav"/>
				<tiles:insertAttribute name="top"/>
			</header>
			<div class="content-wrapper">
				<div class="container" style="padding-top:150px; width:1500px;">
				    <div class="section-header">
				    	<h1>마이페이지</h1>
				    </div>
				    <div class="row col-md-24">
				    	<div class="col-md-4">
							<tiles:insertAttribute name="myPageSideMenu"/>
						</div>
						<div class="col-md-20">
							<tiles:insertAttribute name="content"/>
						</div>
					</div>
					<!-- 하단 간격 조정용 br 영역 -->
			        <div class="row col-md-24">
			            <br><br><br><br><br>
			        </div>
				</div>
			</div>
			<tiles:insertAttribute name="footer"/>
		</div>
	</body>
</html>
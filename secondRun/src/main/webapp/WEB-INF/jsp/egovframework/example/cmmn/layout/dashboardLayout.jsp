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
				<tiles:insertAttribute name="content"/>
			</div>
			<tiles:insertAttribute name="footer"/>
		</div>
		<tiles:insertAttribute name="loginFormPopup"/>
	</body>
</html>

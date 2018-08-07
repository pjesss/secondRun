<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE html>
<html>
	<head>
	   <tiles:insertAttribute name="header"/>
	</head>
	<body>
		<div id="page">
			<header>
				<tiles:insertAttribute name="nav"/>
				<tiles:insertAttribute name="top"/>
			</header>
			<div class="content-wrapper">
				<section class="user-account-section">
					<tiles:insertAttribute name="content"/>
				</section>
			</div>
		</div>
			<tiles:insertAttribute name="loginFormPopup"/>
	</body>
</html>
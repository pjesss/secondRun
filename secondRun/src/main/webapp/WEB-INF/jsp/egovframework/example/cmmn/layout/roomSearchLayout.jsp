<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
				<tiles:insertAttribute name="content"/>
			</div>
		</div>
			<tiles:insertAttribute name="loginFormPopup"/>
	</body>
</html>

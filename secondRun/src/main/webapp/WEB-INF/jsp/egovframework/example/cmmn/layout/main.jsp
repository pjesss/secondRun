<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!doctype html>
<html lang="en">
	<head>
		<tiles:insertAttribute name="header"/>
	</head>
	<body>
		<tiles:insertAttribute name="loader"/>
		<div id="page">
			<header>
				<tiles:insertAttribute name="nav"/>
				<tiles:insertAttribute name="top"/>
			</header>
			<div class="content-wrapper">
				<tiles:insertAttribute name="loginFormPopup"/>
				<tiles:insertAttribute name="content"/>
			</div>
			<footer>
				<tiles:insertAttribute name="footer"/>
			</footer>
		</div>
	</body>

</html>
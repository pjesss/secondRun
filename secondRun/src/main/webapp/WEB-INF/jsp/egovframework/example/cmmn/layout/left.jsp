<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!-- Sidebar -->
<div class="sidebar">
	<div class="sidebar-dropdown"><a href="#">Navigation</a></div>
	<div class="sidebar-inner">
		<!-- Search form -->
		<div class="sidebar-widget">
			<form >
				<input type="text" class="form-control" placeholder="Search">
			</form>
		</div>
		<!--- Sidebar navigation -->
		<!-- If the main navigation has sub navigation, then add the class "has_submenu" to "li" of main navigation. -->
		<ul class="navi">
			<!-- Use the class nred, ngreen, nblue, nlightblue, nviolet or norange to add background color. You need to use this in <li> tag. -->

			<li class="nred current"><a href="#" onclick="pageNavFn('main', 'main.do')"><i class="fa fa-desktop"></i> Dashboard</a></li>
			<!-- Menu with sub menu -->
			<li class="has_submenu nlightblue">
				<a href="#">
					<!-- Menu name with icon -->
					<i class="fa fa-th"></i> Widgets 
					<!-- Icon for dropdown -->
					<span class="pull-right"><i class="fa fa-angle-right"></i></span>
				</a>
				<ul>
					<li><a href="#" onclick="pageNavFn('widgets1', 'widgets1.jsp')">Widgets #1</a></li>
					<li><a href="#" onclick="pageNavFn('widgets2', 'widgets2.jsp')">Widgets #2</a></li>
				</ul>
			</li>
			<li class="ngreen"><a href="#" onclick="pageNavFn('chart', 'chart.jsp')"><i class="fa fa-bar-chart-o"></i> Charts</a></li>
			<li class="norange"><a href="#" onclick="pageNavFn('ui', 'ui.jsp')"><i class="fa fa-sitemap"></i> UI Elements</a></li>
			<li class="has_submenu nviolet">
				<a href="#">
					<i class="fa fa-file-o"></i> Pages #1
					<span class="pull-right"><i class="fa fa-angle-right"></i></span>
				</a>
				<ul>
					<li><a href="#" onclick="pageNavFn('calendar', 'calendar.jsp')">Calendar</a></li>
					<li><a href="#" onclick="pageNavFn('post', 'post.jsp')">Make Post</a></li>
					<li><a href="#" onclick="pageNavFn('login', 'login.jsp')">Login</a></li>
					<li><a href="#" onclick="pageNavFn('register', 'register.jsp')">Register</a></li>
					<li><a href="#" onclick="pageNavFn('statement', 'statement.jsp')">Statement</a></li>
					<li><a href="#" onclick="pageNavFn('errorLog', 'errorLog.jsp')">Error Log</a></li>
					<li><a href="#" onclick="pageNavFn('support', 'support.jsp')">Support</a></li>
				</ul>
			</li> 
			<li class="has_submenu nblue">
				<a href="#">
					<i class="fa fa-file-o"></i> Pages #2
					<span class="pull-right"><i class="fa fa-angle-right"></i></span>
				</a>
				<ul>
					<li><a href="#" onclick="pageNavFn('error', 'error.jsp')">Error</a></li>
					<li><a href="#" onclick="pageNavFn('gallery', 'gallery.jsp')">Gallery</a></li>
					<li><a href="#" onclick="pageNavFn('grid', 'grid.jsp')">Grid</a></li>
					<li><a href="#" onclick="pageNavFn('invoice', 'invoice.jsp')">Invoice</a></li>
					<li><a href="#" onclick="pageNavFn('media', 'media.jsp')">Media</a></li>
					<li><a href="#" onclick="pageNavFn('profile', 'profile.jsp')">Profile</a></li>
				</ul>
			</li> 
			<li class="nred"><a href="#" onclick="pageNavFn('forms', 'forms.jsp')"><i class="fa fa-list"></i> Forms</a></li>
			<li class="nlightblue"><a href="#" onclick="pageNavFn('tables', 'tables.jsp')"><i class="fa fa-table"></i> Tables</a></li>
		</ul>
		<!--/ Sidebar navigation -->

		<!-- Date -->
		<div class="sidebar-widget">
			<div id="todaydate"></div>
		</div>
	</div>
</div>
<!-- Sidebar ends -->

<script>
	function pageNavFn(page, description) {
		location.href = page + ".do";
	}
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<style>
<
style>body {
	background-color: #333;
	width: 500px;
	margin: 30px auto;
}

.menu-trigger {
	margin-right: 70px;
	margin-bottom: 50px;
}

.menu-trigger, .menu-trigger span {
	display: inline-block;
	transition: all .4s;
	box-sizing: border-box;
}

.menu-trigger {
	position: relative;
	width: 70px;
	height: 20px;
}

.menu-trigger span {
	position: absolute;
	left: 0;
	width: 50%;
	height: 2px;
	background-color: black;
	border-radius: 4px;
}
</style>
</style>
<header>
	<div>
		<div class="wrap">
			<div id="header_box">
				<ul class="flex">
					<li><a href="index.jsp"><img src="img/ooguLogoS.png"
							alt=""></a></li>
					<ul class="m_menu">
						<li class="logo">
							<div class="m-menu">
								<a class="menu-trigger" href="#"> 
								<span class="top"></span>
								<span class="middle"></span> 
								<span class="bottom"></span>
								</a>
								<div class="sidebar" id="sidebar">
									<ul class="menu_box">
										<li><input type="text" size="10" placeholder="search"
											name="search" id="search"></li>
										<li class="join_box"><a href="login.jsp"><p>LOGIN</p></a>
											<a href="joinContract.jsp"><p>JOIN</p></a></li>
										<li><a href="#">ToDo List</a></li>
										<li><a href="#">Calendar</a></li>
										<li><a href="#">Calcurator</a></li>
										<li><a href="#">Board</a></li>
									</ul>
								</div>
							</div>
					</ul>
				</ul>

			</div>
		</div>
	</div>
	<div class="wrap">
</header>
<script>
	$(document).ready(function() {
		$('.menu-trigger').click(function() {
			$('.m-menu').toggleClass('active');
		});
	});
</script>
</html>
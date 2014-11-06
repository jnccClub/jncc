<%@ page contentType="text/html;charset=UTF-8" language="java"%>



<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test</title>
    <meta name="description" content="A sidebar menu as seen on the Google Nexus 7 website" />
    <meta name="keywords" content="google nexus 7 menu, css transitions, sidebar, side menu, slide out menu" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="css/nav/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/nav/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/nav/component.css" />
    <script src="js/nav/modernizr.custom.js"></script>
    <script src="js/nav/classie.js"></script>
    <script src="js/nav/gnmenu.js"></script>
</head>
<body>
	<jsp:include page="navBar/navigationBar.jsp"></jsp:include>
	
	<script>
		var currentShowID = "#mainFrame_Body";
		var userName = "test";
		$(document).ready(function() {
			$("#loginEntry").click(function() {
				renewMainId("#mainFrame_Login");
			});

			$("#logOutEntry").click(function() {
				alert("come to relogin");
				username = "";
				$("#loginEntry").html('<a href="javarscript:(0)" >登录/注册</a>');
				$("#logOutEntry").hide();
			});
		});
		function renewMainId(newId) {
			$(currentShowID).hide();
			currentShowID = newId;
			$(currentShowID).show();
		}
	</script>
</body>
</html>

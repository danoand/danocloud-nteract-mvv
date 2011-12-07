<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Framework CSS -->
<link rel="stylesheet" href="styles/screen.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="styles/nteract.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="styles/print.css" type="text/css" media="print">
<!--[if lt IE 8]><link rel="stylesheet" href="styles/ie.css" type="text/css" media="screen, projection"><![endif]-->
<script type="text/javascript" src="scripts/jquery.js" /></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.fn.clearsearch = function() {
				return this.focus(function() {
					if( this.value == this.defaultValue ) {
						this.value = "";
						$(this).removeClass('dimtext');					
					}
				}).blur(function() {
					if( !this.value.length ) {
						this.value = this.defaultValue;
						$(this).addClass('dimtext');					
					}
				});
			};
	});
</script>
<title>nteract</title>
</head>
<body class="conversion"> <!-- set to conversion for in flow pages -->
<div class="container" id="header">
	<h1><a href="index.php">nteract.</a></h1>
	<div class="fr mt">
		Welcome Dan  |  <a href="#">Logout</a>
	</div>
</div>
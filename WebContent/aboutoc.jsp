<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="alternative for OpenClinica" /> 
<meta name="keywords" content="openclinica libreclinica training open source software clinical trials datamanagement 
non-profit academic edc ecrf Nederland Netherlands Holland" /> 

<title>Trial Data Solutions: about OpenClinica</title>
<link rel="stylesheet" type="text/css" media="screen, projection" href="css/screen.css" />
<script src="js/jquery-1.2.6.min.js" type="text/javascript"></script>
<script type="text/javascript">
	// Toggle advanced options
	$(document).ready(function(){
		$("#loc-adv a").click(function(){
			$("#map").slideToggle("slow");
			return false;
		});
	});

	// Add .last class to certain lists
	$(document).ready(function(){
		$("ul.lst li:last, ul.press li:last").addClass("last");
		});
</script>
<script src="/tds/js/ga.js" type="text/javascript"></script>
</head>

<body>

<%@ include file="/includes/headermenu.jsp" %>
<hr />

<div id="wrap" class="group">
	
	<div class="main">		
		
		<div class="entry group">
			<h3>About OpenClinica</h3>
			<div class="entry-body">
<p>This page is about OpenClinica. If you're already familiar with the product and you're 
interested in what Trial Data Solutions can do for you, go to the <a href='/tds/'>main page</a>.<br />
If you have a specific question or problem, <a href='mailto:info@trialdatasolutions.com'>contact</a> us or have a look at the <a href='/tds/howto/'>how-to-pages</a>.</p>

<p class='question'>background</p>
<p>OpenClinica was around 2002 the first organisation to release open-source software for electronic data capture, EDC. This was a tremendous opportunity for academic and non-profit organisations to improve the quality of their datamanagement.<br />
Around 2015 OpenClinica 4 was released and this was "closed-source" software from the start. OpenClinica 3.x uses many libraries that are out-of-date and because of that a small group decided to to create a fork of the code and start 
<a href='aboutlc.jsp'>LibreClinica</a>.</p>

<p class='question'>I still have a 3.x version running: can you assist us with that?</p>
<p>Clinical trials can be running for years, so there are numerous OpenClinica-installations out in the open that must be kept alive, until the last-patient-last-visit. If you need help with that, please 
contact <a href='mailto:info@trialdatasolutions.com'>us</a>.<br />
And of course you can also ask us to migrate your OpenClinica-instance to LibreCLinica and be future-proof. 
</p>
			</div>
		</div>

	</div> <!-- /.main -->
	
	<hr />

<%@ include file="/includes/news.jsp" %>

	<div class="secondary"> <!-- /.photo -->
		<div class="mod">
		<img src='/tds/img/DoctorsGroup.jpg' border='0' width='100%' />
		</div>
	</div> <!-- /.secondary -->
	
<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->

<!-- c(~) -->
</body>
</html>

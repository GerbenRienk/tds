<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="OpenClinica: showing instructions about an item in a CRF by using Tip" /> 
<meta name="keywords" content="openclinica training open source software clinical trials datamanagement 
non-profit academic edc" /> 

<title>Trial Data Solutions: a graphical representation of the database </title>
<link rel="stylesheet" type="text/css" media="screen, projection" href="/tds/css/screen.css" />
<script src="/tds/js/jquery-1.2.6.min.js" type="text/javascript"></script>
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
<h3>getting the big picture</h3>
<p>Some of us do not really care how OpenClinica is doing what it is doing, 
but others may be fascinated by the database: 100+ tables and some views and relations.
Getting the big picture can be difficult and fortunately there are OpenSource-tools
that can help us.</p>		

<p>In the frame under this text you can see a summary of the database: just click ahead.<br />
It was generated by <a href='http://schemaspy.sourceforge.net/' target='_blank'>SchemaSpy</a>, in combination with 
<a href='http://www.joachim-uhl.de/projekte/schemaspygui/' target='_blank'>schemaSpyGUI</a>
<br />Click on a table to see with which other tables it is connected. The associated graphics can be quite large, 
so you may want to open the links in a new browser window.</p>		
</div>
<iframe src="schemaspyoc312/index.html" width="100%" height="2000px"></iframe>
		

	</div> <!-- /.main -->
	
<%@ include file="/includes/footerhowto.jsp" %>
	<hr />
<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->

<!-- c(~) -->
</body>
</html>

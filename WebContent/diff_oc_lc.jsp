<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="difference between openclinica and libreclinica" /> 
<meta name="keywords" content="libreclinica training open source software clinical trials datamanagement 
non-profit academic edc ecrf Nederland Netherlands Holland" /> 

<title>TDS: the same difference</title>
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

<div id="wrap">
	<div class="main">			
		<div class="entry">
		
<h3>difference? what difference?</h3>
<p>Looking at LibreClinica you may wonder: 'what is this all about? it looks and feels like OpenClinica to me' and all we can say is: 
'correct'. And the reason for this similarity is that we used the code-base of openclinica, version 3.14 in fact, as our starting point
 for LibreClinica. We spent about 18 months and the result has all the functionality and the design of OpenClinica.</p>

<h3>and you spent 18 months on that?</h3>
<p>It may sounds ridiculous to say that you have spent months of work to come up with something that already existed, but all the differences are
under the hood. <br />
An application like OpenClinica isn't built from scratch but uses extensive building-blocks or libraries. This makes the process of 
developing not only efficient, but also secure, because these libraries are regularly updated to fix bugs and security risks. 
In the course of years the number of libraries involved has grown to 100+ and some of these have been in the code from the start, so around 2003.</p>

<h3>ok, so we're up-to-date; now what?</h3>
<p>Getting all libraries up-to-date was a task, because a lot of code change was involved. But now that this is in place, what does it mean?
First of all it means that you can use the latest version for your operating system of choice and have the latest versions java, tomcat and
 postgresql. Many people will be relieved to hear that. Well, maybe not 'many people' but definitely 'many system operators'.</p>

<h3>so my it-team is happy; who else?</h3>
<p>Not only the server-team will be pleased with LibreClinica, but also your programmer. We hope to give her an opportunity to
contribute to the code, using the normal github-way-of-working. And we are convinced that there are many programmers willing and 
able to contribute, so the real change has just begun.
</p>
<br />
<br />
</div><!-- /entry -->
</div> <!-- /main -->
<hr />

<%@ include file="/includes/news.jsp" %>

	<div class="secondary">
		<div class="modnews">
		<img src='/tds/img/logo_lc_full.png' border='0' width='100%' />
		</div>
	</div> <!-- /.secondary -->
	
<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->
</body>
</html>
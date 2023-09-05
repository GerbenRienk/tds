<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="OpenClinica CRF examples" /> 
<meta name="keywords" content="openclinca open source software clinical trial datamanagement 
non-profit academic edc" /> 

<title>TDS: some OpenClinica CRF examples</title>
<link rel="stylesheet" type="text/css" media="screen, projection" href="/tds/css/screen.css" />
<script src="/tds/js/jquery-1.2.6.min.js" type="text/javascript"></script>
<script type="text/javascript">
	
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
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-0RHHQ1M9CH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-0RHHQ1M9CH');
</script>
</head>

<body>

<%@ include file="/includes/headermenu.jsp" %>
<hr />

<div id="wrap" class="group">
	
	<div class="main">		
		
		<div class="entry group">
<h3>can I use this?</h3>
<p>You may have landed on this page while searching for OpenClinica CRF's or for LibreClinica CRF's. Rest assured:
LibreClinica is the successor of OpenClinica and all the examples presented here can be used in both OpenClinica and 
LibreClinica.<br />
On <a href='../diff_oc_lc.jsp'>this page</a> you can read more about the difference between OpenClinica and LibreClinica.</p>

			<h3>Sample CRF's</h3>
			
			 
			<iframe width="280" height="157" src="http://www.youtube.com/embed/E9616zgcna8" frameborder="0" ></iframe> 
			<iframe width="280" height="157" src="http://www.youtube.com/embed/Mz67XBwDZes" frameborder="0" ></iframe>
			<p>If you've come to this page after watching these youtube-video's:
			the CRFs can be found <a href='TDSCrfWithImageYouTube.xls' target='_blank'>here</a> and 
			 <a href='TDSRepeatingItems.xls' target='_blank'>here</a>.
			</p>
			
			<p>Here are some other CRFs you can use to get started with LibreClinica. For more information about creating a new CRF or 
			a new version of an existing CRF, see our <a href='/tds/howto'>how-to-pages</a>.</p>
			
<p><a href='SampleCRF31.xls'>SampleCRF.xls</a> shows where the different items on the XL-sheet show up in the CRF. 
(Click <a href='SampleCRF30.xls'>here</a> for OC 3.0.x format.)
<img src='SampleCRF1.jpg' class='photo' />
<img src='SampleCRF2.jpg' class='photo' />
</p>

<p><a href='SimpleCRFWithBMI31.xls'>SimpleCRFWithBMI.xls</a> is an example of a CRF with a calculated field.
(Click <a href='SimpleCRFWithBMI30.xls'>here</a> for OC 3.0.x format.)
<img src='SimpleCRFWithBMI.jpg' class='photo' />
</p>

<p><a href='TDSUsingTip.xls'>TDSUsingTip.xls</a> is an example of a CRF with extra instructions that are displayed when
you position the mouse above the word <b>Instructions</b>. 
(See <a href='/tds/howto/instructionsintip.jsp'>this page</a> for an explanation.) 

<img src='/tds/img/ImagesHowTo/InstructionsInTip/it05.jpg' class='photo' />
</p>
			

<p><a href='CRFWithImage31.xls'>CRFWithImage.xls</a> is a CRF with an image plus link.
(Click <a href='CRFWithImage30.xls'>here</a> for OC 3.0.x format.)
<img src='CRFWithImage.jpg' class='photo' />
</p>

<p><a href='SF36_DUTCH.xls'>SF36_DUTCH.xls</a> is a Dutch version of the SF-36 questionnaire.
<img src='ScreenshotSF36.jpg' class='photo' />
</p>

		</div>

	</div> <!-- /.main -->
	
	<hr />

<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->


</body>
</html>

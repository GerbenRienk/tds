<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="an online OpenClinica Training for Investigators so they can comply with the regulatory ICH requirements" /> 
<meta name="keywords" content="openclinica training open source software clinical trials datamanagement 
non-profit academic edc ecrf Nederland Netherlands Holland" /> 

<title>OpenClinica training for Investigators</title>
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
			<h3>LibreClinica training for Investigators</h3>
<div class="entry-body">
<p>
The benefits of electronic CRFs (eCRFs) over paper-driven trials are well known. The use of eCRFs has the following main advantages: </p>
<ul>
<li>-Faster and cleaner data entry by sites</li>
<li>-Remote site support and management</li>
<li>-Flexible and enhanced monitoring</li>
<li>-Integration of paper and computer entered data</li>
<li>-Coordination of all subject data in one database (lab reports, IVRS, etc.)</li>
<li>-Real-time reporting on both operational and clinical data</li>
</ul>
<p>
However due to the complexity of such systems and the strict legal requirements such systems need to fulfill, most e-CRFs
 on the market are quite expensive. Since a few years open source eCRFs are on the market which fulfill all the legal requirements. 
 LibreClinica is such an excellent open source eCRF. 
 The use of LibreClinica is quite simple. Nevertheless a good documented training of site staff and CRAs is part of the 
 required validation process which ensures high data quality. 
 
</p>

<p>
Other topics are: your "Home" in LibreClinica, adding Study Subjects, shortcuts for quickly accessing a Subject, Scheduling Events, 
elements in the CRF-screen, required fields, Validations and error-messages, adding Notes, handling Discrepancies, 
marking CRF Complete, signing Subjects, etc.
</p>




</div>

</div>		
</div> <!-- /.main -->
<hr />

<%@ include file="/includes/news.jsp" %>

	<div class="secondary"> 
		<div class="mod">
		<img src='/tds/img/DoctorsGroup.jpg' border='0' width='100%' />
		</div>
	</div> <!-- /.secondary -->
	
<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->

<!-- c(~) -->
</body>
</html>

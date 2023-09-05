<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="OpenClinica: how to create a simple rule" /> 
<meta name="keywords" content="openclinica training open source software clinical trials datamanagement 
non-profit academic edc free gratis database medisch onderzoek ecrf write rules" /> 

<title>Trial Data Solutions: a simple rule with two items</title>
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
<h3>before we start</h3>
<p>This is an updated version of the page that was written for OpenClinica 3.0.x. If you are looking for that page, click 
<a href='simplerule30.jsp'>here</a>. With OpenClinica 3.1.x things have become easier, so read these simplified instructions below.</p>
<p>
Creating Rules can be fun, but learning how to, can take some time. If you don't have the time to learn by yourself and if you want a training:
<a href='mailto:info@trialdatasolutions.com'>contact us</a>. And if you want us to do the work: <a href='mailto:info@trialdatasolutions.com'>
no problem!</a></p>

<h3>how to create a simple rule</h3>
<p>For most of your validations you can use the VALIDATION-column in the XL of your CRF. For example you can define a range 
for a numeric value, or use a regular expression for a text field according to a certain format. <br />
But there are also multi-variate checks. For example if on a CRF the user has to answer "Abnormal findings? (no or yes)" plus the question 
"If abnormal findings, please specify", then you like a check which raises a discrepancy, when the answer to the first question 
is "yes", but no specification is given in the second question.</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/sr01.jpg' border='0'  class='photo'/><br />
fig. 1: CRF
</p>
<p>
Making this simple rule is not difficult, but it requires quite a few steps, so hang on to your seat.</p>

<h3>finding the OpenClinica-ID's (OID's) for our rule</h3>
<p>
What we need for the simple rule are just two ingredients: the two OIDs of the items involved.
Login to OpenClinica as Study Director and click on the name of your current study in the upper-left part of your screen,
left of the link titled <b>Change Study/Site</b> and in our case this is <b>Test Study</b>.
</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/sr02.jpg' border='0'  class='photo'/><br />
fig. 2: the link to display the metadata of our Study
</p>

<p>Scroll down to the list of all the events in your study and for this example we'll use V1 (fig. 3)
Click on the magnifier-icon of this event.</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/sr03.jpg' border='0'  class='photo'/><br />
fig. 3: List Event Definitions
</p>

<p>Now a screen opens, displaying information about the event and about the CRF's in that event. 
Click on the magnifier-icon to the right of the CRF you want to use for your rule, in our case <b>TDS: X Thorax</b> .</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/sr04.jpg' border='0'  class='photo'/><br />
fig. 4: All CRFs for this Event 
</p>

<p>In the screen that opens you see the CRF-details, with a list of all the versions of this CRF. In our case
there's only one version, <b>v.1</b>. Now click on the strange icon on the right to view the meta-data of the CRF. 
</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/sr05.jpg' border='0'  class='photo'/><br />
fig. 5: CRF details 
</p>

<p>
This next screen gives you both the OID's of the items and of the group these items belong to: 
ingredients 3 and 4 (fig. 7). The group-OID is <b>IG_DCOG0_UNGROUPED</b> and the OID's for the items are
<b>I_DCOG0_ABNORMALFINDINGSXTHORAX</b> and <b>I_DCOG0_ABNORMALFINDINGSXTHORAXSPEC</b>.
</p>
<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/04ItemGroupID.jpg' border='0'  class='photo'/><br />
fig. 7: OID's of both item and group
</p>

<h3>the XML-file explained</h3>
<p>Your next step is starting your XML-editor. (In my case this is UltraEdit, but any plain text-editor will do.) 
Have a look at fig. 8 and read the explanation below. 
(And yes, you can <a href='/tds/CRFExamples/SimpleRule.XML' target='_blank'>download</a> the XML-file.)</p>

<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/05XMLFile.jpg' border='0'  class='photo'/><br />
fig. 8: the XML file
</p>
<p>First of all the bit between <b>&lt;!--</b> and <b>--!&gt;</b>: this is all comment and the general advice
is: put as much information in here as you can! Who made this rule and when and most important of all: 
what are the 4 (or more) ingredients (VARIABLES in the screenshot) for this rule?</p>
<p>Then the XML-part of the rule. This is enclosed by the <b>RuleImport</b>-tag. It consists of two
elements: <b>RuleAssignment</b> or: on what does it work? and <b>RuleDef</b> or: how does it work?
</p><p>
Then we look inside the RuleAssignment (the line in yellow) and we see the <b>Target</b>-tag with the attribute
<b>Context="OC_RULES_V1"</b> which is obligatory. The content of this tag is what it's all about:
Event-OID.CRFVersion-OID.Group-OID.Item-OID 
</p><p>

On the next line we see the OID of this rule defined. This is also used in the second main tag <b>RuleDef</b>, where we
define what we want to check. The check itself is <b>I_DCOG0_ABNORMALFINDINGSXTHORAX eq 1 and I_DCOG0_ABNORMALFINDINGSXTHORAXSPEC eq ""</b> 
meaning: <br />
- the answer to the question "Abnormal findings?" is "yes" or <b>1</b><br />
&nbsp;&nbsp;and<br />
- the field for "please specify" is empty or ""<br />
</p>
<p>If this is the case, or to put it in another way <b>IfExpressionEvaluates="True"</b>, then we want a message to be displayed
 <b>Please specify the abnormal findings.</b> and a discrepancy raised.</p>

<h3>Uploading the simple rule</h3>
<p>Now that we have our rule, let's go back to the Build Study screen (Tasks-Study Setup-Build Study). 
In this screen click on the plus-icon of step 5 "Create rules". A screen opens in which you can browse to your XML-file 
(fig. 9). </p>

<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/06UploadXMLFile.jpg' border='0'  class='photo'/><br />
fig. 9: upload the XML file
</p>

<p>The last step to take is validating the XML-file, so click on the Continue-button and 
a screen like fig. 10 will open. Click again on Continue and your rule has been assigned to your study!</p>

<p>
<img src='/tds/img/ImagesHowTo/SimpleRule/07ValidateXMLFile.jpg' border='0'  class='photo'/><br />
fig. 10: upload the XML file
</p>

<p>For more information on rules, click <a href='https://openclinica.org/dokuwiki/lib/exe/fetch.php?id=developerwiki%3Aroadmap&cache=cache&media=developerwiki:rules_documentation.pdf'
 target='_blank'>here</a> for Akaza's pdf on OpenClinica rules.</p>
		</div>

	</div> <!-- /.main -->
	
<%@ include file="/includes/footerhowto.jsp" %>
	<hr />
<%@ include file="/includes/footer.jsp" %>

</div> <!-- /wrap -->

<!-- c(~) -->
</body>
</html>

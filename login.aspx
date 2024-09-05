<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PrjWebCsFriendbookP1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide{display:none !important;}ng\:form{display:block;}.ng-animate-block-transitions{transition:0s all!important;-webkit-transition:0s all!important;}.ng-hide-add-active,.ng-hide-remove{display:block!important;}</style>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log In – Lavalife.com Online Dating Site &amp; Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Welcome back to Lavalife.com! Log in to your online dating profile to see your messages, likes and other notifications now.">
	<meta name="apple-itunes-app" content="app-id=888082770">
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
	<link href="images/ll_mainpage_circle_logo.png" rel="icon"/>
	

    
	
</head>
<body ng-controller="LoginController as login" class="ng-scope" data-new-gr-c-s-check-loaded="14.1186.0" data-gr-ext-installed=""><div class="fr-window fr-window-fresco" style="display: none;"><div class="fr-bubble" style="display: none;"><div class="fr-frames fr-frames-landscape"><div class="fr-frames-move"></div></div><div class="fr-thumbnails" style="display: none;"><div class="fr-thumbnails-wrapper"><div class="fr-thumbnails-slider"><div class="fr-thumbnails-side fr-thumbnails-side-previous"><div class="fr-thumbnails-side-button"><div class="fr-thumbnails-side-button-background"></div><div class="fr-thumbnails-side-button-icon"></div></div></div><div class="fr-thumbnails-thumbs"><div class="fr-thumbnails-slide"></div></div><div class="fr-thumbnails-side fr-thumbnails-side-next"><div class="fr-thumbnails-side-button"><div class="fr-thumbnails-side-button-background"></div><div class="fr-thumbnails-side-button-icon"></div></div></div></div></div></div></div></div><div class="fr-overlay fr-overlay-fresco" style="display: none;"><div class="fr-overlay-background"></div></div>
   	
   	<!-- Wrap all page content here -->
   	<div id="wrap">
		<div class="mobile-dl">
			<a href=""><img></a>
		</div>
   	
   		<a href="Home.aspx" class="visible-lg visible-md visible-sm"><img id="logo-signup" src="images/ll_logo_registration.png"/></a>
   			    	    
		<nav class="navbar navbar-default visible-xs" role="navigation">
	      	
	        <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header col-xs-12">
	          
				<button type="button" class="navbar-toggle collapsed col-xs-4" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" fdprocessedid="b0m4o">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
	        	
				<a href="./" id="logo" class="navbar-brand"></a>
	        
			</div>
	    
	        <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse col-xs-12" id="bs-example-navbar-collapse-1" style="margin-top: 10px;">
				<ul class="nav navbar-nav">
					<li><a href="privacy-policy.html" target="_blank">Privacy Policy</a></li>
		            <li><a href="terms-of-use.html" target="_blank">Terms of Service</a></li>
		            <li><a href="FAQ.html" target="_blank">FAQ</a></li>
		          </ul>

			</div><!-- /.navbar-collapse -->
		</nav>
   	
	    <section class="container" style="min-width:300px !important;">
	    	
	    	<div class="row login-holder">
	    		
	    		<div class="col-lg-8r col-md-8 col-sm-8 hidden-xs login-left">
	    		
	    		</div>
	    		    		
	    		<div class="col-lg-4 col-md-4 col-sm-12" id="login" style="background-color:white;">
	    				<div class="lil-logo">
							<img src="images/ll_logo_registration_circle_sml.png">
	    				</div>
						
	    				<h2>Log in <br><span>Welcome back to lavalife!</span></h2>
	    				
	    				<div class="step-content">
	    					
	    					<div class="errors-holder">&nbsp;</div>
	    					
							<form class="login-form has-validation-callback ng-pristine ng-valid" runat="server" role="form">
								
								 <div class="form-group">
								  <label for="email">Email Address</label>
								  <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email" />
								</div>

								<div class="form-group" ng-if="!fbAccessToken">
   
								<label for="password">Password</label>
								<asp:TextBox ID="txtmotdepasse" runat="server" CssClass="form-control" TextMode="Password" />
								</div>
								
								 <asp:Button ID="loginButton" CssClass="btn btn-danger col-md-12 col-sm-12 col-xs-12" runat="server" Text="Sign Up" Onclick="loginButton_Click" Font-Bold="True"  />
								<input type="hidden" name="returnStatusOnly" value="Y" data-validation="required">
								<input type="hidden" name="ioBB" id="ioBB" value="0400bpNfiPCR/AUNf94lis1ztioT9A1DShgAJMXrY14wq/AQe+UEljRihajp+k1/bFPyA80pIcXDnUoIzzvOlBUh9qRTaDjmUTl26LEtcYEgIDXyxDKJBqBicR9tSD5CqpIsCY9yGCIRhxjSctR6oPvoc/HBQm916StC15tFwbb5NkVtrNHzt95ePgXs+oQQc60trrGto44dFZ/k0B48ux+V4SxwhwBmNydI6S6la0lc7CNSwejOX5dhKDBAKBIrRLbRVKNQ0ZFLTxjAoMNL+K033ZE75agXQtdj5mNV6QxgbcnqT3LYd4+PRRY2IX/tS8+G1epiNm5Woi76ge/2is3wOMgW+p6QDBqL/exHz4l9YN4whIEUnE9Azf3W3iQXeQAQ1FA6w+OwNTqh8ikF8Dmx+9Zi8nZ5OpdsfUM9CAQTcJQ0+poOO0dE3oSo0syeBCpzo2Ji61Ck5rdiHsRUrA6QSxbBfNyqZtyt8rblBKVJPt0pQs/EGzmZL8SisHzU8Lo0+SLPooEo8e3l8vTCqfv1Uf6a+9aA+etayDdp0FHl0V5ryGmayAXjYCW/FKNiYY8LhCiebBE66IIElXD0hEMtvQl2olrNgUNPQLL54cHs33vGInrBs5KtrjntEcVmW1kMV3qhf8WVO3WSnrbJSNyIsSmjGMMzIohoZpYNYztYHNCsXTUXJ5++nut+xVOLMECU15tFwbb5NkVtrNHzt95ePgXs+oQQc60trrGto44dFZ/k0B48ux+V4SxwhwBmNydI6S6la0lc7CNSwejOX5dhKDBAKBIrRLbRVKNQ0ZFLTxjAoMNL+K033ZE75agXQtdj5mNV6QxgbclhfIUcFuybLLNvS9LBZED55Ix5aAKTQzySBBWhu07LmRdt5U4CpewIj2qku3ZkvzkAM9dbBROeNQfbQD1p+KEcV6i8/tb5alAK/XRNo3H5dCCofHI9aHmKGVsh1GZGb/t+MWh63oYq0vIRUs2Ne/jcefAeEDVyjsCR/VJard6Rf4KI0MjI7ffDM/mSvA+2LTmpy8014w4PIkS1RhihotpPJ3VHdlUdmsnIHtbA/quj3+dVvu4eBdAZaCa1SOdQRfflrB7Zlo+XqueRU0mQTUFrFFAN6Q1x80UdCdGdyqwwbTKdeSg4P+ujHRH29E2Pl68vN0XpeFtRxxRQDekNcfNFHQnRncqsMG0ynXkoOD/rox0R9vRNj5evLzdF6XhbUccUUA3pDXHzRR0J0Z3KrDBtdh49pTzw7czYXo3BTCX2hofyrW+Fw8gpJMXrY14wq/BulosMXlEi2kVCcuAzYjmBs9S+8Gzx9pSikUZiBYBBOZPxgmDsnM/r4J+f2Bv9J5ZM4Jfk4iPdVCC5vvcWurohlrdzeNWV2gQ=">
							</form>
							
							
							
							<div class="devider-line"></div>
							 <asp:Label ID="lblErreur" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
							<div id="" style="text-align: center; margin-top: 25px; margin-bottom:25px;color:#757575;">Not a member yet? <strong><a href="SignUp.aspx">Sign Up.</a></strong></div>
						
						</div>
	
	    		</div>
			
			</div>
			
	    </section>
	
	</div>
	
	<div id="footer" class="hidden-sm hidden-xs">
		
		<footer class="container" style="min-width:300px !important;">
			<div class="col-md-1"></div>
			<div class="col-md-2">
				<img style="margin-top:40px;" src="images/ll_logodotcom_footer.png">
			</div>
			
			<div class="col-md-8">
				<p class="terms" style="text-transform:capitalize;">All images design and other intellectual materials and copyrights © 2015 Lavalife Ltd. All Rights Reserved. This is an adult service. By selecting any of the options above and/or creating your Lavalife profile, you are confirming that you are 18 years of age or older. 
				Please be sure you have read and agree to our <a href="privacy-policy.html" target="_blank">Privacy Policy</a> and <a href="terms-of-use.html" target="_blank">Terms of Use</a>.</p>
			</div>
			
			<div class="col-md-1"></div>
		</footer>
		
	</div>
	
	<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
	
	
    

    <div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 100%; width: 100%; z-index: -999999; position: fixed;">
    <img src="images/lavalife_bg_spring_2015.jpg" style="position: fixed; margin: 0px; padding: 0px; border: none; width: 100%; height: 100%; max-height: none; max-width: none; z-index: -999999; left: 0px; top: 0px;">
</div>
  	
  	
  	
  

<div class="fr-loading" style="display: none;"><div class="fr-loading-offset"><div class="fr-loading-background"></div><div class="fr-loading-icon"></div></div></div><span id="PING_CONTENT_AUTOPLAY_DETECTION" style="display: none;"></span><span id="PING_IFRAME_FORM_DETECTION" style="display: none;"></span><span id="PING_CONTENT_DLS_POPUP" style="display: none;"></span><div style="background-color: transparent; border: none; bottom: 15px; display: block; margin: 0px; opacity: 1; padding: 0px; position: fixed; right: 15px; z-index: 2147483647;"></div></body>
</html>

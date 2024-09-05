<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PrjWebCsFriendbookP1.WebForm2" %>

<!DOCTYPE html>
<html lang="en" ng-app="Lavalife">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up – Lavalife.com Online Dating Site & Mobile Apps – Where Singles Click®</title>
	<meta name="description" content="Sign up for Lavalife.com online dating and get a 7 day free trial. Browse unlimited profiles, send unlimited messages and start having fun." />
    <!-- Styles -->
    <link href="css/finalbuild.css" rel="stylesheet">
    <link href="css/bootstrap-tour.min.css" rel="stylesheet">
    <link href="images/ll_mainpage_circle_logo.png" rel="icon"/>
	
  </head>
  
  <style>
	label {
		color:#757575;
		font-size:13px;
	}
	
	.label {
		color:#212121 !important;
		padding-left:0px !important;
		font-family:"Open Sans", sans-serif !important;
		font-size:14px !important;
		font-weight: 500 !important;
	}
	
	h2{
		margin-top: 12px;
		text-align: left;
		line-height: 25px;
		margin: 10px 0;
		color: #ff0000;
		font-weight: 300;
		padding-left: 50px;
		background-repeat: repeat-y;
	}
	
	.selectric{
		border-color:#e5e5e5 !important;
	}
	
	input {
		color:#212121;
		border-color:#e5e5e5 !important;
	}
	
	.devider-line{
		margin-top:30px;
	}
	
	.itemPanel{
		-webkit-box-shadow: 0px 2px 2px 1px #555;
		-moz-box-shadow: 0px 2px 2px 1px #555;
		box-shadow: 0px 2px 2px 1px #555;
		border:solid 1px #757575;
	}

	.crop-cancel{
		display:none;
	}

  </style>
  <body ng-controller="SignupController as signup">
   
    <div id="wrap">
        <a href="Home.aspx" class="visible-lg visible-md visible-sm">
            <img id="logo-signup" src="images/ll_logo_registration.png"/>
        </a>

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
            <div class="row register-holder" style="background-color:white;">
                <div class="col-md-8 hidden-sm hidden-xs" style="position: relative; height: 100%; padding: 0px;">
                    <div class="backgrounds"><img class="selected" src="images/ll_step1_img.jpg" /></div>
                </div>

                <div class="col-md-4 col-sm-12" id="register">
                    <div class="lil-logo">
                        <img src="images/ll_logo_registration_circle_sml.png" />
                    </div>

                    <div class="step-1">
                        <h2>Create Your Profile <br /><span>AND RECEIVE A 7-DAY FREE TRIAL.</span></h2>
                        <div class="step-content">
                            <div class="errors-holder">&nbsp;</div>
                            <form class="register-form"  runat="server">
                                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px; padding-right: 5px;">
                                    <label for="fname">First Name</label>
                                    <asp:TextBox ID="txtnom" runat="server" CssClass="form-control" TextMode="SingleLine" />
                                    <asp:Label ID="lbl1" runat="server" Text="*" ForeColor="Red" Visible="False"></asp:Label>
                                </div>

                                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6" style="padding: 0px;">
                                    <label for="lname">Last Name</label>
                                    <asp:TextBox ID="txtprenom" runat="server" CssClass="form-control" TextMode="SingleLine" />
                                    <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Visible="False"></asp:Label>
                                    
                                </div>
                               
                                <div class="form-group">
                                    <label for="interested">I'm a</label>
                                    <asp:DropDownList ID="cboGenre" runat="server" CssClass="col-md-12 col-sm-12 col-xs-12" OnSelectedIndexChanged="interestedSelect_SelectedIndexChanged" />
                                </div>

                                <div class="form-group col-md-12 col-sm-12 col-xs-12" style="padding: 0px;">
                                    <label for="txtNaissance">Birthday</label>
                                    <asp:TextBox ID="txtNaissance" CssClass="boite" TextMode="Date" runat="server"></asp:TextBox>
                                  
                                </div>
                                 <div class="form-group">
                                    <label for="Religion">Religion</label>
                                    <asp:DropDownList ID="cboReligion" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="Country">Country</label>
                                    <asp:DropDownList ID="cboCountry" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label for="LookingForcboBoxs">Cherche:</label>
                                     <asp:DropDownList ID="LookingForcboBoxs" runat="server"></asp:DropDownList>
                                </div>


                                <div class="form-group">
                                    <label for="email">Email Address</label>
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" TextMode="Email" />
                                </div>

                                <div class="form-group" ng-if="!fbAccessToken">
   
                                     <label for="password">Password</label>
                                    <asp:TextBox ID="txtmotdepasse" runat="server" CssClass="form-control" TextMode="Password" />
                                </div>

                                 <div class="form-group" ng-if="!fbAccessToken">
   
                                 <label for="txtconfirmpassword"> Confirm Password</label>
                                 <asp:TextBox ID="txtconfirmpassword" runat="server" CssClass="form-control" TextMode="Password" />
                                </div>
                                <asp:Button ID="signUpButton" CssClass="btn btn-danger col-md-12 col-sm-12 col-xs-12" runat="server" Text="Sign Up" OnClick="signUpButton_Click" Font-Bold="True"  />
                            </form>

                            

                            <div class="devider-line"></div>
                            <asp:Label ID="lblErreur" Font-Bold="true" ForeColor="Red" runat="server"></asp:Label>
                            <div class="sign-up-facebook">
                                <p>Already a member? <a href="login.aspx">Log in.</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div id="footer" class="hidden-sm hidden-xs">
       
    </div>

    <div id="loader"></div>
    <div class="modal" data-backdrop="static" id="location-modal"></div>
    <div id="fb-root"></div>

    <div class="backstretch" style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 100%; width: 100%; z-index: -999999; position: fixed;">
        <img src="images/lavalife_bg_spring_2015.jpg" style="position: fixed; margin: 0px; padding: 0px; border: none; width: 100%; height: 100%; max-height: none; max-width: none; z-index: -999999; left: 0px; top: 0px;">
    </div>
</body>
</html>
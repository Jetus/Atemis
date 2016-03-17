<%@ Page Language="C#" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Runtime.Serialization.Json" %>
<%@ Import Namespace="System.Text" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<%@ Import Namespace="AtemisNET.Commons.Commons" %>
<%@ Import Namespace="AtemisNET.Commons.DataAccess" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="DevExpress.Web" %>


<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>

		<!-- ==============================================
		Title and Meta Tags
		=============================================== -->
		<meta charset="utf-8">
		<title>GoldinMine - B2B Market surveys in real time</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- ==============================================
		Favicons
		=============================================== -->
		<link rel="shortcut icon" href="assets/favicon.ico">
		<link rel="apple-touch-icon" href="assets/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="assets/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="assets/apple-touch-icon-114x114.png">
		
		<!-- ==============================================
		CSS
		=============================================== -->    
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/flexslider.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link id="main" rel="stylesheet" href="css/designr-theme-cyan2.css">
		<link id="theme" rel="stylesheet" href="css/designr-theme-cyan2.css">
		<link rel="stylesheet" href="css/style-switcher.css">
		
		
		<!-- ==============================================
		Fonts
		=============================================== -->
		<link href='http://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic,900' rel='stylesheet' type='text/css'>
		
		<!-- ==============================================
		JS
		=============================================== -->
			
		<!--[if lt IE 9]>
			<script src="js/respond.min.js"></script>
		<![endif]-->
		
		<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
		
		
	</head>
  
	<body data-spy="scroll" data-target="#main-nav" data-offset="200">
	
		<form id="form1" runat="server">
	
		<!--=== PAGE PRELOADER ===-->
		<div id="page-loader">            
            <span class="page-loader-gif"></span></div>
		
		<!-- ==============================================
		MAIN NAV
		=============================================== -->
		<div id="main-nav" class="navbar navbar-fixed-top">
			<div class="container">
			
				<div class="navbar-header">
				
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#site-nav">
						<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button>
					
					<!-- ======= LOGO ========-->
					<a class="navbar-brand scrollto" href="#home"><img src="assets/logo.png" width="60%"><br></a>
					
				</div>
				
				<div id="site-nav" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="sr-only">
							<a href="#home" class="scrollto">Home</a>
						</li>
						<li>
							<a href="#services" class="scrollto">Our process</a>
						</li>
						<li>
							<a href="#about" class="scrollto">About us</a>
						</li>
						<li>
							<a href="#portfolio" class="scrollto">Our App</a>
						</li>
						<li>
							<a href="#contact" class="scrollto">Pre-register</a>
						</li>
					</ul>
				</div><!--End navbar-collapse -->
				
			</div><!--End container -->
			
		</div><!--End main-nav -->
		
		<!-- ==============================================
		HEADER
		=============================================== -->
		<header id="home" class="jumbotron"


	>
		
	
			<div class="container">
			
				<div class="message-box clearfix">
				
					<div class="left-col">
						<p>GET <br/>IN REAL TIME</p>
					</div>	
					
					<div class="right-col flexslider home-slider" style="z-index:1;">
					
						<ul class="slides">
						
							<li><p>Leads</p></li>
							
							<li><p>B2B Data</p></li>
							
						
							
						</ul>
						
					</div><!--End home-slider -->
					
				</div><!--End message-box -->
				
			</div><!--End container -->
			
		</header><!--End header -->

		<!-- ==============================================
		SERVICES
		=============================================== -->
		<section id="services">
		
			<div class="container">
			
				<h1 class="section-title scrollimation scale-in"><span>Our Process</span><i class="fa fa-wrench"></i></h1>
				
				<div class="row services scrollimation fade-left">
					<div class="col-md-3 text-center">
						<a href="#service" class="icon"><i class="fa fa-pencil"></i></a>
						<h2>Businesses</h2>
					</div>
					<div class="col-md-3 details">
						<p>Post your request (leads or survey) on GoldinMine. Define your target responds and budget.</p>
					</div>
					<div class="col-md-3 text-center">
						<a><img class="img-responsive img-center" src="assets/yes.png" alt=""></a>
						<h2>Businesses</h2>
					</div>
					<div class="col-md-3 details">
						<p>Get the result in real time. GoldinMine team will check and make sure the result is accurate and up to date.</p>
					</div>
				</div><!--End row (top) -->
				
				<div class="row line visible-md visible-lg">
					<div class="col-md-3"><span class="spot"></span></div>
					<div class="col-md-3"><span class="spot"></span></div>
					<div class="col-md-3"><span class="spot"></span></div>
					<div class="col-md-3"><span class="spot"></span></div>
				</div><!--End row -->
				
				<div class="row services bottom-row scrollimation fade-right">
					<div class="col-md-3 text-center col-md-push-3">
						<h2>Miners</h2>
						
						<a><img class="img-responsive img-center" src="assets/phone.png" alt=""></a>
					</div>
					<div class="col-md-3 details col-md-pull-3">
						<p>GoldinMine sends the request to target miners. Miners get push notifications and  Answer the requests</p>
					</div>
					<div class="col-md-3 text-center  col-md-push-3">
						<h2>Miners</h2>
						<a> <img class="img-responsive img-center" src="assets/dollars.png" alt=""></a>
					</div>
					<div class="col-md-3 details  col-md-pull-3">
						<p>Miners get paid for taking the surveys.</p>
					</div>
				</div><!--End row (bottom)-->
				
			</div><!--End container -->
			
		</section><!--End services section-->
		
		<!-- ==============================================
		ABOUT
		=============================================== -->		
		<section id="about">
		
			<div class="container">
			
				<div class="row">
					<div class="col-sm-4 col-sm-offset-1 scrollimation fade-right">
						<img class="img-responsive img-circle img-center" src="assets/pick.gif" alt="">
					</div>
					<div class="col-sm-6 col-sm-offset-1 scrollimation fade-left">
						<h1>About us</h1>
						<p>GoldinMine is the first solution which links directly businesses to their prospects. You are doing Market surveys in real time by Crowdsourcing the data through the target companies. GoldinMine disrupts the B2B data market, avoids the call centers and intermediaries.</p>
						<a href="#contact" class="btn btn-theme transparent scrollto">Pre-register</a>
					</div>
				</div><!--End row -->
				
			</div><!--End container -->
			
		</section><!--End about section -->
	
		<!-- ==============================================
		SKILLS
		=============================================== -->			
		<section id="skills">
		
			<div class="container">
			
				<div class="row skills">

					<div class="col-sm-6 col-md-3 text-center">
						<span class="chart" data-percent="100"><span class="percent">100</span></span>
						<h2 class="text-center">Quality</h2>
					</div>
					<div class="col-sm-6 col-md-3 text-center">
						<span class="chart" data-percent="97"><span class="percent">97</span></span>
						<h2 class="text-center">Time</h2>
					</div>
					<div class="col-sm-6 col-md-3 text-center">
						<span class="chart" data-percent="60"><span class="percent">60</span></span>
						<h2 class="text-center">Corporations</h2>
					</div>
					<div class="col-sm-6 col-md-3 text-center">
						<span class="chart" data-percent="30"><span class="percent">30</span></span>
						<h2 class="text-center">Cost</h2>
					</div>
					
				</div><!--End row -->
				
			</div><!--End container -->
			
		</section><!--End skills section -->
	
		<!-- ==============================================
		PORTFOLIO
		=============================================== -->		
		<section  id="portfolio">
		
			<div id="portfolio-header" class="text-center">
				
				<h1 class="section-title scrollimation scale-in"><span>Our app</span><i class="fa fa-pencil"></i></h1>
				
				<!--==== Portfolio Filters ====-->
				<div id="filter-works">
					<ul>
						<li class="active">
							<a href="#" data-filter="*">Download our app in IOS / Android</a>
					
					</ul>
					<h2>We are launching soon. Please pre-register to be updated</h2>
				</div><!--End portfolio filters -->
				
			</div><!--End portfolio header -->
			
			<div class="container masonry-wrapper scrollimation fade-in">
			
				<div id="projects-container">
				
					<!-- ==============================================
					SINGLE PROJECT ITEM
					=============================================== -->	
					<a class="project-item web-design" href="http://www.google.com/" data-images="assets/projects/business5401.jpg,assets/projects/business5402.jpg,assets/projects/business5403.jpg">
						
						<img class="img-responsive project-image" src="assets/projects/webdesign6.jpg"  alt=""><!--Project thumb -->
						
						<div class="hover-mask">
							<h2 class="project-title">Acquire new leads</h2><!--Project Title -->
							<p>Reduce your time to Market</p><!--Project Subtitle -->
						</div>
						
						<!--==== Project Preview HTML ====-->
						
						<div class="sr-only project-description">
							<p class="clearfix">GoldinMine allows you to collect the details of your targeted contacts. Simply indicate which position you target and the Miners will load in few minutes the details of the contact. (FirtName, LastName, Email, Telephone)</p>
							<p>We focus on the quality of the data. They are crowdsourced from the targeted companies directly, and we require answers from different users to garantee the accuracy of the data.</p>
							<img class="img-responsive img-center" src="assets/projects/google-logo.png"  alt="">
							<p>The process takes you about 1 min to launch a new campaign, and few minutes to get all answers collected.</p>
							<p>Your leads can then be exported and you can contact them straight after.</p>
						</div>
						
					</a>
					<!-- ==============================================
					END PROJECT ITEM
					=============================================== -->						
					
					<a class="project-item icons ui-kits" href="#somelink" data-images="assets/projects/business5401.jpg,assets/projects/business5402.jpg,assets/projects/business5403.jpg">
						
						<img class="img-responsive project-image" src="assets/projects/ui3.jpg" alt=""><!--Project thumb -->
						
						<div class="hover-mask">
							<h2 class="project-title">Update your contacts</h2><!--Project Title -->
							<p>Keep a clean database</p><!--Project Subtitle -->
						</div>
						
						<!--==== Project Preview HTML ====-->
						
						<div class="sr-only project-description">
							<p class="clearfix">GoldinMine allows you to keep your data updated.</p>
							<p>You can load the data to be cleaned and then all miners working in these companies will update the data for you.</p>
							<img class="img-responsive img-center" src="assets/projects/microsoft-logo.png" alt="">
							<p></p>
						</div>
						
					</a><!--End Project Item -->

					<a class="project-item web-design ui-kits" href="#somelink" data-images="assets/projects/business5404.png,assets/projects/business5405.png,assets/projects/business5406.png">
						
						<img class="img-responsive project-image" src="assets/projects/webdesign1.jpg"  alt=""><!--Project thumb -->
						
						<div class="hover-mask">
							<h2 class="project-title">Ask direct question to your prospects</h2><!--Project Title -->
							<p>Make market surveys in real time</p><!--Project Subtitle -->
						</div>
						
						
						
					</a><!--End Project Item -->
						
				</div><!-- End projects --> 
				
			</div><!-- End container --> 
			
			<!-- ==============================================
			PROJECT PREVIEW MODAL
			=============================================== -->	
			<div id="project-modal" class="modal fade">
			
				<div class="modal-dialog">
				
					<div class="modal-content">
					
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						</div>
						
						<div class="modal-body">
						
							<div class="left-col">
								<img class="img-responsive" src="assets/imac.png" alt="">    
								<div class="image-wrapper"></div>
							</div>
							
							<h1></h1>
							
							<div class="project-descr"></div>
							
							<div class="clearfix"></div>
							
							<p class="text-center"><a class="btn btn-theme"><i class="fa fa-external-link"></i>Pre-register</a></p>
						
						</div><!-- End modal-body -->
						
					</div><!-- End modal-content -->
					
				</div><!-- End modal-dialog -->
				
			</div><!-- End modal -->
			
		</section><!-- End portfolio section -->
		
		<!-- ==============================================
		TWITTER FEED
		=============================================== -->	
		<section id="twitter">
			<div class="container">
				<div class="row scrollimation fade-in">
					<div class="col-sm-1 twitter-icon">
						<i class="fa fa-twitter"></i>
					</div>
					<div class="col-sm-11">
						<div id="twitter-slider" class="flexslider" data-widget-id="386017398488186880" data-tweets-length="3">
						
						</div>
					</div>
				</div><!-- End row -->
			</div><!-- End container -->
			
		</section><!-- End Twitter section -->

		<!-- ==============================================
		CONTACT
		=============================================== -->	
		<section  id="contact">
		
			<div class="container">
			
				<h1 class="section-title scrollimation scale-in">Pre-register</h1>
				
				<div class="row">
				
					<div class="col-sm-5 contact-info scrollimation fade-right">
						
						<p>Stay tuned and informed</p>
						
						<address>
							GoldinMine<br>
							Dreamplex<br>
							21 Nguyễn Trung Ngạn<br>
							Hồ Chí Minh, Vietnam<br>
						
						</address>
						
						<ul class="socials">
							<li><a href="#twitter-link"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#facebook-link"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#dribbble-link"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#gplus-link"><i class="fa fa-google-plus"></i></a></li>
						</ul>
						
					</div>
				  
					<div class="form-group">
						  <label class="control-label">First Name</label>
						  <div class="controls">
							<i class="fa fa-user"></i>
							<dx:ASPxTextBox runat="server" ID="tbCFirstName" ClientInstanceName="tbCFirstName" NullText="First Name" CssClass="form-control input-lg requiredField">
								<ValidationSettings Display="Static" SetFocusOnError="True" ValidationGroup="CreateContact">
									<RequiredField IsRequired="True" ErrorText="Please enter your name" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						  </div>
						
						<div class="form-group">
						  <label class="control-label">Last Name</label>
						  <div class="controls">
							<i class="fa fa-user"></i>
							<dx:ASPxTextBox runat="server" ID="tbCLastName" ClientInstanceName="tbCLastName" NullText="Last Name" CssClass="form-control input-lg requiredField">
								<ValidationSettings Display="Static" SetFocusOnError="True" ValidationGroup="CreateContact">
									<RequiredField IsRequired="True" ErrorText="Please enter your name" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						  </div>
						</div><!-- End name input -->
						
						<div class="form-group">
						  <label class="control-label">Email</label>
						  <div class=" controls">
							<i class="fa fa-envelope"></i>
							<dx:ASPxTextBox runat="server" ID="tbCEmail" ClientInstanceName="tbCEmail" NullText="Please respond at...">
								<ValidationSettings Display="Static" ValidationGroup="CreateContact">
									<RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorText="Invalid email address" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						  </div>
						</div><!-- End email input -->
						
						<div class="form-group">
						  <label class="control-label">Phone</label>
						  <div class="controls">
							<i class="fa fa-user"></i>
							<dx:ASPxTextBox runat="server" ID="tbCMobile" ClientInstanceName="tbCMobile" NullText="Phone" CssClass="form-control input-lg requiredField">
								<ValidationSettings Display="Static" SetFocusOnError="True" ValidationGroup="CreateContact">
									<RequiredField IsRequired="True" ErrorText="Please enter your phone number" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						  </div>
						  
						<div class="form-group">
							<label class="control-label">Position</label>
							<div class="controls">
							<i class="fa fa-user"></i>
							<dx:ASPxTextBox runat="server" ID="tbCPosition" ClientInstanceName="tbCPosition" NullText="Position" CssClass="form-control input-lg requiredField">
								<ValidationSettings Display="Static" SetFocusOnError="True" ValidationGroup="CreateContact">
									<RequiredField IsRequired="True" ErrorText="Please enter your position" />
								</ValidationSettings>
							</dx:ASPxTextBox>
						</div>					
						
						<div class="form-group">
						  <label class="control-label" for="contact-message">Message</label>
							<div class="controls">
								<i class="fa fa-comment"></i>
                                <dx:ASPxMemo runat="server" ID="tbCComments" ClientInstanceName="tbCComments" NullText="I wanna talk about..." CssClass="form-control input-lg requiredField">
								    <ValidationSettings Display="Static" SetFocusOnError="True" ValidationGroup="CreateContact">
									    <RequiredField IsRequired="True" ErrorText="Please enter your message" />
								    </ValidationSettings>
							    </dx:ASPxMemo>
							</div>
						</div><!-- End textarea -->
						
						
						
						
						<table border="0" cellpadding="2" cellspacing="0" style="text-align: left; display: inline-block">
							<tr>
								<td style="text-align: left">
									<dx:aspxlabel runat="server" ID="lRestaurant" Text="Company" Theme="iOS" />
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxTextBox runat="server" ID="tbRName" ClientInstanceName="tbRName" NullText="Company Name" Width="350px" Theme="iOS">
										<ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ValidationGroup="CreateReataurant">
											<RequiredField IsRequired="True" ErrorText="Required" />
										</ValidationSettings>
									</dx:ASPxTextBox>
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxComboBox runat="server" ID="cbRCountry" ClientInstanceName="cbRCountry" NullText="Country" Width="350px" Theme="iOS"
										IncrementalFilteringMode="StartsWith" DropDownStyle="DropDownList" EnableSynchronization="False"
										TextField="d_country_name"
										ValueField="d_country_id"
										ValueType="System.Int32">
										<ClientSideEvents
											SelectedIndexChanged="function(s, e) { OnCountryChanged(s); }" />
									</dx:ASPxComboBox>
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxComboBox runat="server" ID="cbRCity" ClientInstanceName="cbRCity" NullText="City" Width="350px" Theme="iOS"
										IncrementalFilteringMode="StartsWith" DropDownStyle="DropDownList" EnableSynchronization="False"
										OnCallback="cbRCity_Callback"
										TextField="d_city_name"
										ValueField="d_city_id"
										ValueType="System.Int32">
										<ValidationSettings Display="Static" ErrorDisplayMode="ImageWithTooltip" ValidationGroup="CreateReataurant">
											<RequiredField IsRequired="True" ErrorText="Required" />
										</ValidationSettings>
										<ClientSideEvents
											EndCallback=" OnEndCallback" />
									</dx:ASPxComboBox>
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxComboBox runat="server" ID="cbRBusinessSector" ClientInstanceName="cbRBusinessSector" NullText="Business Sector" Width="350px" Theme="iOS"
										IncrementalFilteringMode="StartsWith" DropDownStyle="DropDownList" EnableSynchronization="False"
										TextField="ssector_name"
										ValueField="ssector_id"
										ValueType="System.Int32">
									</dx:ASPxComboBox>
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxComboBox runat="server" ID="cbRSalesRange" ClientInstanceName="cbRSalesRange" NullText="Sales range" Width="350px" Theme="iOS"
										IncrementalFilteringMode="StartsWith" DropDownStyle="DropDownList" EnableSynchronization="False"
										TextField="le_name"
										ValueField="le_id"
										ValueType="System.Int32">
									</dx:ASPxComboBox>
								</td>
							</tr>
							<tr>
								<td>
									<dx:ASPxComboBox runat="server" ID="cbREmployeesNumber" ClientInstanceName="cbREmployeesNumber" NullText="Employees #" Width="350px" Theme="iOS"
										IncrementalFilteringMode="StartsWith" DropDownStyle="DropDownList" EnableSynchronization="False"
										TextField="le_name"
										ValueField="le_id"
										ValueType="System.Int32">
									</dx:ASPxComboBox>
								</td>
							</tr>
						</table>																

                        <p>
                            <dx:ASPxButton runat="server" ID="bRegister" Text="Register" CssClass="btn btn-theme btn-lg" AutoPostBack="false" CausesValidation="False">
                                <ClientSideEvents Click="
                                    function(s, e) { 
                                        if (ASPxClientEdit.ValidateGroup('CreateContact')) { 
                                            cCreateContact.PerformCallback(
                                                tbRName.GetText() + '|' +
                                                cbRCountry.GetValue() + '|' +
                                                cbRCity.GetValue() + '|' +
                                                cbRBusinessSector.GetValue() + '|' +  //tbRAddress.GetText() + '|' +
                                                cbRSalesRange.GetValue() + '|' +  //tbRPhone.GetText() + '|' +
                                                cbREmployeesNumber.GetValue() + '|' +  //tbRWebSite.GetText() + '|' +
                                                ' ' + '|' + //tbREmail.GetText() + '|' +
                                                tbCLastName.GetText() + '|' +
                                                tbCFirstName.GetText() + '|' +
                                                tbCEmail.GetText() + '|' +
                                                tbCMobile.GetText());
                                        }
                                    }" >
                                </ClientSideEvents>
                            </dx:ASPxButton>
                        </p>

						
					</div>
                    <!-- End contact-form -->
				  
				</div><!-- End row -->
				
			</div><!-- End container -->
			
		</section><!-- End contact section -->
		
		<!-- ==============================================
		FOOTER
		=============================================== -->	
		<footer id="main-footer">
		
			<div class="container">
			
				<div class="row">
				
					<div class="col-sm-6 left-col">
						<h1 class="small-logo">GoldinMine<br><span>B2B Market Surveys in real time</span></h1>
						<ul class="footer-nav">
							<li><a class="scrollto" href="#home">Our process</a></li>
							<li><a class="scrollto" href="#services">Our App</a></li>
							<li><a class="scrollto" href="#portfolio">About us</a></li>
							<li><a class="scrollto" href="#contact">Register</a></li>
						</ul>
						<p>&copy;2016 by GoldinMine</p>
					</div>
					
					<div class="col-sm-6 right-col">
						<h2>Who we are?</h2>
						<p>Who</p>
					</div>
					
				</div><!-- End row -->
				
			</div><!-- End container -->
			
		</footer><!-- End footer -->

		<!-- ==============================================
		SCRIPTS
		=============================================== -->	
		<script src="../../../ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/libs/jquery-1.9.1.min.js">\x3C/script>')</script>
		
		<script src="js/libs/bootstrap.min.js"></script>
		<script src='js/jquery.scrollto.js'></script>
		<script src='js/jquery.flexslider.min.js'></script>
		<script src='js/twitterFetcher_min.js'></script>
		<script src='js/jquery.masonry.min.js'></script>
		<script src="js/waypoints.min.js"></script>
		<script src="js/jquery.easypiechart.min.js"></script>
		<script src="js/jquery.backstretch.min.js"></script>
		<script src="js/contact.js"></script>
		<script src="js/designr.js"></script>

        <dx:ASPxCallback ID="cCreateContact" ClientInstanceName="cCreateContact" OnCallback="cCreateContact_Callback" runat="server">
            <ClientSideEvents CallbackComplete="
                function(s, e) {
                    if (e.result == 'OK') {
                        alert('Registered!');
                    }
                    else {
                        alert('Something wrong!');
                    }
                 }" />
        </dx:ASPxCallback>

        </form>
	
	</body>
	
</html>


<script runat="server">

    readonly LDADataContext db = new LDADataContext(COM.Connections.ConStr);

    protected void Page_Load(object sender, EventArgs e)
    {
        cbRCountry.DataSource = db.d_country.OrderBy(c => c.d_country_name).ToList();
        cbRCountry.DataBind();

        FillComboFromDB(cbRBusinessSector, "Select ssector_id, ssector_name from crm_sub_sector order by ssector_name");
        FillComboFromDB(cbRSalesRange, "select le_id, le_name from dbo.CRM_element_value where elem_id=2");
        FillComboFromDB(cbREmployeesNumber, "select le_id, le_name from dbo.CRM_element_value where elem_id=4");
    }

    protected void cbRCity_Callback(object sender, CallbackEventArgsBase e)
    {
        int countryId;
        if (int.TryParse(e.Parameter, out countryId))
            FillCityCombo(countryId);
    }

    protected void FillCityCombo(int countryId)
    {
        if (countryId <= 0) return;

        cbRCity.DataSource = db.D_city.Where(c => c.d_country_id == countryId).OrderBy(c => c.d_city_name).ToList();
        cbRCity.DataBind();
    }

    protected void FillComboFromDB(ASPxComboBox combobox, string sqlQuery)
    {
        using (SqlConnection con = new SqlConnection(COM.Connections.ConStr))
        {
            con.Open();
            using (SqlCommand command = new SqlCommand(sqlQuery, con))
            {
                DataTable dt = new DataTable();
                dt.Load(command.ExecuteReader());
                combobox.DataSource = dt;
                combobox.DataBind();
            }
        }
    }

    protected void SaveComboDataToDB(ASPxComboBox combobox, string sqlQuery)
    {
        using (SqlConnection con = new SqlConnection(COM.Connections.ConStr))
        {
            con.Open();
            using (SqlCommand command = new SqlCommand(sqlQuery, con))
            {
                command.ExecuteNonQuery();
            }
        }
    }

    protected void cCreateContact_Callback(object source, CallbackEventArgs e)
    {
        string[] pars = e.Parameter.Split('|');

        LetEatGo wsLetEatGo = new LetEatGo();

        wsLetEatGo.Credentials.UserName = "BBRich";
        wsLetEatGo.Credentials.Password = "APIBD2014";

        CRM_client crmClient = new CRM_client
        {
            cl_name = pars[0],
            d_country_id = Convert.ToInt32(pars[1]),
            d_city_id = Convert.ToInt32(pars[2]),
            cl_put_date = DateTime.Now
        };
        db.CRM_clients.InsertOnSubmit(crmClient);
        db.SubmitChanges();

        SaveComboDataToDB(string.Format("INSERT INTO [GoldinMine].[dbo].[crm_element_client] ([cl_id] ,[elem_id],[le_value]) VALUES ({0}, 2, {1})", crmClient.cl_id, pars[4]));
        SaveComboDataToDB(string.Format("INSERT INTO [GoldinMine].[dbo].[crm_element_client] ([cl_id] ,[elem_id],[le_value]) VALUES ({0}, 4, {1})", crmClient.cl_id, pars[5]));

        e.Result = wsLetEatGo.AddNewUser(pars[7], pars[8], pars[9], "", crmClient.d_city_id.Value, crmClient.d_country_id.Value, 72/*//for localhost = 1*/, "", "0", "", "", crmClient.cl_id, 0);
    }

</script>

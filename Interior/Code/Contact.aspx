<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Kalpak</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Upholstery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome-icons -->
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

    <script type="text/javascript">
        function varifyNum(e) {

            if (event.keyCode < 44 || event.keyCode > 57 || event.keyCode == 47 || event.keyCode == 45) {
                if (event.keyCode < 96 || event.keyCode > 105) {
                    if (event.keyCode = 32) {
                        alert("Spaces not allowed.");
                        event.returnValue = false;

                    }
                    else {
                        alert("Characters are not allowed.");
                        event.returnValue = false;
                    }
                }

            }
        }
    </script>
</head>
	
<body>
<!-- banner -->
	<div class="banner1 jarallax">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="Default.aspx"> <img src="images/KI_T.jpg" width="250px" /></a>
				</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-8" id="link-effect-8">
						<ul class="nav navbar-nav">
							<li><a href="Default">Home</a></li>
							<li><a href="Services">Services</a></li>
							<li><a href="Projects">Projects</a></li>
							
							<li class="active"><a href="Contact">Contact</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
<!-- //banner -->	
<!-- contact -->
	<div class="contact">
		<div class="container">
			<h2 class="w3ls_head"><span>Cont</span>act</h2>
			
			<div class="map-grid">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3785.8569492800143!2d76.57427381545396!3d18.39936058747958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf8395ec62c7cd%3A0x1205746a43224929!2sKalpak+Interior+Design+Studio!5e0!3m2!1sen!2sin!4v1526309614387" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="address">
				<div class="col-sm-4 address-grids">
					<h4>Address :</h4>
					<p>41-42, Vyapari Dharmashala Complex,<br> Gandhi Chowk, Sawe Wadi,<br> Latur, Maharashtra 413512
					</p>	
				</div>
				<div class="col-sm-4 address-grids">
					<h4>Phone :</h4>
					<p>+(91) 9822008734 </p>
					<p>+(91) 94229 68838</p>
				</div>
				<div class="col-sm-4 address-grids">
					<h4>Email :</h4>
					<p><a href="pp.mundada@gmail.com">pp.mundada@gmail.com</a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="contact-form">
				<h4>Contact Form</h4>
                <form id="from1" runat="server">
				<div class="contact-form-grid">
					<asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger controlid="btnSend" eventname="Click" />
        </Triggers>
            <ContentTemplate>
               <div class="fields-grid">
							<div class="styled-input agile-styled-input-top">
								<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                
								<label>Full Name <strong><span style="font-size: 9pt; color: #ff0033; font-family: Arial">*</span></strong></label>
								<span></span>
							</div>
							<div class="styled-input agile-styled-input-top">
								<asp:TextBox ID="txt_Phone" runat="server" MaxLength="10"></asp:TextBox> 
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
                                ControlToValidate="txt_Phone" ErrorMessage="Invalid!"  
                                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
								<label>Phone <strong><span style="font-size: 9pt; color: #ff0033; font-family: Arial">*</span></strong></label>
								<span></span>
							</div>
							<div class="styled-input">
								<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
								<label>Email <strong><span style="font-size: 9pt; color: #ff0033; font-family: Arial">*</span></strong></label>
								<span></span>
							</div> 
							<div class="styled-input">
                                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
								<label>Subject <strong><span style="font-size: 9pt; color: #ff0033; font-family: Arial">*</span></strong></label>
								<span></span>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="styled-input textarea-grid">
							<asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
							<label>Message <strong><span style="font-size: 9pt; color: #ff0033; font-family: Arial">*</span></strong></label>
							<span></span>
						</div>	 
					<asp:Button ID="btnSend" runat="server" Text="SEND"  onclick="btnSend_Click" />        
            </ContentTemplate>
        </asp:UpdatePanel>

						
				
				</div>
                    </form>
			</div>
		</div>
	</div>
	<!-- //contact -->



			
		
			<div class="agileinfo_copyright footer">
				<p>© 2018 Kalpak. All Rights Reserved | Design by <a href="http://instantsoftech.com/">Instant Softech</a></p>
			</div>

	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
</body>
</html>
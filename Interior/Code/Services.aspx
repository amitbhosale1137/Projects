<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>


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
					<h1><a class="navbar-brand" href="Default.aspx"><img src="images/KI_T.jpg" width="250px" /></a></h1>
				</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-8" id="link-effect-8">
						<ul class="nav navbar-nav">
							<li><a href="Default">Home</a></li>
							<li class="active"><a href="Services">Services</a></li>
							<li><a href="Projects">Projects</a></li>
							<li><a href="Contact">Contact</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
<!-- //banner -->	
<!-- services -->
<div class="service-w3l">
	<div class="container">
		<h2 class="w3ls_head"><span>Serv</span>ices</h2>
			<form runat="server" id="form1">
		<div class="service-grids">
			<div class="col-xs-4 ser-grid">
				<div class="ser-top">
					<div class="con hvr-shutter-in-horizontal">
						<i class="fa fa-cubes" aria-hidden="true"></i>
					</div>
					<h4>SPACE CONSULTATION</h4>
                    <p>There’s a lot anyone can do with a certain amount of given space. But will it look good? And will it work...</p>
					<asp:LinkButton ID="lnkbtn" runat="server" Font-Underline="false" Text="Read More" OnClick="lnkbtn_Click"> </asp:LinkButton>
                </div>
			</div>
			<div class="col-xs-4 ser-grid">
				<div class="ser-top">
					<div class="con hvr-shutter-in-horizontal">
						<i class="fa fa-home" aria-hidden="true"></i>
					</div>
					<h4>3D VISUALIZATION</h4>
                    <p>Imagine this. You're sitting in our office and talking to us about how you want your home to look....</p>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="false" Text="Read More" OnClick="lnkbtn_Click"> </asp:LinkButton>
				</div>
			</div>
			<div class="col-xs-4 ser-grid">
				<div class="ser-top">
					<div class="con hvr-shutter-in-horizontal">
						<i class="fa fa-clone" aria-hidden="true"></i>
					</div>
					<h4>QUALITY CONTROL</h4>
					<p>Quality! A lot of people tend to take that for granted, perhaps even organizations that have QC...</p>
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="false" Text="Read More" OnClick="lnkbtn_Click"> </asp:LinkButton>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="service-grids ser2">
			<div class="col-xs-4 ser-grid">
				<div class="ser-top">
					<div class="con hvr-shutter-in-horizontal">
						<i class="fa fa-gavel" aria-hidden="true"></i>
					</div>
					<h4>PROJECT MANAGEMENT</h4>
					<p>Project management and everything that comes as a part of it - now, that’s no walk in the park...</p>
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="false" Text="Read More" OnClick="lnkbtn_Click"> </asp:LinkButton>
				</div>
			</div>
			<div class="col-xs-4 ser-grid">
				<div class="ser-top">
					<div class="con hvr-shutter-in-horizontal">
						<i class="fa fa-paint-brush" aria-hidden="true"></i>
					</div>
					<h4>AFTER SALES CARE</h4>
					<p>So, yes - we definitely provide our customers with after sales services. Just like every other service we render...</p>
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="false" Text="Read More" OnClick="lnkbtn_Click"> </asp:LinkButton>
				</div>
			</div>
			
			<div class="clearfix"></div>
		</div>
                </form>
	</div>
</div>
<!-- //services -->
<!-- footer -->

			
			
		
			<div class="agileinfo_copyright footer">
				<p>© 2018 Kalpak. All Rights Reserved | Design by <a href="https://instantsoftech.com/">Instant Softech</a></p>
			</div>

<!-- //footer -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {

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

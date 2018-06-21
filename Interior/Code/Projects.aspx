<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Projects.aspx.cs" Inherits="Projects" %>

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
    <link rel="stylesheet" href="css/lsb.css">
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
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="images/KI_T.jpg" width="250px" /></a>

                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                    <nav class="link-effect-8" id="link-effect-8">
                        <ul class="nav navbar-nav">
                            <li><a href="Default">Home</a></li>
                            <li><a href="Services">Services</a></li>
                            <li class="active"><a href="Projects">Projects</a></li>
                            <li><a href="Contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
    </div>
    <!-- //banner -->
    <!-- projects -->
    <div class="gallery-grids">
        <div class="container">
            <h2 class="w3ls_head"><span>Proj</span>ects</h2>
            <form runat="server" id="form1">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label runat="server" Text="Filter Project"></asp:Label>
                        <asp:DropDownList ID="ddl_Filter" runat="server" EnableViewState="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_Filter_SelectedIndexChanged">
                        </asp:DropDownList>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddl_Filter" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                <br />

                <asp:DataList ID="dlImages" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">

                    <FooterStyle BackColor="#FFCC00" ForeColor="#FF3300" />
                    <ItemTemplate>
                        <div class="agile-gallery-grid">
                            <center>
                                <div class="agile-gallery">
                                    <br />
                                    <a id="imageLink" href='<%# Eval("ImageName","~/SlideImages/{0}") %>' title='<%#Eval("Description") %>' rel="lightbox[Brussels]" runat="server" >
                                    <asp:ImageButton ID="Image1" OnClick="Image1_Click" ImageUrl='<%# Bind("ImageName", "~/SlideImages/{0}") %>' ImageAlign="Middle" AlternateText='<%# Bind("Description") %>' runat="server" Width="255px" Height="169px" />
                                        <asp:HiddenField ID="hfield" runat="server" Value='<%# Eval("ID")%>' />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </a>
                                    <br />
                                    <asp:Label ID="lnkbtnName" runat="server" Text='<%# Bind("Description") %>' ForeColor="#ffb262" Font-Size="20px"></asp:Label>
                                    
                                   <br />
                                    </div>
                           </center>
                        </div>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Bottom" />
                </asp:DataList>
            </form>

        </div>



    </div>
    <!-- //projects -->

    <!-- footer -->

    <div class="agileinfo_copyright footer">
        <p>© 2018 Kalpak. All Rights Reserved | Design by <a href="https://instantsoftech.com/">Instant Softech</a></p>
    </div>

    <!-- //footer -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function () {


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
    <!-- lightspeedBox -->
    <script src="js/lsb.js"></script>
    <!-- //lightspeedBox -->

</body>
</html>




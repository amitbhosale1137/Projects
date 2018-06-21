<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Interior Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <img id="Image1" src="Images/assetslogo.jpg" style="position: relative;height:40%;width: 100%;">
                    </div>
                    <div class="panel-body">
                        <%--<form role="form">--%>
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="txtusername" class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnLogin" runat="server" 
                                    class="btn btn-lg btn-success btn-block" Text="Login" 
                                    onclick="btnLogin_Click" />
                            </fieldset>
                        <%--</form>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
    </form>
</body>
</html>


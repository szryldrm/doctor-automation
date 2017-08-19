﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HospitalProject.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/plugins/images/favicon.png" />
    <title>Giriş Sayfası</title>
    <!-- Bootstrap Core CSS -->
    <link href="../assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet" />
    <!-- animation CSS -->
    <link href="../assets/css/animate.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../assets/css/style.min.css" rel="stylesheet" />

    <!-- color CSS -->
    <link href="../assets/css/colors/megna.css" id="theme" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <!-- Preloader -->
        <div class="preloader">
            <div class="cssload-speeding-wheel"></div>
        </div>
        <section id="wrapper" class="login-register">
            <div class="login-box login-sidebar">
                <div class="white-box">
                    <div class="form-horizontal form-material" id="loginform" action="index.html">
                        <a href="javascript:void(0)" class="text-center db">
                            <img src="../assets/plugins/images/testCompanyLogo.png" alt="Home" /></a>
                        <div class="form-group m-t-40">
                            <div class="col-xs-12">
                                <input id="txtUserName" runat="server" class="form-control" type="text" placeholder="Kullanıcı Adınız">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <input id="txtPassword" runat="server" class="form-control" type="password" placeholder="Şifreniz">
                            </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <button id="btnLogin" class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit"  runat="server" onserverclick="btnLogin_ServerClick">Giriş Yap</button>
                            </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <asp:Panel id="alertDiv" runat="server" Visible="false"><asp:Label ID="lblAlert" runat="server"/></asp:Panel>
                            </div>
                        </div>
                        
                    </div>
                </div>
        </section>
        <!-- jQuery -->
        <script src="../assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="../assets/bootstrap/dist/js/tether.min.js"></script>
        <script src="../assets/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../assets/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="../assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="../assets/js/waves.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="../assets/js/custom.min.js"></script>
        <!--Style Switcher -->
        <script src="../assets/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    </form>
</body>
</html>

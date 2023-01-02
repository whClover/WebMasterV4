<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebMasterV4._Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BSF Plant Application Dashboard</title>

    <asp:PlaceHolder runat="server">
        <%: Styles.Render("~/Css") %>
    </asp:PlaceHolder>

    <style>
        .img-demo {
            position: relative;
            float: left;
            background: #3a3a3a;
            border: 1px solid rgba(0,0,0,.2);
            width: auto;
            min-width: 40px;
            padding: 5px 10px;
            color: #fff;
            text-align: center;
            line-height: 40px;
            font-size: 15px;
            border-radius: 4px;
        }
    </style>
</head>
<body data-layout="horizontal">
    <!-- Begin page -->
        <div id="layout-wrapper">

            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box">
                            <a href="index.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-dark.png" alt="" height="22">
                                </span>
                            </a>

                            <a href="index.html" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-light.png" alt="" height="22">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 d-lg-none header-item" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>
                    </div>
                </div>
                <div class="topnav">
                    <div class="container-fluid">
                        <nav class="navbar navbar-light navbar-expand-lg topnav-menu">
    
                            <div class="collapse navbar-collapse" id="topnav-menu-content">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link arrow-none" href="layouts-horizontal.html">
                                            <i class="icon nav-icon" data-feather="layout"></i>
                                            <span data-key="t-horizontal">Main Manu</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
    


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">Welcome Back !</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Main menu</a></li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-sm-7">
                                                <span class="fw-bold font-size-16">Component Rebuilt Center</span>
                                                <p class="fst-italic">Web Applications</p>
                                                <div class="mt-4">
                                                    <a href="pricing-basic.html" class="btn btn-primary">Open !</a>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 text-center">
                                                <img src="assets/images/logo/logo-tcrc.png" class="img-fluid w-75" alt="" />
                                            </div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div>
                                <!-- end card -->
                            </div>
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-sm-7">
                                                <span class="fw-bold font-size-16">Plant External Repair</span>
                                                <p class="fst-italic">Web Applications</p>
                                                <div class="mt-4">
                                                    <a href="pricing-basic.html" class="btn btn-primary">Open !</a>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 text-center">
                                                <img src="assets/images/illustrator/2.png" class="img-fluid" alt="" />
                                            </div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div>
                                <!-- end card -->
                            </div>
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-sm-7">
                                                <span class="fw-bold font-size-16">Machine Rebuilt Program</span>
                                                <p class="fst-italic">Web Applications</p>
                                                <div class="mt-4">
                                                    <a href="pricing-basic.html" class="btn btn-primary">Open !</a>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 text-center">
                                                <img src="assets/images/illustrator/2.png" class="img-fluid" alt="" />
                                            </div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div>
                                <!-- end card -->
                            </div>
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-sm-7">
                                                <span class="fw-bold font-size-16">Fabrications Shop</span>
                                                <p class="fst-italic">Web Applications</p>
                                                <div class="mt-4">
                                                    <a href="pricing-basic.html" class="btn btn-primary">Open !</a>
                                                </div>
                                            </div>
                                            <div class="col-sm-5 text-center">
                                                <img src="assets/images/illustrator/2.png" class="img-fluid" alt="" />
                                            </div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div>
                                <!-- end card -->
                            </div>
                        </div>
                        
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> &copy; Dashonic.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://Pichforest.com/" target="_blank" class="text-reset">Pichforest</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

    <asp:PlaceHolder runat="server">
        <%= Scripts.Render("~/Scripts") %>
    </asp:PlaceHolder>
</body>
</html>
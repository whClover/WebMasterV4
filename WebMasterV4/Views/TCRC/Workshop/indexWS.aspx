<%@ Page Title="Workshop Page" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="indexWS.aspx.vb" Inherits="WebMasterV4.indexWS" %>

<%@ Register Src="~/Views/Shared/MenuTCRC.ascx" TagPrefix="uc1" TagName="MenuTCRC" %>


<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <uc1:MenuTCRC runat="server" ID="MenuTCRC" />
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Workshop Page</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">TCRC</a></li>
                            <li class="breadcrumb-item active">Workshop</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-xl-3 col-sm-6">
                <div class="card shadow-none border">
                    <div class="card-body p-3">
                        <div>
                            <div class="float-end ms-2">
                                <div class="mb-2">
                                    <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" Enabled="false">
                                        <i class="fas fa-exclamation-circle"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="avatar-sm me-3 mb-3">
                                <img src="~/assets/images/Icon/Inspection.png" runat="server" class="img-fluid mb-3" /> <br />
                            </div>
                            <div>
                                <h5 class="font-size-14 text-truncate"><a href="javascript: void(0);" class="text-body">Module Inspection</a></h5>
                            </div>
                        </div>
                    </div><!-- end card body -->
                    <div class="card-footer">
                        <div class="mb-4">
                            <ul class="list-unstyled categories-list">
                                <li>
                                    <a href="~/Views/TCRC/Workshop/Inspection/MeaInspWorksheet.aspx" runat="server" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Measurement Inspection Worksheet</span> 
                                    </a>
                                </li>                                
                                <li>
                                    <a href="~/Views/TCRC/Workshop/Inspection/MeaInspTemplate.aspx" runat="server" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Measurement Inspection Template</span> 
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Preliminary Inspection Worksheet</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Preliminary Inspection Template</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div><!-- end card -->
            </div><!-- end col -->
        
            <div class="col-xl-3 col-sm-6">
                <div class="card shadow-none border">
                    <div class="card-body p-3">
                        <div>
                            <div class="float-end ms-2">
                                <div class="mb-2">
                                    <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" Enabled="false">
                                        <i class="fas fa-exclamation-circle"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="avatar-sm me-3 mb-3">
                                <img src="~/assets/images/Icon/Assembling.png" runat="server" class="img-fluid mb-3" />
                            </div>
                            <div>
                                <h5 class="font-size-14 text-truncate"><a href="javascript: void(0);" class="text-body">Module Assembly</a></h5>
                            </div>
                        </div>
                    </div><!-- end card body -->
                    <div class="card-footer">
                        <div class="mb-4">
                            <ul class="list-unstyled categories-list">
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Assembly Worksheet</span> 
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Assembly Template</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div><!-- end card -->
            </div><!-- end col -->

            <div class="col-xl-3 col-sm-6">
                <div class="card shadow-none border">
                    <div class="card-body p-3">
                        <div>
                            <div class="float-end ms-2">
                                <div class="mb-2">
                                    <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" Enabled="false">
                                        <i class="fas fa-exclamation-circle"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="avatar-sm me-3 mb-3">
                                <img src="~/assets/images/Icon/calendar.png" runat="server" class="img-fluid mb-3" />
                            </div>
                            <div>
                                <h5 class="font-size-14 text-truncate"><a href="javascript: void(0);" class="text-body">Module Timesheet</a></h5>
                            </div>
                        </div>
                    </div><!-- end card body -->
                    <div class="card-footer">
                        <div class="mb-4">
                            <ul class="list-unstyled categories-list">
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Work Order Activity</span> 
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript: void(0);" class="text-body bg-light d-flex align-items-center">
                                        <i class="fas fa-angle-double-right font-size-13 me-2 text-primary"></i> <span class="me-auto">Timesheet Mechanic</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div><!-- end card -->
            </div><!-- end col -->

            <div class="col-xl-3 col-sm-6">
                <div class="card shadow-none border">
                    <div class="card-body p-3">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card bg-transparent">
                                    <div class="card-body bg-light">
                                        <div class="box">
                                            <div class="text-center">
                                                <img src="~/assets/images/Icon/spare-parts.png" runat="server" class="img-fluid mb-3" /> <br />
                                                <a runat="server" href="~/LoginPage.aspx?id=1" type="text/html" class="mt-3">PartList</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                         
                            </div>
                            <div class="col-md-6">
                                <div class="card bg-transparent">
                                    <div class="card-body bg-light">
                                        <div class="box">
                                            <div class="text-center">
                                                <img src="~/assets/images/Icon/spare-parts.png" runat="server" class="img-fluid mb-3" /> <br />
                                                <a runat="server" href="~/LoginPage.aspx?id=1" type="text/html" class="mt-3">Partkit</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                         
                            </div>
                        </div>
                    </div>
                </div><!-- end card -->
            </div><!-- end col -->
        </div><!-- end row -->
</asp:Content>

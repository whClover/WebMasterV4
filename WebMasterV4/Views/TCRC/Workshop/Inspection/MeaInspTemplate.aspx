<%@ Page Title="Measurement Inspection" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="MeaInspTemplate.aspx.vb" Inherits="WebMasterV4.MeaInspTemplate" %>

<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTCRC.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Measurement Inspection List</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Workshop Page</a></li>
                            <li class="breadcrumb-item active">Measurement Inspection</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header justify-content-between d-flex align-items-center">
                        <%--<h4 class="card-title">User Table</h4>--%>
                        <div class="btn-group mt-4 mt-md-0" role="group" aria-label="Basic example">
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" ID="bSearch" OnClick="bSearch_Click">
                                <i class="fa fa-search"></i> Search
                            </asp:LinkButton>
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" ID="bAdd" OnClick="bAdd_Click">
                                <i class="fa fa-plus"></i> Add
                            </asp:LinkButton>
                        </div>
                    </div><!-- end card header -->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="tFullName">Full Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tFullName" placeholder="..." AutoCompleteType="Disabled"></asp:TextBox>
                                </div>                                
                            </div>
                            <div class="col-md-4">
                                <div class="mb-3">
                                    <label for="tUserID">UserID</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="tUserID" placeholder="..." AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="ddTitle">Job Title</label>
                                <asp:ListBox data-trigger id="ddTitle" runat="server" CssClass="form-control form-control-sm" Height="30px" SelectionMode="Multiple"></asp:ListBox>
                            </div>
                        </div>
                        <asp:Label runat="server" ID="lcount" CssClass="badge badge-soft-primary"></asp:Label>
                        <asp:Label runat="server" ID="lerror" CssClass="badge badge-soft-danger" style="text-align:left !important"></asp:Label>
                    </div>
                    <div class="card-footer">
                        <div class="pb-4">
                            <div class="table-responsive">
                                <asp:GridView runat="server" ID="gv_Insp" AutoGenerateColumns="false">
                                    <Columns>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
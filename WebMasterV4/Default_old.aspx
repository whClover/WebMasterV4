<%@ Page Title="Start Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Default_old.aspx.vb" Inherits="WebMasterV4._Default" %>

<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTCRC.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="mb-0">Starter Page</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Site Master</a></li>
                        <li class="breadcrumb-item active">Starter Page</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- end page title -->
</asp:Content>

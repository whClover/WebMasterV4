<%@ Page Title="Users Page" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="Users.aspx.vb" Inherits="WebMasterV4.Users" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>

<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTMRP.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Sample Page</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Site Master</a></li>
                            <li class="breadcrumb-item active">Table</li>
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
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary" ID="bExport" OnClick="bExport_Click" >
                                <i class="fas fa-download"></i> Export
                            </asp:LinkButton>
                        </div>
                        <asp:LinkButton runat="server" CssClass="btn btn-light" ID="bGetCheck" OnClick="bGetCheck_Click">
                            <i class="fas fa-check-circle"></i> Get-Checked
                        </asp:LinkButton>
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
                            <div data-simplebar style="max-height: 500px;">
                                <div class="table-responsive mt-2">
                                    <asp:GridView runat="server" ID="gvUser" AutoGenerateColumns="false" CssClass="table table-striped table-bordered gridview" 
                                        OnRowDataBound="gvUser_RowDataBound" ShowHeader="true">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <HeaderTemplate>
                                                    <asp:CheckBox ID="chkSelectAll" runat="server" OnCheckedChanged="chkSelectAll_CheckedChanged" AutoPostBack="true" />
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chkSelect" runat="server"  />
                                                </ItemTemplate>
                                            </asp:TemplateField>
			                                <%--<asp:BoundField DataField="UserID" HeaderText="UserID" />--%>
                                            <asp:TemplateField HeaderText="UserID">
                                                <ItemTemplate>
                                                    <asp:Button runat="server" ID="bEdit" CssClass="btn btn-link btn-sm" Text='<%# Eval("UserID") %>' OnClick="bEdit_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="UserName">
                                                <HeaderTemplate>
                                                    UserName
                                                    <asp:TextBox runat="server" CssClass="form-control form-control-sm" ID="tUsername"></asp:TextBox>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("UserName") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
			                                <asp:BoundField DataField="FullName" HeaderText="FullName" />
			                                <asp:BoundField DataField="Email" HeaderText="Email Address" />
			                                <asp:BoundField DataField="JobTitle" HeaderText="Title" />
		                                </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>        
                    </div>
                    <!-- end card body -->
                </div>
                <!-- end card -->
            </div>
        </div>
    </form>

    <!-- Full screen modal content -->
    <div id="sampleModal1" class="modal fade exampleModalFullscreen" tabindex="-1"
        aria-labelledby="exampleModalFullscreenLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalFullscreenLabel">Fullscreen
                        Modal Heading</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h5>Overflowing text to show scroll behavior</h5>
                    <p>Cras mattis consectetur purus sit amet fermentum.
                        Cras justo odio, dapibus ac facilisis in,
                        egestas eget quam. Morbi leo risus, porta ac
                        consectetur ac, vestibulum at eros.</p>
                    <p>Praesent commodo cursus magna, vel scelerisque
                        nisl consectetur et. Vivamus sagittis lacus vel
                        augue laoreet rutrum faucibus dolor auctor.</p>
                    <p>Aenean lacinia bibendum nulla sed consectetur.
                        Praesent commodo cursus magna, vel scelerisque
                        nisl consectetur et. Donec sed odio dui. Donec
                        ullamcorper nulla non metus auctor
                        fringilla.</p>
                    <p>Cras mattis consectetur purus sit amet fermentum.
                        Cras justo odio, dapibus ac facilisis in,
                        egestas eget quam. Morbi leo risus, porta ac
                        consectetur ac, vestibulum at eros.</p>
                    <p>Praesent commodo cursus magna, vel scelerisque
                        nisl consectetur et. Vivamus sagittis lacus vel
                        augue laoreet rutrum faucibus dolor auctor.</p>
                    <p>Aenean lacinia bibendum nulla sed consectetur.
                        Praesent commodo cursus magna, vel scelerisque
                        nisl consectetur et. Donec sed odio dui. Donec
                        ullamcorper nulla non metus auctor
                        fringilla.</p>
                    <p>Cras mattis consectetur purus sit amet fermentum.
                        Cras justo odio, dapibus ac facilisis in,
                        egestas eget quam. Morbi leo risus, porta ac
                        consectetur ac, vestibulum at eros.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary ">Save changes</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <script type="text/javascript">
        //$(document).ready(function () {
        //    $("#bTest").click(function () {
        //        $("#sampleModal1").modal('show');
        //    });
        //});
    </script>
</asp:Content>
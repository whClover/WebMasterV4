<%@ Page Title="Users Page" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="Users.aspx.vb" Inherits="WebMasterV4.Users" %>

<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTMRP.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Table Page</h4>

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
                        <h4 class="card-title">User Table</h4>
                    </div><!-- end card header -->
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView runat="server" ID="gvUser" AutoGenerateColumns="false" CssClass="table table-striped table-bordered" >
                                <Columns>
			                        <asp:TemplateField ItemStyle-CssClass="text-center">
				                        <ItemTemplate>
					                        <asp:LinkButton ID="bshow" runat="server" CssClass="btn btn-primary btn-sm">
                                                <i class="fa fa-edit"> </i>
                                            </asp:LinkButton>
				                        </ItemTemplate>
			                        </asp:TemplateField>
			                        <asp:BoundField DataField="UserID" HeaderText="UserID" />
			                        <asp:BoundField DataField="Username" HeaderText="Username" />
			                        <asp:BoundField DataField="FullName" HeaderText="FullName" />
			                        <asp:BoundField DataField="Email" HeaderText="Email Address" />
			                        <asp:BoundField DataField="JobTitle" HeaderText="Title" />
		                        </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <!-- end card body -->
                </div>
                <!-- end card -->
            </div>
        </div>
    </form>
</asp:Content>
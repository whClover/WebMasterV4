<%@ Page Title="Measure Inspection Template Section" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="MeaInspTemplateSec.aspx.vb" Inherits="WebMasterV4.MeaInspTemplateSec" %>

<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTCRC.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form id="form1" runat="server">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0">Measurement Inspection Template</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="javascript: void(0);">Workshop Page</a></li>
                            <li class="breadcrumb-item">Measurement Inspection Template</li>
                            <li class="breadcrumb-item active">Measurement Inspection Template Details</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <ul class="nav nav-tabs nav-tabs-custom nav-justified mb-3" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#home2" role="tab">
                                    <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                    <span class="d-none d-sm-block">Section List</span> 
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#profile2" role="tab">
                                    <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                                    <span class="d-none d-sm-block">Details Section</span> 
                                </a>
                            </li>
                        </ul>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">ID</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tID" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Unit Descriptions</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tUnitDesc" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Component</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tComp" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Template Descriptions</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tDesc" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Register By</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tRegBy" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Register Date</label>
                                    <div class="col-md-10">
                                        <asp:TextBox ID="tRegDate" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="btn-group mt-4 mt-md-0" role="group" aria-label="Basic example">
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary mb-3" ID="bAdd" OnClick="bAdd_Click">
                                <i class="fa fa-plus"></i> Add Section
                            </asp:LinkButton>
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary mb-3" ID="bUpload" OnClick="bUpload_Click">
                                <i class="fa fa-upload"></i> Upload Template
                            </asp:LinkButton>
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary mb-3" ID="LinkButton2">
                                <i class="fas fa-file-pdf"></i> Show Sample
                            </asp:LinkButton>
                            <asp:LinkButton runat="server" CssClass="btn btn-soft-primary mb-3" ID="LinkButton1">
                                <i class="fas fa-arrow-alt-circle-left"></i> Back
                            </asp:LinkButton>
                        </div>
                        <div class="table-responsive">
                            <asp:GridView runat="server" OnRowCommand="gvSection_RowCommand" ID="gvSection" AutoGenerateColumns="false" CssClass="table table-striped table-bordered gridview">
                                <Columns>
                                    <asp:TemplateField ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Button runat="server" ID="bDetails" CssClass="btn btn-link btn-sm" Text="Details" /> |
                                            <asp:Button runat="server" ID="bEdit" CssClass="btn btn-link btn-sm" Text="Edit" 
                                                OnClick="bEdit_Click" seq='<%# Eval("SeqSection") %>' sec='<%# Eval("SectionName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SeqText" HeaderText="Sequence" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" />
                                    <asp:BoundField DataField="SectionName" HeaderText="Section Name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
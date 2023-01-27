<%@ Page Title="Upload Inspection Template Section" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="MeaInspTemplateUpload.aspx.vb" Inherits="WebMasterV4.MeaInspTemplateUpload" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <form runat="server">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Upload Template</h4>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <h4>How To Upload Data</h4>
                            <p>
                                1. Download template Below<br />
                                2. Fill data into template<br />
                                3. Save as data to .txt file<br />
                                4. Upload .txt file into web application
                            </p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:LinkButton runat="server" ID="bDownloadTemp" CssClass="btn btn-info" OnClick="bDownloadTemp_Click">
                            Download Template
                        </asp:LinkButton>
                    </div>
                    <div class="divider"></div>
                    <div class="col-md-12">
                        <label class="form-label" for="title">Upload Here...</label><br />
                        <asp:FileUpload runat="server" ID="dUpload" />
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Label runat="server" ID="lsuccess" CssClass="badge badge-soft-success" style="text-align:left !important"></asp:Label>
                    <asp:Label runat="server" ID="lerror" CssClass="badge badge-soft-warning" style="text-align:left !important"></asp:Label>
                    <div class="d-flex flex-wrap gap-2">
                        <asp:Button runat="server" CssClass="btn btn-soft-primary" ID="bUpload" OnClick="bUpload_Click" text="Upload"/>
                        <asp:Button runat="server" CssClass="btn btn-soft-primary" ID="bClose" OnClick="bClose_Click" Text ="Close" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
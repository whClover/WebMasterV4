<%@ Page Title="TCRC Dashboard" MasterPageFile="~/Site.Master" Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="WebMasterV4.index" %>


<asp:Content runat="server" ContentPlaceHolderID="MenuContent">
    <!-- #include file = "~/Views/Shared/MenuTCRC.aspx" -->
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    Dashboard will be shown here, soon...
    <form runat="server" id="form1" style="display:none">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Work Order Dashboard</h4>
                    </div>
                    <div class="card-body">
                        <asp:Button runat="server" CssClass="btn btn-soft-primary" OnClick="bRefresh_Click" ID="bRefresh" Text="Refresh" />
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Teardown</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="rpt_TD" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_TD" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview" OnRowDataBound="gv_TD_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Washing</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="rpt_wash">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Inspection</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater1" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">MPI</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater2" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Assembly</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater3" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Testing</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater4" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Place On Stand</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater5" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Painting</h4>
                    </div>
                    <div class="card-body" style="font-size:12px">                                                    
                        <asp:Repeater runat="server" ID="Repeater6" OnItemDataBound="rpt_TD_ItemDataBound">
                            <ItemTemplate>
                                <span id="ComponentDesc" runat="server" class="text-decoration-underline"><%# Eval("CombinedColumn") & "<br />" %></span>
                                <asp:GridView runat="server" ID="gv_wash" AutoGenerateColumns="false" CssClass="table table-bordered table-striped gridview">
                                    <Columns>
                                        <asp:BoundField DataField="wono" HeaderText="WONo" />
                                        <asp:BoundField DataField="ComponentName" HeaderText="Component" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:BoundField DataField="ActualLabHour" HeaderText="ActualLabHour" />
                                        <asp:BoundField DataField="TargetLabour" HeaderText="TargetLabour" />
                                    </Columns>
                                </asp:GridView>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        
    </form>
    <script>
        //$(document).ready(function () {
        //    var scrolling = true;
        //    var currentPosition = 0;
        //    var interval = setInterval(function () {
        //        if (scrolling) {
        //            currentPosition += 50;
        //            window.scrollTo(0, currentPosition);
        //            if (currentPosition >= document.body.scrollHeight) {
        //                scrolling = false;
        //            }
        //        } else {
        //            currentPosition -= 50;
        //            window.scrollTo(0, currentPosition);
        //            if (currentPosition <= 0) {
        //                scrolling = true;
        //            }
        //        }
        //    }, 500);
        //});
    </script>
    
</asp:Content>
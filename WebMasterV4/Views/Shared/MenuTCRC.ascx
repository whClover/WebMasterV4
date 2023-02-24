﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="MenuTCRC.ascx.vb" Inherits="WebMasterV4.MenuTCRC1" %>

<div class="topnav" runat="server">
    <div class="container-fluid">
        <nav class="navbar bg-soft-purple navbar-expand-lg topnav-menu">
            <div class="collapse navbar-collapse" id="topnav-menu-content">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="~/Views/TCRC/Index.aspx" runat="server">
                            <i class="fas fa-laptop text-purple"></i>
                            <span class="text-purple">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <asp:LinkButton CssClass="nav-link" runat="server" ID="bOffice" OnClick="bOffice_Click">
                            <i class="fas fa-building text-purple"></i>
                            <span class="text-purple">Office</span>
                        </asp:LinkButton>
                    </li>
                    <li class="nav-item dropdown">
                        <asp:LinkButton CssClass="nav-link" runat="server" ID="bWS" OnClick="bWS_Click">
                            <i class="fas fa-place-of-worship text-purple"></i>
                            <span class="text-purple">Workshop</span>
                        </asp:LinkButton>
                    </li>
                    <li class="nav-item dropdown">
                        <asp:LinkButton CssClass="nav-link" runat="server" ID="bLogout" OnClick="bLogout_Click">
                            <i class="fas fa-lock text-purple"></i>
                            <span class="text-purple">Logout</span>
                        </asp:LinkButton>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>

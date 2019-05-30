<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Availability.aspx.vb" Inherits="WebApplication3.Availability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 412px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <h3>Ride is Available! </h3>
        <h3>Make Payment to proceed with the current booking!</h3>
        <a href="WebForm3.aspx">Make Payment</a>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="GolfCartRegistration.aspx">Go Back</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="WebForm2.aspx">Cancel</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>

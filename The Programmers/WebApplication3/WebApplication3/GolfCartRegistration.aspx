<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="GolfCartRegistration.aspx.vb" Inherits="WebApplication3.GolfCartRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            text-align:right;
        }
        .auto-style2 {
            height: 14px;
        }
        .auto-style4 {
            height: 33px;
            text-align: right;
            width: 177px;
        }
        .auto-style5 {
            margin-left: 320px;
        }
    .auto-style6 {
        width: 102%;
        height: 445px;
    }
    .auto-style7 {
        height: 68px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style5">Please Enter Registration Details Below:</h2>

<table class="auto-style6">
  
  <tr>
    <th class="auto-style4" style="margin-left:200px">UNCC Id: </th>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
      </td>
  </tr>
  
  <tr>
    <th class="auto-style4" style="margin-left:200px">Number of people: </th>
      <td>
          <asp:DropDownList ID="DropDownList1" runat="server">
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
          </asp:DropDownList>
      </td>
  
  </tr>
    <tr>
    <th class="auto-style4" style="margin-left:200px">Start Location:</th>
      <td>
          <asp:DropDownList ID="DropDownList2" runat="server">
              <asp:ListItem>Lot 5A</asp:ListItem>
              <asp:ListItem>Lot 6A</asp:ListItem>
              <asp:ListItem>Cato Hall</asp:ListItem>
                <asp:ListItem>Belk Gym</asp:ListItem>
                <asp:ListItem>Atkins</asp:ListItem>
                <asp:ListItem>CRI Deck</asp:ListItem>
                <asp:ListItem>Grig Hall</asp:ListItem>
                <asp:ListItem>Student Union East</asp:ListItem>
                <asp:ListItem>Student Union East</asp:ListItem>
                <asp:ListItem>Aux services</asp:ListItem>
                <asp:ListItem>Woodward hall</asp:ListItem>
                <asp:ListItem>CHHS</asp:ListItem>
                <asp:ListItem>Martin Hall</asp:ListItem>
                <asp:ListItem>EPIC center</asp:ListItem>

          </asp:DropDownList>
      </td>
  
  </tr>
    <tr>
    <th class="auto-style4" style="margin-left:200px">End Location:</th>
      <td>
          <asp:DropDownList ID="DropDownList3" runat="server">
              <asp:ListItem>Lot 5A</asp:ListItem>
              <asp:ListItem>Lot 6A</asp:ListItem>
              <asp:ListItem>Cato Hall</asp:ListItem>
                <asp:ListItem>Belk Gym</asp:ListItem>
                <asp:ListItem>Atkins</asp:ListItem>
                <asp:ListItem>CRI Deck</asp:ListItem>
                <asp:ListItem>Grig Hall</asp:ListItem>
                <asp:ListItem>Student Union East</asp:ListItem>
                <asp:ListItem>Student Union East</asp:ListItem>
                <asp:ListItem>Aux services</asp:ListItem>
                <asp:ListItem>Woodward hall</asp:ListItem>
                <asp:ListItem>CHHS</asp:ListItem>
                <asp:ListItem>Martin Hall</asp:ListItem>
                <asp:ListItem>EPIC center</asp:ListItem>

          </asp:DropDownList>
      </td>
  
  </tr>
    <tr>
    <th class="auto-style4" style="margin-left:200px">Start Time:</th>
      <td>
          <asp:DropDownList ID="DropDownList4" runat="server">
              <asp:ListItem>6:00</asp:ListItem>
              <asp:ListItem>6:30</asp:ListItem>
              <asp:ListItem>7:00</asp:ListItem>
              <asp:ListItem>7:30</asp:ListItem>
              <asp:ListItem>8:00</asp:ListItem>
              <asp:ListItem>8:30</asp:ListItem>
              <asp:ListItem>9:00</asp:ListItem>
              <asp:ListItem>9:30</asp:ListItem>
              <asp:ListItem>10:00</asp:ListItem>
              <asp:ListItem>10:30</asp:ListItem>
          </asp:DropDownList>
      </td>
  
  </tr>
    <tr>
    <th class="auto-style4" style="margin-left:200px">End Time:</th>
      <td>
          <asp:DropDownList ID="DropDownList5" runat="server">
              <asp:ListItem>13:00</asp:ListItem>
              <asp:ListItem>13:30</asp:ListItem>
              <asp:ListItem>14:00</asp:ListItem>
              <asp:ListItem>14:30</asp:ListItem>
              <asp:ListItem>15:00</asp:ListItem>
              <asp:ListItem>15:30</asp:ListItem>
              <asp:ListItem>16:00</asp:ListItem>
              <asp:ListItem>16:30</asp:ListItem>
              <asp:ListItem>17:00</asp:ListItem>
              <asp:ListItem>17:30</asp:ListItem>
          </asp:DropDownList>
      </td>
  
  </tr>
    <tr>
    <th class="auto-style4" style="margin-left:200px">Select Date:</th>
    <td class="auto-style2"><asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></td>
    
  </tr>
    <tr>
        <th class="auto-style7"></th>
    <td class="auto-style7">
        <asp:Button ID="CheckAvailability" runat="server" Text="Check Availability" OnClientClick="CheckAvailability_Click" />
        </td>
  </tr>
</table>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="ChangeBooking.aspx.vb" Inherits="WebApplication3.ChangeBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height: 516px; width: 1028px">
          <tr>
    <th class="auto-style4" style="margin-left:200px">Enter Booking ID:</th>
    <td class="auto-style2">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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

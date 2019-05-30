<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 316px">
            <asp:HyperLink ID="AdminLogin" runat="server" NavigateUrl="http://localhost:54005/WebForm2.aspx">Admin Login</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="GuestLogin" runat="server">Guest Login</asp:HyperLink>
        </div>
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Text="Client side" NavigateUrl="Client.aspx" Font-Size="Large">

        </dx:ASPxHyperLink>
        <br />
        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Server side" NavigateUrl="Server.aspx" Font-Size="Large">
        </dx:ASPxHyperLink>
    </div>
    </form>
</body>
</html>
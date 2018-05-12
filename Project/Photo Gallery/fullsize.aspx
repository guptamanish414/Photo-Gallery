<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fullsize.aspx.cs" Inherits="Photo_Gallery.fullsize" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="register.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="page">
           <table id="Table1" class="page" runat="server">
            <tr class ="header">
                <td>
                        <div style="text-align:left; float: left;">
                            <img alt="Logo" src="images/Logo.png" style="padding-top:10px" />
                        </div>
                        <div style="text-align:center; float: right; padding-top:10px;">
                            <asp:Label ID="LoggedUser" runat="server" Font-Bold="False" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="White"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <asp:HyperLink ID="logout" runat="server" Font-Names="Comic Sans MS" ForeColor="Red" NavigateUrl="~/default.aspx">Logout...</asp:HyperLink>
                        </div>
                </td>
            </tr>

            <tr>
                <td class="content" colspan="2" runat="server">
                    <div id="im" style="background-image: url('<%=imgpath %>');">

                    </div>
                </td>
            </tr>
            <tr class="footer">
                <td colspan="2"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

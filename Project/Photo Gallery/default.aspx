<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Photo_Gallery.WebForm1" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="register.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table class="page">
            <tr class ="header">
                <td colspan="2">
                    <img alt="Logo" class="auto-style6" src="images/Logo.png" style="padding-top:10px" /></td>
            </tr>
            <tr>
                <td class="content-left">
                    </td>
                <td class="content-middle">
                    <table>
                        <tr>
                            <asp:Label ID="SignINLabel" runat="server" Text="Sign IN" Font-Bold="True" Font-Names="Corbel" Font-Size="X-Large"></asp:Label>
                        </tr>
                        <hr />
                        <tr>
                            <td class="auto-style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="UNLabel" runat="server" Text="UserName" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:textbox id="UN" type="text" runat="server" ></asp:textbox></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="PasswordLabel" runat="server" Text="Password" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:textbox id="Password" type="password" runat="server" ></asp:textbox></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td style="text-align: right ; padding-top:10px;">
                                <asp:Label ID="msg" runat="server" Text="UserName or Password Incorrect" Font-Bold="False" Font-Names="Comic Sans MS" ForeColor="Red" Visible="False"></asp:Label>
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#00CC00" BorderColor="Black" BorderStyle="Outset" Font-Bold="False" Font-Names="Bookman Old Style" Font-Overline="False" Font-Size="Medium" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td style="text-align: right ; padding-top:10px;">
                                
                                <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Font-Names="Comic Sans MS" NavigateUrl="~/register.aspx">Don&#39;t have an account? Create One..</asp:DynamicHyperLink>
                                
                            </td>
                        </tr>
                        
                    </table>
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

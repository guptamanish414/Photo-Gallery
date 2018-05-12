<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cat2.aspx.cs" Inherits="Photo_Gallery.cat2" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="register.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Category2</title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="page">
           <table class="page">
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
                <td class="menu" colspan="2" style="padding-left:10px; ">
                    <span class="menuitem">
                        <asp:HyperLink ID="category1" runat="server" Font-Names="Comic Sans MS" ForeColor="#000099" NavigateUrl="~/cat1.aspx" Font-Size="Large">Category1</asp:HyperLink>
                    </span>
                    <span class="menuitem" style="background-color:orangered;">
                        <asp:HyperLink ID="category2" runat="server" Font-Names="Comic Sans MS" ForeColor="#000099" NavigateUrl="~/cat2.aspx" Font-Size="Large">Category2</asp:HyperLink>
                    </span>
                    <span class="menuitem">
                        <asp:HyperLink ID="category3" runat="server" Font-Names="Comic Sans MS" ForeColor="#000099" NavigateUrl="~/cat3.aspx" Font-Size="Large">Category3</asp:HyperLink>
                    </span>
                    <span class="menuitem">
                        <asp:HyperLink ID="category4" runat="server" Font-Names="Comic Sans MS" ForeColor="#000099" NavigateUrl="~/cat4.aspx" Font-Size="Large">Category4</asp:HyperLink>
                    </span>
                    <div style="float:right;">
                    <span class="menuitem">
                        <asp:Label ID="uploadImage" runat="server" Font-Bold="False" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#006600">Have an image to share in this Category? Upload here....       </asp:Label>
                    </span>
                    <span class="menuitem">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="254px" />
                    </span>
                    <span class="menuitem">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                    </span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="content" colspan="2">
                    <%=imagesForConatiner %>;
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

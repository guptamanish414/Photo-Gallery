<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Photo_Gallery.register" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="register.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUP</title>
    <style type="text/css">
        .auto-style6 {
            width: 218px;
            height: 56px;
        }
    </style>
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
                            <asp:Label ID="SignUpLabel" runat="server" Text="Sign UP" Font-Bold="True" Font-Names="Corbel" Font-Size="X-Large"></asp:Label>
                        </tr>
                        <hr />
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="FNLabel" runat="server" Text="First Name" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:textbox id="FN" type="text" runat="server" ></asp:textbox></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="LNLabel" runat="server" Text="Last Name" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:textbox id="LN" type="text" runat="server" ></asp:textbox></td>
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
                                <asp:Label ID="MobileLabel" runat="server" Text="Mobile" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:textbox id="Mobile" type="text" runat="server"></asp:textbox></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="DOBLabel" runat="server" Text="DOB" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td>
                                <asp:DropDownList ID="Day" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100px">
                                    <asp:ListItem>Day</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="Month" runat="server" Height="28px" Width="100px" OnSelectedIndexChanged="Month_SelectedIndexChanged">
                                    <asp:ListItem>Month</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="Year" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="margin-bottom: 0px" Width="100px">
                                    <asp:ListItem>Year</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1990</asp:ListItem>
                                    <asp:ListItem>1989</asp:ListItem>
                                    <asp:ListItem>1988</asp:ListItem>
                                    <asp:ListItem>1987</asp:ListItem>
                                </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="GenderLabel" runat="server" Text="Gender" Font-Bold="True" Font-Names="Constantia"></asp:Label>
                                </td>
                            <td class="auto-style5">
                                <asp:RadioButtonList ID="Gender" runat="server" Height="26px" Width="161px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td style="text-align: right ; padding-top:10px">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#00CC00" BorderColor="Black" BorderStyle="Outset" Font-Bold="False" Font-Names="Bookman Old Style" Font-Overline="False" Font-Size="Medium" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                &nbsp;</td>
                            <td style="text-align: right ; padding-top:10px">
                                
                                <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" Font-Names="Comic Sans MS" NavigateUrl="~/default.aspx">Already Have an account. LogIn Here..</asp:DynamicHyperLink>
                                
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

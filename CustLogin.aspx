<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustLogin.aspx.cs" Inherits="EWallet.CustLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Login</title>
</head>
<body style="background-color: cornsilk">
    <form id="form1" runat="server">
        <div>
            <table style="margin: auto">
                <tr>
                    <td>
                        <asp:Image ID="imglogo" runat="server" ImageUrl="~/Images/FashionLogo.jpg" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCustID" runat="server" Text="Customer-ID" ForeColor="OrangeRed" Font-Bold="true"></asp:Label>
                        &nbsp&nbsp&nbsp
                        <asp:TextBox ID="txtCustID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Customer ID is Required" ControlToValidate="txtCustID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="OrangeRed" Font-Bold="true"></asp:Label>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Missing" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/Images/Login.PNG" Height="50px" Width="200px" OnClick="btnLogin_Click" />
                        &nbsp&nbsp&nbsp
                        <asp:LinkButton ID="lnkRegister" runat="server" Height="50px" Font-Bold="true" onclick="lnkRegister_Click" CausesValidation="false">Click Here for new User</asp:LinkButton>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>


                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="lnkForgotPassword" runat="server" Font-Italic="true" OnClick="lnkForgotPassword_Click" CausesValidation="false">Forgot Password ???</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

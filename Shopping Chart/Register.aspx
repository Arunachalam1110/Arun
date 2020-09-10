<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Shopping_Chart.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            height: 443px;
        }
        .auto-style5 {
            width: 358px;
        }
        .auto-style6 {
            width: 88px;
        }
        .auto-style9 {
            width: 88px;
            height: 86px;
        }
        .auto-style10 {
            width: 358px;
            height: 86px;
        }
        .auto-style15 {
            width: 88px;
            height: 53px;
        }
        .auto-style16 {
            width: 358px;
            height: 53px;
        }
        .auto-style17 {
            width: 88px;
            height: 57px;
        }
        .auto-style18 {
            width: 358px;
            height: 57px;
        }
        .auto-style19 {
            width: 88px;
            height: 33px;
        }
        .auto-style20 {
            width: 358px;
            height: 33px;
        }
        .auto-style21 {
            width: 88px;
            height: 55px;
        }
        .auto-style22 {
            width: 358px;
            height: 55px;
        }
    </style>
</head>
<body style="height: 692px">
    <form id="form1" runat="server">
    <div style="height: 982px">
    
        <table bgcolor="pink" class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration Page</h2></td>
               
            </tr>
            <tr>
                <td class="auto-style6"><b>Name:</b></td>
                <td class="auto-style5">
                    <asp:TextBox ID="Nametxtbox" runat="server" Height="31px" style="margin-top: 0px" Width="311px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;<b>phoneno:</b></td>
                <td class="auto-style10">
                    <asp:TextBox ID="phnotxtbox" runat="server" Height="31px" style="margin-top: 0px" Width="311px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;<b>EmailID:</b></td>
                <td class="auto-style20">
                    <asp:TextBox ID="emailtxtbox" runat="server" Height="31px" style="margin-top: 0px" Width="311px"></asp:TextBox>
                &nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtxtbox" ErrorMessage="enter correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;<b>gender:</b></td>
                <td class="auto-style22">
                    <asp:RadioButton ID="male" runat="server" Text="male" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="female" runat="server" Text="female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;<b>Address:</b></td>
                <td class="auto-style16">
                    <asp:TextBox ID="addresstxtbox" runat="server" Height="31px" style="margin-top: 0px" Width="311px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style17">&nbsp;<b>password:</b></td>
                <td class="auto-style18">
                    <asp:TextBox ID="passwordtxtbox" runat="server" Height="31px" style="margin-top: 0px" Width="311px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan ="2">
                    
                    <asp:Button ID="regtxtbox" runat="server" Text="Register" style="margin-left: 0px" Width="169px" OnClick="regtxtbox_Click" />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style6">

                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                </td>
            </tr>
        </table>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>

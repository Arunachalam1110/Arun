<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Shopping_Chart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <style type="text/css">
        .auto-style1 {
            height: 88px;
        }
        .auto-style2 {
            height: 82px;
        }
    </style>
    
    
</head>
<body style="height: 508px; width: 895px">
    <form id="form1" runat="server">
    <div>
    
        <table bgcolor="yellow" style="height: 299px; width: 298px; margin-right: 0px; margin-bottom: 8px;" >
            <tr>
                <td colspan="2" class="auto-style1" >&nbsp; <h2 style="width: 469px"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Page</h2></td>
               </tr>
            <tr>
                <td>&nbsp;<b> Email id:</b></td>
                <td >
                    <asp:TextBox ID="logtxtbox" runat="server" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<b>password:</b></td>
                <td >
                    <asp:TextBox ID="passtxtbox" runat="server" Width="237px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="loginbtn" runat="server" Text="Login" Width="107px" OnClick="loginbtn_Click" />
                </td>
                <td class="auto-style2"></td>
            </tr>
                <tr>
                    <td> 
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

        </table>
    
    </div>
    </form>
</body>
</html>

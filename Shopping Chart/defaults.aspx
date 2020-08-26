<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="defaults.aspx.cs" Inherits="Shopping_Chart.defaults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table style="width:848px; height:30px">
        <tr>

            <td colspan="2" ;>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Names="Goudy Old Style"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" NavigateUrl="~/Login.aspx">click here to login</asp:HyperLink>
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="log out" BackColor="#FF6699" BorderColor="#00CC66" Font-Bold="True" Font-Names="Comic Sans MS" n Height="26px" Width="67px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Height="290px" Width="850px" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-right: 0px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td text-align="center">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td text-align="center">
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="278px" 
                            imageurl='<%# Eval("pimage") %>'/>
                        
                    </td>
                </tr>
                 <tr>
                    <td text-align="center">
                        <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Bold="True"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td text-align="center">quantity
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="50px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/images/add to.jpg" Width="150px" CommandArgument='<%# Eval("pid") %>' CommandName="addtocart" />
                    </td>
                </tr>
            </table>
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cartConnectionString2 %>" SelectCommand="SELECT [pid], [pname], [price], [pimage] FROM [product]">

    </asp:SqlDataSource>
    
</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CURD_SP.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
            width: 652px;
        }
        .auto-style2 {
            height: 21px;
            width: 197px;
        }
        .auto-style3 {
            width: 197px;
        }
        .auto-style4 {
            width: 652px;
        }
        .auto-style5 {
            height: 21px;
            width: 296px;
        }
        .auto-style6 {
            width: 296px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="container-fluid">
            <h1>CRUD</h1>

        </div>



        <table class="w-100">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Product Id"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Specification"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Unit"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>PCS</asp:ListItem>
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>DZ</asp:ListItem>
                        <asp:ListItem>LTR</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Running</asp:ListItem>
                        <asp:ListItem>Unused</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Creation Date"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Width="821px">
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </div>

</asp:Content>

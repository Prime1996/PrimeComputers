<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Pages_specs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .detailsImage {
            width: 400px;
            height: 400px;
            margin-right: 20px;
            border-radius:50px;
    -moz-border-radius: 50px;
    -webkit-border-radius: 50px;
        }
        .detailsDescription {
            width: 400px;
            font-style: italic;
        }
        .detailsPrice {
            font-size: 24px;
            font-weight:bold;
        }
        .button {
            padding: 10px;
            margin: 10px;
            color: #ffffff;
            border: 0;
            border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            clear: both;
            background: linear-gradient(to bottom, #1A847F, #5DDED8);
        }

.productPrice {
    font-family: Arial, helvetica, sans-serif;
    color: #FFB600;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imgProduct" runat="server" CssClass="detailsImage"/></td>
            <td><h2>
                <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                <hr />
                </h2></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDescription" runat="server" CssClass="detailsDescription"></asp:Label></td>
            <td>
                <asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label><br />
            Quantity: 
            <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList>
                <br />
                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Add Product" />
            
            <asp:Label ID="lblResult" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Product Number: <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Available" CssClass="productPrice"></asp:Label></td>
        </tr>
    </table>
</asp:Content>


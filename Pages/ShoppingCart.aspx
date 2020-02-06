<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .cartTable {
            text-align:center;
            border: 15px solid #dcdad4;
            margin-bottom: 10px;
            width: 100%;
            padding: 10px;
        }

            .cartTable input {
                width: 65px;
                height: 65px;
            }
            .cartTable h4 {
                padding: 0;
                margin: 0;
            }
            .cartTable tr td select {
                width: 100px;
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

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlShoppingCart" runat="server">

    </asp:Panel>

    <table>
        <tr>
            <td><b>Total: </b></td>
            <td><asp:Literal ID="litTotal" runat="server" Text="" /></td>
        </tr>
         <tr>
            <td><b>Vat: </b></td>
            <td><asp:Literal ID="litVat" runat="server" Text="" /></td>
        </tr>
         <tr>
            <td><b>Shipping: </b></td>
            <td>Tk 500</td>
        </tr>
         <tr>
            <td><b>Total Amount: </b></td>
            <td><asp:Literal ID="litTotalAmount" runat="server" Text="" /></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/start.aspx" Text="Continue Shopping" />
                OR
                <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Pages/Success.aspx" CssClass="button" Width="250px" Text="CheckOut" />
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .input {
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            background-color: #EAEAEA;
            background: -moz-linear-gradient(top, #fff, #EAEAEA);
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0, 0, #FFF), color-stop(1, 0, #EAEAEA));
            border: 1px solid #CACACA;
            color: #444;
            margin: 0 0 25px;
            padding: 5px 9px;
            width: 260px;
        }

            .input:focus {
                background: #FFF;
                -webkit-box-shadow: 0 0 25px #CCC;
                -moz-box-shadow: 0 0 25px #ccc;
                box-shadow: 0 0 25px #CCC;
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
    <asp:Literal ID="litStatus" runat="server"></asp:Literal>
    <br />
    <br />
    UserName:<br />
    <br />
    <asp:TextBox ID="txtUname" runat="server" CssClass="input"></asp:TextBox>
    <br />
    <br />
    Password:<br />
    <br />
    <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    Confirm Password:<br />
    <br />
    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    First Name:<br />
    <br />
    <asp:TextBox ID="txtFName" runat="server" CssClass="input"></asp:TextBox>
    <br />
    <br />
    Last Name:<br />
    <br />
    <asp:TextBox ID="txtLName" runat="server" CssClass="input"></asp:TextBox>
    <br />
    <br />
    Address:<br />
    <br />
    <asp:TextBox ID="txtAddr" runat="server" CssClass="input"></asp:TextBox>
    <br />
    <br />
    Postal Code:<br />
    <br />
    <asp:TextBox ID="txtPCode" runat="server" CssClass="input"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Register" />
    <br />
</asp:Content>


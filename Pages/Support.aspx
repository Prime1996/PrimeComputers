<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Pages_Support" %>

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
    <marquee behavior="scroll" direction="left" style="font-size: 20px; color:#0d4386">Hot Line:+88042161914 || Sales section open 10:00-20:00(Sun-Thu) || Servicing section open 9:00-21:00(Sat-Thu)</marquee>
    <h3>Don't see a product listed?</h3>
    <h5>Just put the name and your phone number. We will call... </h5>

    
    <br />
    Product Name:<br />
    <asp:TextBox CssClass="input" ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Phone Number:<br />
    <asp:TextBox ID="TextBox2" CssClass="input" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="#00CC00"></asp:Label>

    
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="start.aspx.cs" Inherits="start" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
   #ContentPlaceHolder1_pnlProduct div{
    float: left;
    width: 250px;
    height: 250px;
    text-align: center;
}

.productImage {
    width: 150px;
    height: 150px;
    vertical-align: central;
    padding: 10px;
    border-radius:50px;
    -moz-border-radius: 50px;
    -webkit-border-radius: 50px;
}

.productName {
    font-size: 18px;
    font-weight: bold;
}

.productPrice {
    font-family: Arial, helvetica, sans-serif;
    color: #FFB600;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee behavior="scroll" direction="left" style="font-size: 20px; color:#0d4386"># Upto 20% discount on Master Card Payment #</marquee>
    <marquee behavior="scroll" direction="right" style="font-size: 20px; color:#f00"># Prebook the upcoming MSI laptops with GTX 16 Seriese GPUs #</marquee>
    
    <asp:Panel ID="pnlProduct" runat="server">
    </asp:Panel>
    <div style="clear:both;"></div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Asrock.aspx.cs" Inherits="Pages_Offers_Asrock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee behavior="scroll" direction="left" style="font-size: 20px; color:#0d4386">Summer sale is on. Visit the retailer to Know more...</marquee>
    <marquee behavior="scroll" direction="right" style="font-size: 20px; color:#0d4386">Not applicable for online purchase...</marquee>
    <table style="width:100%; color:#0d4386;">
        <tr>
            <td rowspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Offers/asrock-offer.jpg" Width="400px" Height="350px"/></td>
            
        </tr>
        
            <tr><td>Buy an Asrock Z390 Mobo and get:</td><td><ul>
                <li>One exclusive t-shirt</li>
                <li>A scratch card</li>
                <li>A surprise gift</li>
                    </ul></td></tr>
            
        </tr>
    </table>
</asp:Content>


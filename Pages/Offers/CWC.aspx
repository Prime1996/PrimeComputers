<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CWC.aspx.cs" Inherits="Pages_Offers_CWC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee behavior="scroll" direction="left" style="font-size: 20px; color:#0d4386">Summer sale is on. Visit the retailer to Know more...</marquee>
    <marquee behavior="scroll" direction="right" style="font-size: 20px; color:#0d4386">Not applicable for online purchase...</marquee>
    
    <table style="width:100%; color:#0d4386;">
        <tr>
            <td rowspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Offers/world-cup-offer.jpg" /></td>
            
        </tr>
        
            <tr><td>Purchase over 100,000 Tk and get:</td><td><ul>
                <li>A chance to win a final match ticket</li>
                <li>Travel and resident cost included</li>
                <li>Food cost excluded</li>
                    </ul></td></tr>
        </tr>
    </table>
</asp:Content>


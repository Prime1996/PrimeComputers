<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Join.aspx.cs" Inherits="Pages_Offers_Join" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <marquee behavior="scroll" direction="left" style="font-size: 20px; color:#0d4386">Drop your cv on the address given below...</marquee>
    
    <table style="width:100%; color:#0d4386;">
        <tr>
            <td rowspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Offers/join-us.jpg" /></td>
            
        </tr>
        
            <tr><td>We are hiring for posts:</td><td><ul>
                <li>Sales executive officer</li>
                <li>Management officer</li>
                <li>Web developer</li>
                    </ul></td></tr>
        </tr>
    </table>
</asp:Content>


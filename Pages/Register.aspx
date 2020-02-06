<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 386px;
        }
 
        
        .auto-style2 {
            width: 275px;
        }
 
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="btr">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">User Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="UserName" runat="server" Width="248px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="UserName" ErrorMessage="User Name required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style1">E-mail</td>
            <td class="auto-style2">
                <asp:TextBox ID="Mail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Mail" ErrorMessage=" Invalid E-mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="Password" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Confirm Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="CPassword" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="CPassword" ErrorMessage="Passwords don't match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">District</td>
            <td class="auto-style2">
                <asp:DropDownList ID="District" runat="server">
                    <asp:ListItem>Select District</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Sylhet</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                    <asp:ListItem>Kushtia</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="District" ErrorMessage="District must be entered" ForeColor="Red" InitialValue="Select District"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:CheckBox ID="Agree" runat="server" Text="I agree with the terms and conditions" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:Button ID="Register" runat="server" OnClick="Button1_Click" Text="Register" />
            </td>
            <td>
                <asp:Label ID="Authenticate" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>


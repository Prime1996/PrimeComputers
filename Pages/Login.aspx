<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .test {
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-image: none;
            text-align: center;
        }
            .hdr {
                color: #076DB1;
                text-transform: uppercase;
                font-weight: 500;
            }
        .txtbx {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border:2px solid #3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: black;
            border-radius: 24px;
            transition: 0.25s;
        }
            .txtbx:focus {
                width: 280px;
                border-color: #2ecc71;
            }
        .lginbtn {
            border: 0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border:2px solid #2ecc71;
            padding: 14px 40px;
            width: 150px;
            outline: none;
            color: #06109C;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }
            .lginbtn:hover {
                background: #2ecc71;
            }
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="test">
        <h1 class="hdr">LogIn</h1>
    
<p>
    <asp:TextBox CssClass="txtbx" ID="UName" runat="server" Placeholder="User Name"></asp:TextBox>
</p>

<p>
    <asp:TextBox CssClass="txtbx" ID="PWord" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
</p>
<p>
    <asp:Button CssClass="lginbtn" ID="LogIn" runat="server" OnClick="Button1_Click" Text="Log In"/>
</p>
    <p>
        &nbsp;</p>
<p>
    <asp:Label ID="Verify" runat="server"></asp:Label>
</p>
        </div>
</asp:Content>


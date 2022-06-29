<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        color: #00FF00;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mesaj Gönderen:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtGonderen" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Başlık:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtBaslik" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>Mail Adresi:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtMail" runat="server" Height="20px" TextMode="Email" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><strong>İçerik:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="Txticerik" runat="server" Height="100px" Width="200px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

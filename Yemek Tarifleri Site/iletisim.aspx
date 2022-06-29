<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        margin-left: 40px;
    }
    .auto-style6 {
        font-weight: bold;
    }
    .auto-style7 {
        text-align: center;
    }
    .auto-style8 {
        text-align: center;
        height: 26px;
    }
    .auto-style9 {
        height: 26px;
    }
    .auto-style10 {
        font-size: x-large;
        text-align: center;
        color: #CCFFCC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style10" colspan="2"><strong>Mesaj Paneli</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Ad Soyad:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresiniz: </strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj: </strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style5"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Gönder" Width="100px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

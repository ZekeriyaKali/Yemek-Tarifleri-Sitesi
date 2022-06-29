<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
            margin-left: 40px;
            width: 350px;
        }
        .auto-style6 {
            height: 23px;
            margin-left: 80px;
            width: 350px;
        }
        .auto-style7 {
            color: #00FF00;
            height: 23px;
            text-align: right;
        }
        .auto-style8 {
            color: #00FF00;
            text-align: right;
        }
        .auto-style9 {
            font-weight: bold;
        }
    .auto-style10 {
        height: 23px;
            width: 350px;
        }
        .auto-style11 {
            width: 350px;
        }
        .auto-style12 {
            font-weight: bold;
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><strong></strong></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek Ad:</strong></td>
            <td class="auto-style11"><strong>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Malzemeler:</strong></td>
            <td class="auto-style11"><strong>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif:</strong></td>
            <td class="auto-style5"><strong>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori:</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Resim:</strong></td>
            <td class="auto-style6">
                <strong>
                <asp:FileUpload ID="GorUp" runat="server" CssClass="auto-style9" Height="25px" Width="250px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6"><strong>
                <asp:Button ID="YemekGuncelle" runat="server" CssClass="auto-style9" Height="30px" Text="Güncelle" Width="100px" OnClick="YemekGuncelle_Click" />
                <asp:Button ID="GununYemegiSec" runat="server" CssClass="auto-style12" Height="30px" Text="Günün Yemeği Seç" Width="136px" OnClick="GununYemegiSec_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

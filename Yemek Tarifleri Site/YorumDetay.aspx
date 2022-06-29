<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            color: #00FF00;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            color: #00FF00;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td><strong></strong></td>
            <td><strong></strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Ad Soyad:</strong></td>
            <td><strong>
                <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi:</strong></td>
            <td><strong>
                <asp:TextBox ID="TxtMail" runat="server" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yorum:</strong></td>
            <td><strong>
                <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style5" Height="30px" Text="Onayla" Width="100px" OnClick="BtnOnayla_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    .auto-style7 {
        font-weight: bold;
        margin-left: 50px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Yapılış</strong></td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Height="200px" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Resim: </strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Öneren:</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mail: </strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="White" OnClick="Button1_Click" Text="Tarif Öner" Width="150px" CssClass="fb8" Height="40px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

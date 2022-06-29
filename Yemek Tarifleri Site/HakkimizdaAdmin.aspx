<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            text-align: center;
        }
        .auto-style9 {
            color: #66FF99;
        }
        .auto-style17 {
        font-weight: bold;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server" BackColor="Black" CssClass="auto-style3">
        <div class="auto-style11">
            <table class="auto-style1">
                <tr>
                    <td><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
            <strong>___________________________________________________________</strong><br class="auto-style9" />
        </div>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">
                        <asp:TextBox ID="TxtHak" runat="server" Height="250px" Width="420px" TextMode="MultiLine" CssClass="auto-style17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style17" Height="30px" Text="Güncelle" Width="100px" OnClick="BtnGuncelle_Click" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
    </strong>
</asp:Content>

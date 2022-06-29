<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: large;
            color: #CCFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style5">
        <asp:DataList ID="DataList2" runat="server" Width="472px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6"><strong>GÜNÜN YEMEĞİ</strong></td>
                    </tr>
                    <tr>
                        <td><strong>Yemeğin Adı:</strong>
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700; text-align: left; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemeğin Malzemeleri:</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemeğin Tarifi:</strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="287px" style="text-align: left" Width="300px" ImageUrl='<%# Eval("YemekResim") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Puan:</strong>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><strong>Tarih:</strong>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

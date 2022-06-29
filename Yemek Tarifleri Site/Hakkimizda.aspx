<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            text-align: center;
            color: #CCFFCC;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <strong>Hakkımızda;</strong></p>
    <div class="auto-style5">
    <asp:DataList ID="DataList2" runat="server" Width="473px" Font-Bold="true">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
        <br />
    <asp:Image ID="Image1" runat="server" Height="100px" margin-left="20px" ImageUrl="~/Resimler/mini_logo.png" Width="100px" />
    </div>
    <br />
    </asp:Content>

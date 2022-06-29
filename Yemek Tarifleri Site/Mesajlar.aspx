<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            text-align: center;
        }

        .auto-style16 {
            width: 30px;
        }

        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style9 {
            color: #66FF99;
        }

        .auto-style17 {
            width: 419px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server" BackColor="Black" CssClass="auto-style3">
        <div class="auto-style11">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </td>
                    <td>MESAJ LİSTESİ</td>
                </tr>
            </table>
            <strong>___________________________________________________________
                </strong>
            <br class="auto-style9" />
        </div>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="Black">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/message.png" Width="30px"/>
                            </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </strong>
</asp:Content>

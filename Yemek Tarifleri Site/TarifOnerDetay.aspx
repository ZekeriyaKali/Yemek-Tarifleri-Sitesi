<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style8 {
        height: 23px;
    }
    .auto-style10 {
        text-align: center;
    }
    .auto-style9 {
        text-align: left;
    }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            text-align: left;
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
            height: 26px;
        }
        .auto-style14 {
            text-align: left;
            height: 26px;
        }
        .auto-style15 {
            font-weight: bold;
        }
        .auto-style16 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    .auto-style17 {
        height: 30px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style8">Tarif Detayları</td>
            </tr>
            <tr>
                <td class="auto-style10">Adı: </td>
                <td>
                    <asp:TextBox ID="TxtAd" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Malzemeler: </td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TxtYap" runat="server" Height="100px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Resim:</td>
                <td class="auto-style9">
                    <asp:FileUpload ID="ResimUpload" runat="server" CssClass="auto-style15" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Öneren:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtOneren" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;Mail:&nbsp;</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TxtMail" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">Kategori:</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15" Height="30px" Width="100px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style16" Height="30px" OnClick="BtnOnayla_Click" Text="Onayla" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </strong>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="de1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="drinkdatas">
        <ItemTemplate>
            CatName:
            <asp:Label ID="CatNameLabel" runat="server" Text='<%# Eval("CatName") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="drinkdatas" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoUongConnectionString %>" SelectCommand="SELECT [CatName] FROM [Category]"></asp:SqlDataSource>
</asp:Content>

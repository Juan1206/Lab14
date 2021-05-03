<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab14._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-size: x-large">Bienvenido </h1>
        <h3 class="text-center" style="font-size: small"><strong><em><span style="background-color: #00CC00">Detalles del producto</span></em></strong></h3>
        <p class="text-center"><span style="font-size: small">Nombre del producto</span><asp:TextBox ID="TextBox2" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Codigo</span><asp:TextBox ID="TextBox3" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Marca </span>
            <asp:TextBox ID="TextBox4" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Precio Compra </span>
            <asp:TextBox ID="TextBox5" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Precio Venta </span>
            <asp:TextBox ID="TextBox8" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center">U<span style="font-size: small">nidades Existentes </span>
            <asp:TextBox ID="TextBox9" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
        </p>
        <p class="text-center">&nbsp;</p>
        <p class="text-center"><span style="font-size: small">&nbsp; </span>
        </p>
        <div class="col-md-4" style="left: -6px; top: -63px">
            <p class="text-center">
                <asp:Button ID="Button2" runat="server" style="font-size: large; background-color: #FFFF00" Text="Registrar Venta" OnClick="Button2_Click" />
            </p>
            <p class="text-center">
                &nbsp;</p>
        </div>
    </div>

</asp:Content>

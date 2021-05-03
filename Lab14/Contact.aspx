<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Lab14.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="jumbotron">
        <h1 style="font-size: x-large">Bienvenido al control de datos de la Tienda Online</h1>
        <h3 class="text-center" style="font-size: small"><strong><em><span style="background-color: #00CC00">Detalles de la Venta</span></em></strong></h3>
        <p class="text-center"><span style="font-size: small">Codigo del producto</span><asp:TextBox ID="TextBox2" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Producto</span><asp:TextBox ID="TextBox3" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Cantidad Vendida </span>
            <asp:TextBox ID="TextBox4" runat="server" style="font-size: small"></asp:TextBox>
        </p>
        <p class="text-center"><span style="font-size: small">Precio por unidad </span>
            <asp:TextBox ID="TextBox5" runat="server" style="font-size: small"></asp:TextBox>
            <span style="font-size: small">&nbsp; </span>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: small; background-color: #CC33FF" Text="Agregar Detalles" />
        </p>
        <p class="text-center" style="text-decoration: underline; background-color: #00FFFF"><strong>Venta</strong></p>
        <table>
            <tr>
                <td style="height: 20px; width: 346px"><span style="font-size: small">Nit del cliente</span><asp:TextBox ID="TextBox7" runat="server" style="font-size: small"></asp:TextBox>
                </td>
                <td style="height: 20px; width: 485px; font-size: small">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha de Venta</td>
                <td style="height: 20px; font-size: small">Fecha de Entrega</td>
            </tr>
            <tr>
                <td style="height: 24px; width: 346px">&nbsp;</td>
                <td style="height: 24px; width: 485px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:Calendar ID="Calendar3" runat="server" Width="192px"></asp:Calendar>
                </td>
                <td style="height: 24px">
                    <asp:Calendar ID="Calendar4" runat="server" style="margin-left: 0px" Width="201px"></asp:Calendar>
                    <span style="font-size: small">&nbsp;&nbsp; </span></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 346px">&nbsp;</td>
                <td class="modal-sm" style="width: 485px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estado de la entrega</span></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

    <div class="row">
        <div class="col-md-4" style="left: -6px; top: -63px">
            <p class="text-center">&nbsp;</p>
            <p class="text-center">
                <asp:Button ID="Button2" runat="server" style="font-size: large; background-color: #FFFF00" Text="Registrar Venta" />
            </p>
        </div>
    </div>

</asp:Content>

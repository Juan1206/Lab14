<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lab14.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center" style="font-size: x-large"><strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField AccessibleHeaderText="A1" HeaderText="Seleccion de productos">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Nombre_Producto" HeaderText="Productoo" />
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Precio_Venta" HeaderText="Precio" />
                <asp:BoundField DataField="Unidades_Existentes" HeaderText="Existentes" />
                <asp:ImageField DataImageUrlField="Imagen" HeaderText="Imagen Producto">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        Productos</strong></h2>
    <p class="text-left" style="font-size: x-large">
        &nbsp;</p>
    <p class="text-left" style="font-size: x-large">
        Unidades a Comprar
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text=" Agregar Producto al carrito" />
    </p>
    <p class="text-left" style="font-size: x-large">
        &nbsp;</p>
    <p class="text-left" style="font-size: x-large">
        Nit:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="text-left" style="font-size: x-large">
        Fecha de entrega<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </p>
    <p class="text-left" style="font-size: x-large">
        Estado de la entrega:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p class="text-center" style="font-size: x-large">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Comprar" />
    </p>
    <p class="text-center" style="font-size: x-large">
        &nbsp;</p>
    <p class="text-center" style="font-size: x-large">
        &nbsp;</p>
</asp:Content>

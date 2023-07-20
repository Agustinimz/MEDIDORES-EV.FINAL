<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerUsuario.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.VerUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">

    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-info text-white">
                    <h3>Ver Usuarios</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered" runat="server"
                        AutoGenerateColumns="false" id="grillaUsuario">
                        <Columns>
                            <asp:BoundField HeaderText="Rut" DataField="Rut" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre"/>
                            <asp:BoundField HeaderText="Contraseña" DataField="Contraseña"/>
                            <asp:BoundField HeaderText="Correo" DataField="Correo"/>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="eliminarBtn" CommandName="Eliminar" CommandArgument='<%# Eval("Id") %>' Text="Eliminar" CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('¿Está seguro que desea eliminar este usuario?');"></asp:Button>
                                    <asp:Button runat="server" ID="modificarBtn" CommandName="Modificar" Text="Modificar" CssClass="btn btn-warning btn-sm"></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
</asp:Content>
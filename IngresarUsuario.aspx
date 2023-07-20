<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarUsuario.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.IngresarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">

        <div class="row">
        <div class="col-lg-6 mx-auto">
            
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Usuarios</h3>
                </div>
                <!--Agregamos Mensaje-->
                    <div class="mesanjes">
                        <asp:Label runat="server" id="mensajesLbl" CssClass="text-success"></asp:Label>
                        <asp:Label runat="server" id="mensajesError" CssClass="text-danger"></asp:Label>
                    </div>
                    <!---->
                <div class="card-body">

                    <div class="form-group">
                        <label for="rutTXT">RUT</label>
                        <asp:TextBox ID="rutTXT" CssClass="form-control" runat="server" MaxLength="12" onkeyup="formatearRut()"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rutValidator" runat="server" ControlToValidate="rutTXT" ErrorMessage="Ingresa un RUT" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTXT" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="contraseñaTXT" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="gmailTxt">Gmail</label>
                        <asp:TextBox ID="gmailTXT" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>


                    <div class="container mt-1 col">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click" text="Agregar" CssClass="btn btn-primary btn-sm"></asp:Button>
                    </div>
                   
                    
                </div>
            </div>

        </div>

    </div>

</asp:Content>

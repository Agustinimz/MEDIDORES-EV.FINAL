<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarMedidor.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.IngresarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">

    <div class="row">
        <div class="col-lg-6 mx-auto">
            
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <!--Agregamos Mensaje-->
                    <div class="mesanjes">
                        <asp:Label runat="server" id="mensajesLbl" CssClass="text-success"></asp:Label>
                        <asp:Label runat="server" id="mensajesError" CssClass="text-danger"></asp:Label>
                    </div>
                    <!---->
                <div class="card-body">

                    
                    <div class="form-group">
                        <label for="tipoTxt">Ingrese Tipo</label>
                        <asp:TextBox ID="tipotxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="medidorValidator" runat="server" ControlToValidate="tipotxt" ErrorMessage="Campo Obligatorio..." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="serieTxt">Ingrese Serie</label>
                        <asp:TextBox ID="serietxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="serieValidator" runat="server" ControlToValidate="tipotxt" ErrorMessage="Campo Obligatorio..." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="container mt-1 col">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click" text="Agregar" CssClass="btn btn-primary btn-sm"></asp:Button>
                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>

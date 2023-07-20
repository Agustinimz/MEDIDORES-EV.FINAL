<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="IngresarLectura.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.IngresarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Lectura</h3>
                </div>
                <!--Agregamos Mensaje-->
                    <div class="mesanjes">
                        <asp:Label runat="server" id="mensajesLbl" CssClass="text-success"></asp:Label>
                        <asp:Label runat="server" id="mensajesError" CssClass="text-danger"></asp:Label>
                    </div>
                    <!---->
                <div class="card-body">

                    
                    <div class="form-group">
                        <label for="medidorDbl">Medidor</label> 
                        <asp:DropDownList ID="medidorDbl" CssClass="form-select" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="Seleccione un Medidor"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="medidorValidator" runat="server" ControlToValidate="medidorDbl" ErrorMessage="Seleccione un medidor" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="calendarTxt">Fecha</label>
                        <asp:Calendar ID="calendartxt" CssClass="form-control" runat="server"></asp:Calendar>
                    </div>

                    <div class="form-group">
                        <label for="horaTxt">Hora</label>
                        <asp:TextBox ID="horatxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="horatxt" Type="Integer" MinimumValue="0" MaximumValue="23" ErrorMessage="El valor debe estar entre las 0 y 23" CssClass="text-danger" Display="Dynamic"></asp:RangeValidator>
                    </div>

                    <div class="form-group">
                        <label for="minutoTxt">Minuto</label>
                        <asp:TextBox ID="minutotxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="minutoValidator" runat="server" ControlToValidate="minutotxt" Type="Integer" MinimumValue="0" MaximumValue="59" ErrorMessage="El valor debe estar entre 0 y 59" CssClass="text-danger" Display="Dynamic"></asp:RangeValidator>
                        
                    </div>

                    <div class="form-group">
                        <label for="consumoTxt">Valor Consumo</label>
                        <asp:TextBox ID="consumotxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="consumoValidator" runat="server" ControlToValidate="minutotxt" Type="Double" MinimumValue="0" MaximumValue="600" ErrorMessage="El valor debe estar entre 0 y 600" CssClass="text-danger" Display="Dynamic"></asp:RangeValidator>
                    </div>

                    <div class="container mt-1 col">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click" text="Agregar" CssClass="btn btn-primary btn-sm"></asp:Button>
                    </div>
                </div>
            </div>

        </div>

    </div>


</asp:Content>

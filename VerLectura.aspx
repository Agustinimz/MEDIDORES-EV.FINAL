<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerLectura.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.VerLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">

       <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-info text-white">
                    <h3>Ver Lecturas</h3>
                </div>
                <div class="card-body">

                    <div class="form-group">
                        <label for="filtroM"></label> 
                        <asp:DropDownList ID="filtroM" CssClass="form-select" runat="server" AppendDataBoundItems="true" OnSelectedIndexChanged="filtroM_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Filtrar Medidores Añadidos"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <asp:GridView CssClass="table table-hover table-bordered" runat="server"
                        AutoGenerateColumns="false" id="grillaLectura">

                        <Columns>
                            <asp:BoundField DataField="Medidortipo.Tipo" HeaderText="Medidor" />
                            <asp:BoundField DataField="FechaLectura" HeaderText="Fecha" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="HoraLectura" HeaderText="Hora y Minutos" />
                            <asp:BoundField DataField="ValorConsumo" HeaderText="Consumo" />
                        </Columns>
                    </asp:GridView>

                </div>
            </div>

        </div>

    </div>

</asp:Content>

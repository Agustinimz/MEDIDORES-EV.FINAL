<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="MedidoresFINVAL.EV4.imz.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-info text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered" runat="server"
                        AutoGenerateColumns="false" id="grillaLectura">
                        <Columns>
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo Medidor" />
                            <asp:BoundField DataField="Serie" HeaderText="Serie" />
                        </Columns>

                    </asp:GridView>

                </div>
            </div>

        </div>

    </div>
</asp:Content>

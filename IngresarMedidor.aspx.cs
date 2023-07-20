using MedidoresInteligentesModel;
using MedidoresInteligentesModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresFINVAL.EV4.imz
{
    public partial class IngresarMedidor : System.Web.UI.Page
    {
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void agregarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Obtener los datos del formulario
                string tipo = this.tipotxt.Text.Trim();
                string serie = this.serietxt.Text.Trim();

                if (string.IsNullOrEmpty(tipo) || tipo.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }

                if (string.IsNullOrEmpty(serie) || serie.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }
                List<Medidor> medidores = medidorDAL.ObtenerMedidores();
                Boolean existente = false;
                foreach (Medidor medi in medidores)
                {
                    if (medi.serie.Equals(serie))
                    {
                        existente = true;
                        break;
                    }
                }
                if (existente)
                {
                    this.mensajesError.Text = "Número de serie Replicado...";
                    return;
                }
                //Construir el objeto tipo
                Medidor medidor = new Medidor()
                {
                    tipo = tipo,
                    serie = serie
                };

                // Llamar al DAL
                medidorDAL.AgregarMedidores(medidor);
                // Mostrar mensaje de exito
                this.mensajesLbl.Text = "Medidor Guardado Correctamente";
                Response.Redirect("VerMedidores.aspx");
            }
        }
    }
}
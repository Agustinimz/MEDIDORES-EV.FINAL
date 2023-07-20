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
    public partial class VerLectura : System.Web.UI.Page
    {
        //
        private ILecturaDAL lecturaDAL = new LecturaDALDB();
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                filtroMedidor();
                cargarGrilla();

            }
        }
        protected void cargarGrilla()
        {
            List<Lectura> lecturas = lecturaDAL.ObtenerLectura();

            // Filtrar las lecturas por el medidor seleccionado
            string medidorSeleccionado = filtroM.SelectedValue;
            if (!string.IsNullOrEmpty(medidorSeleccionado) && medidorSeleccionado != "Filtrar Medidores Añadidos")
            {
                lecturas = lecturas.Where(l => l.Medidor.serie == medidorSeleccionado).ToList();
            }

            this.grillaLectura.DataSource = lecturas;
            this.grillaLectura.DataBind();
        }

        protected void filtroMedidor()
        {
            List<Medidor> medidores = medidorDAL.ObtenerMedidores();
            this.filtroM.DataSource = medidores;
            this.filtroM.DataTextField = "Tipo";
            this.filtroM.DataValueField = "Serie";
            this.filtroM.DataBind();
        }

        protected void filtroM_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarGrilla();
        }
    }
}
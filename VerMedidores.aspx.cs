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
    public partial class VerMedidores : System.Web.UI.Page
    {
        //
        private IMedidorDAL medidorDAL = new MedidorDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();
            }
        }
        protected void cargarGrilla()
        {
            List<Medidor> medidores = medidorDAL.ObtenerMedidores();
            this.grillaLectura.DataSource = medidores;
            this.grillaLectura.DataBind();
        }
    }
}
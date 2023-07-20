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
    public partial class VerUsuario : System.Web.UI.Page
    {
        //
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarGrilla();

            }

        }
        protected void cargarGrilla()
        {
            List<Usuario> usuarios = usuarioDAL.ObtenerUsuario();
            this.grillaUsuario.DataSource = usuarios;
            this.grillaUsuario.DataBind();

        }

        protected void eliminarBtn_Click(object sender, EventArgs e)
        {
            // Obtenemos el botón que se ha clicado
            Button btnEliminar = (Button)sender;

            // Obtenemos el ID del usuario que se va a eliminar
            int id = Convert.ToInt32(btnEliminar.CommandArgument);

            // Eliminamos el usuario de la base de datos
            usuarioDAL.EliminarUsuario(id);

            // Actualizamos la grilla
            cargarGrilla();
        }
        protected void modificarBtn_Click(object sender, EventArgs e)
        {

        }
    }
}
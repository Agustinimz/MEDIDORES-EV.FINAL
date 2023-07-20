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
    public partial class IngresarUsuario : System.Web.UI.Page
    {
        //
        private IUsuarioDAL usuarioDAL = new UsuarioDALDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack) 
            {

            }  
        }

        protected void agregarBtn_Click(object sender, EventArgs e)
        {
            
                //Obtener los datos del formulario
                Usuario usuario = new Usuario();
                usuario.rut = this.rutTXT.Text.Trim();
                usuario.nombre = this.nombreTXT.Text.Trim();
                usuario.contraseña = this.contraseñaTXT.Text.Trim();
                usuario.correo = this.gmailTXT.Text.Trim();

                if (string.IsNullOrEmpty(usuario.rut) || usuario.rut.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }

                if (string.IsNullOrEmpty(usuario.nombre) || usuario.nombre.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }
                if (string.IsNullOrEmpty(usuario.contraseña) || usuario.contraseña.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }
                if (string.IsNullOrEmpty(usuario.correo) || usuario.correo.Trim() == "Campo obligatorio")
                {
                    this.mensajesError.Text = "Añadir campo.";
                    return;
                }
     
                usuarioDAL.AgregarUsuario(usuario);
                Response.Redirect("VerUsuario.aspx");

            
        }
    }
}
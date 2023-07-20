using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresInteligentesModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        //Hacemos la conexion a la DB
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();    

        public void AgregarUsuario(Usuario usuario) 
        {
            this.medidoresDB.Usuarios.Add(usuario);
            this.medidoresDB.SaveChanges();
        }
        public void EliminarUsuario(int id) 
        {
            //Buscamos Usuarios asociados al ID
            Usuario usuario = this.medidoresDB.Usuarios.Find(id);
            //destruir usuario
            this.medidoresDB.Usuarios.Remove(usuario);
            this.medidoresDB.SaveChanges();
        }

        public Usuario Obtener(int id)
        {
            return this.medidoresDB.Usuarios.Find(id);
        }

        public List<Usuario> ObtenerUsuario()
        {
            return this.medidoresDB.Usuarios.ToList();
        }


        public void ActualizarUsuario(Usuario a) 
        {
            Usuario aOrginial = this.medidoresDB.Usuarios.Find(a.id);
            aOrginial.rut = a.rut;
            aOrginial.nombre = a.nombre;
            aOrginial.contraseña = a.contraseña;
            aOrginial.correo = a.correo;
            this.medidoresDB.SaveChanges();

        }
    }
}

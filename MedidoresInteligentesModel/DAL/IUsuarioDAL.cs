using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresInteligentesModel.DAL
{
    public interface IUsuarioDAL
    {
        List<Usuario> ObtenerUsuario();

        Usuario Obtener(int id);

        void AgregarUsuario(Usuario usuario);

        void EliminarUsuario(int id);

        
    }
}

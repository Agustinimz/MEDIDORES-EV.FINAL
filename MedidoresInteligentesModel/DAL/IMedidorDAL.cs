using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresInteligentesModel.DAL
{
    public interface IMedidorDAL
    {
        List<Medidor> ObtenerMedidores();

        Medidor Obtener(int id);

        void AgregarMedidores(Medidor medidor);
    }
}

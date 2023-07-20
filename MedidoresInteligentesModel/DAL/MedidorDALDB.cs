using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresInteligentesModel.DAL
{
    public class MedidorDALDB : IMedidorDAL
    {
        //Hacemos la conexion a DB
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void AgregarMedidores(Medidor medidor)
        {
            this.medidoresDB.Medidors.Add(medidor);
            this.medidoresDB.SaveChanges();
        }
        public Medidor Obtener(int id)
        {
            return this.medidoresDB.Medidors.Find(id);
        }

        public List<Medidor> ObtenerMedidores()
        {
            return this.medidoresDB.Medidors.ToList();
        }
    }
}

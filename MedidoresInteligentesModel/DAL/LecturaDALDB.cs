using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresInteligentesModel.DAL
{
    
    public class LecturaDALDB : ILecturaDAL
    {
        //Hacemos la conexion con la DB
        private MedidoresDBEntities medidoresDB = new MedidoresDBEntities();

        public void AgregarLectura(Lectura lectura)
        {
            this.medidoresDB.Lecturas.Add(lectura);
            //this.medidoresDB.SaveChanges();
        }

        public void EliminarLectura(int id) 
        {
            Lectura lectura = this.medidoresDB.Lecturas.Find(id);
            //destruir lectura
            this.medidoresDB.Lecturas.Remove(lectura);
            this.medidoresDB.SaveChanges();
        }

        public Lectura Obtener(int id) 
        {
            return this.medidoresDB.Lecturas.Find(id);
        }

        public List<Lectura> ObtenerLectura() 
        {
            return this.medidoresDB.Lecturas.ToList();
        } 
    }
}

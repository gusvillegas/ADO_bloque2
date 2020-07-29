using Ecommerce.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace Ecommerce.Logica
{
    public class logicaCategoria
    {
        private static EcommerceEntities db = new EcommerceEntities();

        public static async Task<List<TBL_CATEGORIA>> getAllCategoria()
        {
            try
            {
                return await db.TBL_CATEGORIA.Where(data => data.CAT_ESTADO == "A").ToListAsync();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
        }
        public static async Task<TBL_CATEGORIA> getCategoriaXid(int codigo)
        {
            try
            {
                return await db.TBL_CATEGORIA.Where(data => data.CAT_ESTADO == "A" && data.CAT_ID.Equals(codigo)).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
        }
       
        //GUARDAR
        public static async Task<bool> saveCategoria(TBL_CATEGORIA _infoCategoria)
        {
            try
            {
                bool resultado = false;
                _infoCategoria.CAT_ESTADO = "A";
                _infoCategoria.CAT_FECHA_CREACION = DateTime.Now;
                db.TBL_CATEGORIA.Add(_infoCategoria);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
        }
        //ACTUALIZAR
        public static async Task<bool> updateCategoria(TBL_CATEGORIA _infoCategoria)
        {
            try
            {
                bool resultado = false;

                _infoCategoria.CAT_FECHA_CREACION = DateTime.Now;
                db.TBL_CATEGORIA.Add(_infoCategoria);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
        }
        //ELIMINAR 
        public static async Task<bool> deleteCategoria(TBL_CATEGORIA _infoCategoria)
        {
            try
            {
                bool resultado = false;
                _infoCategoria.CAT_ESTADO = "I";
                _infoCategoria.CAT_FECHA_CREACION = DateTime.Now;
                db.TBL_CATEGORIA.Add(_infoCategoria);
                //elimina de forma fisica 
                //db.TBL_CATEGORIA.Remove(_infoCategoria);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
        }
    }
}
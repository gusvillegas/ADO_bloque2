using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Ecommerce.Models;

namespace Ecommerce.Logica
{
    public class logicaProducto
    {
        private static EcommerceEntities db = new EcommerceEntities();

        public static async Task<List<TBL_PRODUCTO>> getAllProductos() {
            try
            {
                return await db.TBL_PRODUCTO.Where(data => data.PRO_ESTADO == "A").ToListAsync();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso "+ex);
            }
        }
        public static async Task<TBL_PRODUCTO> getProductoXid(int codigo) {
            try
            {
                return await db.TBL_PRODUCTO.Where(data => data.PRO_ESTADO == "A" && data.PRO_ID.Equals(codigo)).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso "+ex);
            }
        }
        public static async Task<TBL_PRODUCTO> getProductoXcode(string codigo) {
            try
            {
                return await db.TBL_PRODUCTO.Where(data => data.PRO_ESTADO == "A"  && data.PRO_CODIGO.Equals(codigo)).FirstOrDefaultAsync();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso "+ex);
            }
        }
        //GUARDAR
        public static async Task<bool> saveProducto(TBL_PRODUCTO _infoProducto) {
            try
            {
                bool resultado = false;
                _infoProducto.PRO_ESTADO = "A";
                _infoProducto.PRO_FECHA_CREACION = DateTime.Now;
                db.TBL_PRODUCTO.Add(_infoProducto);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al guardar el producto "+ex);
            }
        }
        //ACTUALIZAR
        public static async Task<bool> updateProducto(TBL_PRODUCTO _infoProducto) {
            try
            {
                bool resultado = false;
                
                _infoProducto.PRO_FECHA_CREACION = DateTime.Now;
                db.TBL_PRODUCTO.Add(_infoProducto);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso "+ex);
            }
        }
        //ELIMINAR 
        public static async Task<bool> deleteProducto(TBL_PRODUCTO _infoProducto) {
            try
            {
                bool resultado = false;
                _infoProducto.PRO_ESTADO ="I";
                _infoProducto.PRO_FECHA_CREACION = DateTime.Now;
                db.TBL_PRODUCTO.Add(_infoProducto);
                //elimina de forma fisica 
                //db.TBL_PRODUCTO.Remove(_infoProducto);
                await db.SaveChangesAsync();
                resultado = true;
                return resultado;

            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso "+ex);
            }
        }
    }
}
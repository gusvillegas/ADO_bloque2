//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ecommerce.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_DETALLE_PEDIDO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_DETALLE_PEDIDO()
        {
            this.TBL_DETALLE_IMPUESTOS = new HashSet<TBL_DETALLE_IMPUESTOS>();
        }
    
        public int DEP_ID { get; set; }
        public Nullable<int> PED_ID { get; set; }
        public Nullable<System.DateTime> PED_FECHA { get; set; }
        public Nullable<int> PRO_ID { get; set; }
        public Nullable<int> DEP_CANTIDAD { get; set; }
        public string DEP_DESCRIPCION { get; set; }
        public Nullable<decimal> DEP_PRECIOUNITARIO { get; set; }
        public Nullable<decimal> DEP_PRECIOTOTAL { get; set; }
        public string DEP_ESTADO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_DETALLE_IMPUESTOS> TBL_DETALLE_IMPUESTOS { get; set; }
        public virtual TBL_PEDIDO TBL_PEDIDO { get; set; }
        public virtual TBL_PRODUCTO TBL_PRODUCTO { get; set; }
    }
}

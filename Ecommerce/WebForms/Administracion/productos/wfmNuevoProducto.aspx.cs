using Ecommerce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Ecommerce.WebForms.Administracion.productos
{
    public partial class wfmNuevoProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

            }
        }
        private void NuevoProducto() {
            txtCodPro.Text = "";
            txtDesPro.Text = "";
            txtNomPro.Text = "";
            txtPreCom.Text = "";
            txtPreVen.Text = "";
            txtStockMin.Text = "";
            txtStockMax.Text = "";
            UC_CATEGORIA1.DropDownList.SelectedIndex = 0;

        }
        protected void Upload(object sender, EventArgs e)
        {
            int contentLength = avatarUpload.PostedFile.ContentLength;//You may need it for validation
            string contentType = avatarUpload.PostedFile.ContentType;//You may need it for validation
            string fileName = avatarUpload.PostedFile.FileName;
            //avatarUpload.PostedFile.SaveAs(@"c:\test.tmp");//Or code to save in the DataBase.
        }

        private void GuardarProducto() {

            try
            {
                TBL_PRODUCTO _infoProducto = new TBL_PRODUCTO();

                _infoProducto.PRO_CODIGO = txtCodPro.Text;
                //_infoProducto.CAT_ID = Convert.ToInt16(UC_CATEGORIA1.DropDownList.SelectedValue);
                _infoProducto.PRO_NOMBRE = txtNomPro.Text;
                _infoProducto.PRO_DESCRIPCION = txtDesPro.Text;
                _infoProducto.PRO_IMAGEN = "C:/imagen";
               // _infoProducto.PRO_PRECIO_COMPRA = Convert.ToDecimal(txtPreCom.Text);
                //_infoProducto.PRO_PRECIO_VENTA = Convert.ToDecimal(txtPreVen.Text);
                //_infoProducto.PRO_STOCK_MINIMO = Convert.ToInt32(txtStockMin.Text);
                //_infoProducto.PRO_STOCK_MAXIMO = Convert.ToInt32(txtStockMax.Text);
                Task<bool> _taskProducto = Task.Run(() => Logica.logicaProducto.saveProducto(_infoProducto));
                _taskProducto.Wait();
                var resultado = _taskProducto.Result;
                if (resultado)
                {
                    lblMensajes.Text = "Registro Guardado Exitosamente";
                }
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error al consultar el proceso " + ex);
            }
            
        }

        protected void IbGuardarProducto_Click(object sender, ImageClickEventArgs e)
        {
            GuardarProducto();
        }

        protected void ibNuevoProducto_Click(object sender, ImageClickEventArgs e)
        {
            NuevoProducto();
        }

        protected void lbGuardarProducto_Click(object sender, EventArgs e)
        {
            GuardarProducto();
        }

        protected void lbNuevoProducto_Click(object sender, EventArgs e)
        {
            NuevoProducto();
        }
    }
}
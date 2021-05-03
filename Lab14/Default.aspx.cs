using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab14
{
   
    public partial class _Default : Page
    {
        static List<Producto> productos = new List<Producto>();

     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string archivo = Server.MapPath("Productos.json");
                if (File.Exists(archivo))
                {
                    StreamReader jsonStream = File.OpenText(archivo);
                    string json = jsonStream.ReadToEnd();
                    jsonStream.Close();
                    productos = JsonConvert.DeserializeObject<List<Producto>>(json);
                }
            }

        }


        private void GuardarJson()
        {
            string json = JsonConvert.SerializeObject(productos);
            string archivo = Server.MapPath("Productos.json");
            System.IO.File.WriteAllText(archivo, json);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Producto prodcs = new Producto();
            prodcs.Nombre_Producto = TextBox2.Text;
            prodcs.Codigo = TextBox3.Text;
            prodcs.Marca = TextBox4.Text;
            prodcs.Precio_Compra = float.Parse(TextBox5.Text);
            prodcs.Precio_Venta = float.Parse(TextBox8.Text);
            prodcs.Unidades_Existentes = Int32.Parse(TextBox9.Text);
            string archivoOrigen = Path.GetFileName(FileUpload1.FileName);
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/imagenes/") + archivoOrigen);

                Label1.Text = "Imagen cargada con exito";
            }
            catch (Exception ex)
            {
                Label1.Text = "No se pudo subir, se generó el siguiente error:  " + ex.Message;

            }
            string archivo = "~/imagenes/" + FileUpload1.FileName;
            prodcs.Imagen = archivo;

            productos.Add(prodcs);
            GuardarJson();
          

        }
    }
}
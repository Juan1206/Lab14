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
    public partial class About : Page
    {
        static List<Producto> productos = new List<Producto>();
        static List<Detalle_de_Venta> detalles = new List<Detalle_de_Venta>();
        static List<Venta>  ventas = new List<Venta>();
        int seleccion;


        protected void Page_Load(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Productos.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();
            productos = JsonConvert.DeserializeObject<List<Producto>>(json);
            //mostrar universidades en el gridview
            GridView1.DataSource = productos;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            seleccion = GridView1.SelectedIndex;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Venta v = new Venta();
            v.Nit = TextBox2.Text;
            v.Fecha_Venta = DateTime.Today;
            v.Fecha_Entrega = Calendar1.SelectedDate;
            v.Estado_entrega = TextBox3.Text;
          v.Vendidos1 = detalles.ToList();
            ventas.Add(v);
            GuardarJson();
            detalles.Clear();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Detalle_de_Venta detalle = new Detalle_de_Venta();
            detalle.Descripcion_Producto = productos[seleccion].Nombre_Producto;
            detalle.Codigo_Producto = productos[seleccion].Codigo;
            detalle.Precio_Unidad = productos[seleccion].Precio_Venta;
            detalle.Vendidos = Int32.Parse(TextBox1.Text);
            detalle.Total = Int32.Parse(TextBox1.Text) * detalle.Precio_Unidad;
            detalles.Add(detalle);
        }
        private void GuardarJson()
        {
            string json = JsonConvert.SerializeObject(ventas);
            string archivo = Server.MapPath("Ventas.json");
            System.IO.File.WriteAllText(archivo, json);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab14
{
    public class Detalle_de_Venta
    {
        string codigo_Producto;
        string descripcion_Producto;
        int vendidos;
        float precio_Unidad;
        float total;

        public string Codigo_Producto { get => codigo_Producto; set => codigo_Producto = value; }
        public string Descripcion_Producto { get => descripcion_Producto; set => descripcion_Producto = value; }
        public int Vendidos { get => vendidos; set => vendidos = value; }
        public float Precio_Unidad { get => precio_Unidad; set => precio_Unidad = value; }
        public float Total { get => total; set => total = value; }
    }
    public class Venta
    {
        string nit;
        DateTime fecha_Venta;
        DateTime fecha_Entrega;
        string estado_entrega;
        List<Detalle_de_Venta> Vendidos = new List<Detalle_de_Venta>();

        public string Nit { get => nit; set => nit = value; }
        public DateTime Fecha_Venta { get => fecha_Venta; set => fecha_Venta = value; }
        public DateTime Fecha_Entrega { get => fecha_Entrega; set => fecha_Entrega = value; }
        public string Estado_entrega { get => estado_entrega; set => estado_entrega = value; }
        public List<Detalle_de_Venta> Vendidos1 { get => Vendidos; set => Vendidos = value; }
        
        public Venta()
        {
            Vendidos = new List<Detalle_de_Venta>();
        }
    }
}
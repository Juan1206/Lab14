using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab14
{
   
        public class Producto
        {
        string nombre_Producto;
        string codigo;
        string marca;
        string imagen;
        float precio_Compra;
        float precio_Venta;
        int unidades_Existentes;

        public string Nombre_Producto { get => nombre_Producto; set => nombre_Producto = value; }
        public string Codigo { get => codigo; set => codigo = value; }
        public string Marca { get => marca; set => marca = value; }
        public float Precio_Compra { get => precio_Compra; set => precio_Compra = value; }
        public float Precio_Venta { get => precio_Venta; set => precio_Venta = value; }
        public int Unidades_Existentes { get => unidades_Existentes; set => unidades_Existentes = value; }
        public string Imagen { get => imagen; set => imagen = value; }
    }

 
      
    }
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab14
{
    public class Cliente
    {
        string nit;
        string nombre;
        string direccion;
        string telefono;

        public string Nit { get => nit; set => nit = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Telefono { get => telefono; set => telefono = value; }
    }
}
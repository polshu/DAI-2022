using System;

namespace Pizzas.API.Models {
    public class Pizza {
        public int      Id              { get; set; }
        public string   Nombre          { get; set; }
        public bool     LibreGluten     { get; set; }
        public float    Importe         { get; set; }
        public string   Descripcion     { get; set; }
    }
}


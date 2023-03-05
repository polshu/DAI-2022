using System.Text.Json;
using System.Text.Json.Serialization;

namespace Pizzas.API.Models;

public class Persona {
    public int Id { get; set; }
    public string Nombre { get; set; } = "";
    [JsonIgnore]
    public string TarjetaDeCredito { get; set; } = "";
    public bool Casado { get; set; }
    public DateTime FechaNacimiento { get; set; }
    public int Edad { 
        get {
            int      edad;
            DateTime hoy;

            hoy = DateTime.Today;
            // Calculo la edad (no es muy eficiente, no chequea año bisiesto)
            edad = hoy.Year - FechaNacimiento.Year;
            return edad;
        } 
    } 
}

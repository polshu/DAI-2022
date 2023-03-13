using Microsoft.AspNetCore.Mvc;
using Pizzas.API.Models;

namespace Pizzas.API.Controllers;

[ApiController]
[Route("[controller]")]
public class TestController : ControllerBase {
    public TestController() { }

    [HttpGet]
    [Route("hora")]
    public DateTime GetHora() {
        //http://localhost:5000/test/hora
        return DateTime.Now;
    }

    [HttpGet]
    [Route("saludar")]
    public string GetSaludar([FromQuery] string nombre) {
        //http://localhost:5000/test/saludar?nombre=cacho
        string texto;
        texto = "hola " + nombre;
        return texto;
    }

    [HttpGet]
    [Route("sumar/{numero1}/{numero2}")]
    public int GetSumar([FromRoute] int numero1, [FromRoute] int numero2) {
        //http://localhost:5000/test/sumar/10/40
        Console.WriteLine("GetSumar");
        int resultado;;
        resultado = numero1 + numero2;
        return resultado;
    }

    [HttpGet]
    [Route("persona/{id}")]
    public Persona GetPersona([FromRoute] int id) {
        //http://localhost:5000/test/persona/3
        Persona persona = new Persona();
        persona.Id = id;
        persona.Nombre = "Guillermo Wonka";
        persona.TarjetaDeCredito = "4556815182996489";
        persona.Casado = false;
        persona.FechaNacimiento = new DateTime(2003, 07, 13);
        return persona;
    }

    [HttpGet]
    [Route("persona1/{id}")]
    public IActionResult GetPersona1([FromRoute] int id) {
        //http://localhost:5000/test/persona/3  // Retorna el objeto. (200)
        //http://localhost:5000/test/persona/0  // Retorna un BadRequesr (400)
        IActionResult   returnValue;
        Persona         persona;
        if (id > 0){
            persona = new Persona();
            persona.Id = id;
            persona.Nombre = "Guillermo Wonka";
            persona.TarjetaDeCredito = "4556815182996489";
            persona.Casado = false;
            persona.FechaNacimiento = new DateTime(2003, 07, 13);
            returnValue = Ok(persona);
        } else {
            returnValue = BadRequest("El id debe ser positivo");
        }

        return returnValue;
    }
}

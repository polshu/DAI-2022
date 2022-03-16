using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;
//
using Pizzas.API.Models;
using Pizzas.API.Services;
using Pizzas.API.Utils;
/*
GET /api/pizzas
GET /api/pizzas/{id}
POST /api/pizzas
{
    "nombre"        : "Pizza de Cancha",
    "libreGluten"   : false,
    "importe"       : 1550.50,
    "descripcion"   : "pizza con queso y rodajas de tomate y ajo."
}

PUT /api/pizzas/{id}
{
    "id"            : 13,
    "nombre"        : "Napolitana",
    "libreGluten"   : false,
    "descripcion"   : "pizza con queso y rodajas de tomate y muchisimo ajo."
}

DELETE /api/pizzas/{id}

*/
namespace Pizzas.API.Controllers {
    [ApiController]
    [Route("api/[controller]")]
    public class PizzasController : ControllerBase {

        [HttpGet]
        public IActionResult GetAll() {
            IActionResult   respuesta;
            List<Pizza>     entityList;

            entityList  = PizzasServices.GetAll();
            respuesta   = Ok(entityList);
            return respuesta;
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id) {
            // For any given HTTP GET API, if the resource is found on the server, then it 
            //      must return HTTP response code 200 (OK) – along with the response body, 
            //      which is usually either XML or JSON content (due to their platform-independent nature).
            // In case the resource is NOT found on the server then API must return HTTP response code 404 (NOT FOUND).
            // Similarly, if it is determined that the GET request itself is not correctly formed 
            //      then the server will return the HTTP response code 400 (BAD REQUEST).
            IActionResult   respuesta = null;
            Pizza           entity;

            entity = PizzasServices.GetById(id);
            if (entity == null) {
                respuesta = NotFound();
            } else {
                respuesta = Ok(entity);
            }

            return respuesta;
        }

        [HttpPost]
        public IActionResult Create(Pizza pizza) {
            // HTTP POST
            // Ideally, if a resource has been created on the origin server, the response 
            //      SHOULD be HTTP response code 201 (Created) and contain an entity that 
            //      describes the status of the request and refers to the new resource, and a Location header.
            // Many times, the action performed by the POST method might not result 
            //      in a resource that can be identified by a URI. In this case, 
            //      either HTTP response code 200 (OK) or 204 (No Content) is the appropriate response status.
            // HTTP response code 409 (Conflict) if resource already exists.
            int             intRowsAffected;
            intRowsAffected = PizzasServices.Insert(pizza);
            //intRowsAffected = BD.Insert_ReturnNewId(pizza);

            return CreatedAtAction(nameof(Create), new { id = pizza.Id }, pizza);
        }

        [HttpPut("{id}")]
        public IActionResult Update(int id, Pizza pizza) {
            // HTTP PUT
            // If a new resource has been created by the PUT API, the origin server MUST 
            //      inform the user agent via the HTTP response code 201 (Created) response.
            // If an existing resource is modified, either the 200 (OK) or 204 (No Content) 
            //      response codes SHOULD be sent to indicate successful completion of the request.
            //
            IActionResult   respuesta = null;
            Pizza           entity;
            int             intRowsAffected;

            if (id != pizza.Id) {
                respuesta =  BadRequest();
            } else {
                entity = PizzasServices.GetById(id);
                if (entity == null){
                    respuesta = NotFound();
                } else {
                    intRowsAffected = PizzasServices.UpdateById(pizza);
                    if (intRowsAffected > 0){
                        respuesta = Ok(pizza);
                        //respuesta = NoContent(); // 204
                    } else {
                        respuesta = NotFound();
                    }
                }
            }
            
            return respuesta;
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteById(int id) {
            // HTTP DELETE
            // A successful response of DELETE requests SHOULD be an HTTP response code 200 (OK) 
            //      if the response includes an entity describing the status.
            // The status should be 202 (Accepted) if the action has been queued.
            // The status should be 204 (No Content) if the action has been performed but 
            //      the response does not include an entity.
            // Repeatedly calling DELETE API on that resource will not change the outcome – however, 
            //      calling DELETE on a resource a second time will return a 404 (NOT FOUND) 
            //      since it was already removed.
            //
            IActionResult   respuesta = null;
            Pizza           entity;
            int             intRowsAffected;

            entity = PizzasServices.GetById(id);
            if (entity == null){
                respuesta = NotFound();
            } else {
                intRowsAffected = PizzasServices.DeleteById(id);
                if (intRowsAffected > 0){
                    respuesta = Ok(entity);
                    //respuesta = NoContent(); // 204
                } else {
                    respuesta = NotFound();
                }
            }
            
            
            return respuesta;
        }
    }
}

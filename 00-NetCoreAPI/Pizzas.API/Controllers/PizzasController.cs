using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
//
using Pizzas.API.Models;
using Pizzas.API.Utils;

namespace Pizzas.API.Controllers {
    [ApiController]
    [Route("api/[controller]")]
    public class PizzasController : ControllerBase {
        [HttpGet]
        public IActionResult GetAll() {
            //public ActionResult<List<Pizza>> GetAll() => BD.GetAll();
            IActionResult   respuesta;
            List<Pizza>     entityList;

            entityList  = BD.GetAll();
            respuesta   = Ok(entityList);
            return respuesta;
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id) {
            IActionResult   respuesta = null;
            Pizza           entity;

            entity = BD.Get(id);
            if (entity == null) {
                respuesta = NotFound();
            } else {
                respuesta = Ok(entity);
            }

            return respuesta;
        }

        [HttpPost]
        public IActionResult Create(Pizza pizza) {
            BD.Add(pizza);
            return CreatedAtAction(nameof(Create), new { id = pizza.Id }, pizza);
        }

        [HttpPut("{id}")]
        public IActionResult Update(int id, Pizza pizza) {
            if (id != pizza.Id)
                return BadRequest();

            Pizza pizzaExistente = BD.Get(id);
            if (pizzaExistente is null)
                return NotFound();

            BD.Update(pizza);

            return Ok();
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteById(int id) {
            Pizza pizza = BD.Get(id);

            if (pizza is null)
                return NotFound();

            BD.Delete(id);

            return Ok();
        }

        #region Delete "{id}"
        

        public IActionResult Delete_v1(int id) {
            // Se hace que retorne los RecordsAffected (int)
            IActionResult respuesta = null;
            Pizza           pizza;
            int             result;

            pizza = BD.Get(id);
            if (pizza != null) { 
                result = BD.Delete_v1(id);
                if (result > 0) {
                    respuesta = Ok();
                } else {
                    respuesta = NotFound();
                }

            } else {
                respuesta = NotFound();
            }

            return respuesta;
        }

        public IActionResult Delete_V2(int id) {
            // Se hace directamente el DELETE.
            IActionResult   respuesta = null;
            int             result;

            result = BD.Delete_v1(id);
            if (result > 0) {
                respuesta = Ok();
            } else {
                respuesta = NotFound();
            }

            return respuesta;
        }
        #endregion
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Pizzas.API.Controllers
{
    [ApiController]
    //[Route("api/[controller]")]
    public class VersionsController : ControllerBase
    {
        private readonly ILogger<VersionsController> _logger;

        public VersionsController(ILogger<VersionsController> logger) {
            _logger = logger;
        }

        [HttpGet]
        [Route("api/version")]
        public IActionResult Info() {
            IActionResult   respuesta;
            string          strVersion;

            strVersion  = "1.0";

            respuesta   = Ok(strVersion);
            return respuesta;
        }
    }
}

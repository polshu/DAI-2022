using System.Net;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Linq;
using System.Net.Http;
using OMDBWrapper.API.Models.OMDB;
using OMDBWrapper.API.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace OMDBWrapper.API.Controllers;

[ApiController]
[Route("[controller]")]
public class OMBDController : ControllerBase {
    static HttpClient client = new HttpClient();

    public OMBDController() { }


    // Primer version:
    // Hice toda la logica en el controller.
    // http://localhost:5000/OMBD/search?term=toy
    // http://localhost:5000/OMBD/search?term=rischio
    //
    [HttpGet]
    [Route("search")]
    public async Task<IActionResult> GetSearchInController([FromQuery] string term = "") {
        IActionResult        returnValue;
        SearchByTermResponse returnObject  = new SearchByTermResponse();
        string endPoint = "http://www.omdbapi.com/?s=" + term + "&apikey=7b62fa5d";
        string contentString;

        if (!String.IsNullOrEmpty(term)){
            using (var httpClient = new HttpClient()) {
                using (var response = await httpClient.GetAsync(endPoint)) {
                    contentString = await response.Content.ReadAsStringAsync();
                    returnObject  = JsonSerializer.Deserialize<SearchByTermResponse>(contentString);
                }
            }
            returnValue = Ok(returnObject);
        } else {
            // Bad Request! 
            returnValue = BadRequest();
        }
        
        return returnValue;
    }
    

    // Segunda version:
    // Hice toda la logica en el controller, pero se invoca al Helpar
    // http://localhost:5000/OMBD/searchwithhelper?term=toy
    // http://localhost:5000/OMBD/searchwithhelper?term=rischio
    //
    [HttpGet]
    [Route("searchwithhelper")]
    public async Task<IActionResult> GetSearchInControllerWithHelper([FromQuery] string term = "") {
        IActionResult        returnValue;
        SearchByTermResponse returnObject  = new SearchByTermResponse();
        string endPoint = "http://www.omdbapi.com/?s=" + term + "&apikey=7b62fa5d";
        string contentString;

        if (!String.IsNullOrEmpty(term)){
            contentString = await HTTPHelper.GetContentAsync(endPoint, null);
            returnObject  = JsonSerializer.Deserialize<SearchByTermResponse>(contentString);
            returnValue = Ok(returnObject);
        } else {
            // Bad Request! 
            returnValue = BadRequest();
        }
        
        return returnValue;
    }

    //
    // Hice todo en el OMDBHelper.
    // http://localhost:5000/OMBD/searchhelper?term=toy
    // http://localhost:5000/OMBD/searchhelper?term=rischio
    [HttpGet]
    [Route("searchinhelper")]
    public async Task<IActionResult> GetSearchInHelper([FromQuery] string term = "") {
        IActionResult           returnValue;
        SearchByTermResponse    returnObject;
        OMBDHelper              helper;

        if (!String.IsNullOrEmpty(term)){
            helper = new OMBDHelper();
            returnObject = await helper.GetSearch(term);

            returnValue  = Ok(returnObject);
        } else {
            // Bad Request! 
            returnValue = BadRequest();
        }
        
        return returnValue;
    }

    //
    // Hice todo en el Controller.
    // http://localhost:5000/OMBD/movieinhelper?imdbid=tt0142368    // "Alto rischio"
    // http://localhost:5000/OMBD/movieinhelper?imdbid=tt0317219    // "Cars"
    [HttpGet]
    [Route("movieinhelper")]
    public async Task<IActionResult> GetMovieInHelper([FromQuery] string imdbid = "") {
        IActionResult           returnValue;
        SearchByIdResponse      returnObject;
        OMBDHelper              helper;

        if (!String.IsNullOrEmpty(imdbid)){
            helper = new OMBDHelper();
            returnObject = await helper.GetMovie(imdbid);

            returnValue  = Ok(returnObject);
        } else {
            // Bad Request! 
            returnValue = BadRequest();
        }
        
        return returnValue;
    }
}


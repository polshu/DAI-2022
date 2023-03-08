using System.Net;
using System.Text;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Net.Http;
using Pizzas.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace Pizzas.API.Controllers;

[ApiController]
[Route("[controller]")]
public class OMBDController : ControllerBase {
    public OMBDController() { }


    [HttpGet]
    [Route("search")]
    public async Task<string> GetSearch([FromQuery] string search) {
        //http://localhost:5000/test/saludar?nombre=cacho
        string apiKey = "YOUR_API_KEY";
        string baseUri = $"http://www.omdbapi.com/?apikey={apiKey}";

        HttpClient ApiClient;
        //Create a new HttpClient object
        ApiClient = new HttpClient();
        //Clear headers out of HttpClient
        ApiClient.DefaultRequestHeaders.Accept.Clear();
        //Adds a header which requests a JSON data rather than web page tags etc.
        ApiClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

         string url = "http://www.omdbapi.com/?s=" + search + "&apikey=568027e4";
            //call HTTPclient to open connection and await a response from destination
            using (HttpResponseMessage response = await ApiClient.GetAsync(url)) {
                if (response.IsSuccessStatusCode) {
                    //read in the response data in an asynch fashion 
                    MovieModel movie = await response.Content.ReadAsAsync<MovieModel>();
                    string titlee = movie.Title;
                    return movie;
                } else {
                    throw new Exception(response.ReasonPhrase);
                }
            }
        return texto;
    }


}

public class MovieModel {
    public string Title  { get; set; }
    public string Poster { get; set; }
}
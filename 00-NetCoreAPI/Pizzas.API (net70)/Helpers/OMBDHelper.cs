using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;

using Pizzas.API.Models.OMDB;

namespace Pizzas.API.Helpers;

public class OMBDHelper {
    static HttpClient _client = null;
    private readonly string baseURL = "http://www.omdbapi.com/?apikey=7b62fa5d";
    public OMBDHelper(): this(new HttpClient()){ 
    }

    public OMBDHelper(HttpClient client) { 
        _client = client;
    }

    public async Task<SearchByTermResponse> GetSearch(string term) {
        SearchByTermResponse returnValue;
        string endPoint = baseURL + "&s=" + term;
        string apiResponse;

        using (var response = await _client.GetAsync(endPoint)) {
            apiResponse = await response.Content.ReadAsStringAsync();
            returnValue = JsonSerializer.Deserialize<SearchByTermResponse>(apiResponse);
        }
        return returnValue;
    }

    public async Task<SearchByIdResponse> GetMovie(string imdbid) {
        SearchByIdResponse returnValue;
        string endPoint = baseURL + "&i=" + imdbid;
        string apiResponse;

        using (var response = await _client.GetAsync(endPoint)) {
            apiResponse = await response.Content.ReadAsStringAsync();
            Console.WriteLine(apiResponse);
            returnValue = JsonSerializer.Deserialize<SearchByIdResponse>(apiResponse);
        }
        return returnValue;
    }
    /*
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
    */


}


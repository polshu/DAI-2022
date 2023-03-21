using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;

namespace Pizzas.API.Helpers;

public static class HTTPHelper {
    public static async Task<string> GetContentAsync(string targetURL, string defaultValueOnError) {
        string      returnValue;
        using (HttpClient httpClient=new HttpClient()){
            returnValue  = await GetContentAsync(httpClient, targetURL, defaultValueOnError);
        }
        return returnValue;
    }

    public static async Task<string> GetContentAsync(HttpClient httpClient, string targetURL, string defaultValueOnError) {
        string      returnValue;
        
        returnValue = defaultValueOnError;
        try{
            using (HttpResponseMessage response = await httpClient.GetAsync(targetURL)) {
                returnValue = await response.Content.ReadAsStringAsync();
            }
            
        } catch (Exception ex){
            returnValue = defaultValueOnError;
        }
        
        return returnValue;
    }
}


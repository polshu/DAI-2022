using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;


namespace OMDBWrapper.API.Helpers;

public class HTTPHelper {
    public static async Task<string> GetContentAsync(string targetURL, string defaultValueOnError) {
        string      returnValue;
        HttpClient  httpClient;

        returnValue = defaultValueOnError;
        httpClient  = new HttpClient();

        try {
            using (HttpResponseMessage response = await httpClient.GetAsync(targetURL)) {
                returnValue = await response.Content.ReadAsStringAsync();
            }
        } catch (Exception ex) {
            returnValue = defaultValueOnError;
        }

        return returnValue;
    }
}


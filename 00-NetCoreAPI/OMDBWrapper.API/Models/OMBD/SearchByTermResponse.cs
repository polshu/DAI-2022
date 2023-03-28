using System;

namespace OMDBWrapper.API.Models.OMDB;
public class SearchByTermResponse {
    public List<Movie>      Search          { get; set; }
    public string           totalResults    { get;  set; }
    public string           Response        { get;  set; }
    public SearchByTermResponse() {
        Search          = new List<Movie> ();
        totalResults    = "0";
        Response        = "False";
    }
}
using System.Data.SqlClient;
using Pizzas.API.Helpers;
using System.IO;
using Microsoft.Extensions.Configuration;


namespace Pizzas.API.Utils {
    public class BD {
        public static SqlConnection GetConnection(){
            SqlConnection   db;
            string          connectionString;
            
            connectionString = ConfigurationHelper.GetConfiguration().GetValue<string>("DatabaseSettings:ConnectionString");
            db = new SqlConnection(connectionString);
            return db;
        }
    }
}
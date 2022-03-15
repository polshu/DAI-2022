using System.Data.SqlClient;


namespace Pizzas.API.Utils {
    public class BD {
        private static string CONNECTION_STRING = @"Persist Security Info=False;User ID=Pizzas;password=Pizzas;Initial Catalog=DAI-Pizzas;Data Source=.;";

        public static SqlConnection GetConnection(){
            SqlConnection db;
            string connectionString = CONNECTION_STRING;
            db = new SqlConnection(connectionString);
            return db;
        }
    }
}
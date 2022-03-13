using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;

using Pizzas.API.Models;

namespace Pizzas.API.Utils {
    public static class BD {
        private static string _connectionString = @"Persist Security Info=False;User ID=Pizzas;password=Pizzas;Initial Catalog=DAI-Pizzas;Data Source=.;";

        public static List<Pizza> GetAll() {
            using (SqlConnection db = new SqlConnection(_connectionString)) {
                string sql = "SELECT Id, Nombre, LibreGluten, Descripcion FROM Pizzas";
                return db.Query<Pizza>(sql).ToList();
            }
        }

        public static Pizza Get(int id) {
            string  sql;
            Pizza   returnEntity = null;
            
            sql = "SELECT Id, Nombre, LibreGluten, Descripcion FROM Pizzas WHERE Id = @idPizza";
            using (SqlConnection db = new SqlConnection(_connectionString)) {
                returnEntity  = db.QueryFirstOrDefault<Pizza>(sql, new { idPizza = id });
            }
            return returnEntity;
        }

        public static int Add(Pizza pizza) {
            string  sql;
            int     result = 0;
                
            sql = "INSERT INTO Pizzas (Nombre, LibreGluten, Descripcion) VALUES (@nombre,@libreGluten, @descripcion)";
            using (SqlConnection db = new SqlConnection(_connectionString)) {
                result = db.Execute(sql, new { nombre = pizza.Nombre, libreGluten = pizza.LibreGluten, descripcion = pizza.Descripcion });
            }
            return result;
        }


        public static int Update(Pizza pizza) {
            string  sql;
            int     result = 0;

            sql = "UPDATE Pizzas SET Nombre = @nombre, LibreGluten = @libreGluten, Descripcion = @descripcion WHERE Id = @idPizza";
            using (var db = new SqlConnection(_connectionString)) {
                result = db.Execute(sql, new { idPizza = pizza.Id, nombre = pizza.Nombre, libreGluten = pizza.LibreGluten, descripcion = pizza.Descripcion });
            }
            return result;
        }

        #region Delete(int id)
        public static void Delete(int id) {
            string sql;

            sql = "DELETE FROM Pizzas WHERE Id > @idPizza";
            using (SqlConnection db = new SqlConnection(_connectionString)) {
                db.Execute(sql, new { idPizza = id });
            }
        }

        public static int Delete_v1(int id) {
            // Retorna los RecordsAffected
            string  sql;
            int     intRowsAffected = 0;
            
            sql = "DELETE FROM Pizzas WHERE Id > @idPizza";
            using (SqlConnection db = new SqlConnection(_connectionString)) {
                intRowsAffected = db.Execute(sql, new { idPizza = id });
            }
            return intRowsAffected;
        }
        #endregion


    }
}
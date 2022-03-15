using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;

using Pizzas.API.Models;
using Pizzas.API.Utils;

namespace Pizzas.API.Services {
    public class PizzasServices {
        public static List<Pizza> GetAll() {
            string          sqlQuery;
            List<Pizza>     returnList;

            returnList = new List<Pizza>();
            using (SqlConnection db = BD.GetConnection()) {
                sqlQuery    = "SELECT Id, Nombre, LibreGluten, Importe, Descripcion FROM Pizzas";
                returnList  = db.Query<Pizza>(sqlQuery).ToList();
            }

            return returnList;
        }

        public static Pizza GetById(int id) {
            string  sqlQuery;
            Pizza   returnEntity = null;
            
            sqlQuery = "SELECT Id, Nombre, LibreGluten, Importe, Descripcion FROM Pizzas WHERE Id = @idPizza";
            using (SqlConnection db = BD.GetConnection()) {
                returnEntity  = db.QueryFirstOrDefault<Pizza>(sqlQuery, new { idPizza = id });
            }
            return returnEntity;
        }

        public static int Insert(Pizza pizza) {
            string  sqlQuery;
            int     intNewId = 0;
                
            sqlQuery = "INSERT INTO Pizzas (Nombre, LibreGluten, Importe, Descripcion) VALUES (@nombre,@libreGluten, @importe, @descripcion);SELECT CAST(SCOPE_IDENTITY() AS INT)";
            using (SqlConnection db = BD.GetConnection()) {
                intNewId = db.QuerySingle<int>(sqlQuery, new {  
                                                    nombre      = pizza.Nombre, 
                                                    libreGluten = pizza.LibreGluten, 
                                                    importe     = pizza.Importe,
                                                    descripcion = pizza.Descripcion 
                                                             }
                                               );
                pizza.Id = intNewId;
            }
            return intNewId;
        }

        public static int UpdateById(Pizza pizza) {
            // 
            // Actualiza un registro y retorna los RowsAffected.
            //
            string  sqlQuery;
            int     intRowsAffected = 0;

            sqlQuery = "UPDATE Pizzas SET Nombre = @nombre, LibreGluten = @libreGluten, Importe = @importe, Descripcion = @descripcion WHERE Id = @idPizza";
            using (var db = BD.GetConnection()) {
                intRowsAffected = db.Execute(sqlQuery, new {     
                                                            idPizza     = pizza.Id, 
                                                            nombre      = pizza.Nombre, 
                                                            libreGluten = pizza.LibreGluten, 
                                                            importe     = pizza.Importe, 
                                                            descripcion = pizza.Descripcion 
                                                           }
                                            );
            }
            return intRowsAffected;
        }
        
        public static int DeleteById(int id) {
            //
            // Elimina un registro y retorna los RowsAffected.
            //
            string  sqlQuery;
            int     intRowsAffected = 0;
            
            sqlQuery = "DELETE FROM Pizzas WHERE Id = @idPizza";
            using (SqlConnection db = BD.GetConnection()) {
                intRowsAffected = db.Execute(sqlQuery, new { idPizza = id });
            }
            return intRowsAffected;
        }
    }
}
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Dapper;

using Pizzas.API.Models;
using Pizzas.API.Utils;

namespace Pizzas.API.Services {
    public class PizzasServices {
        public static List<Pizza> GetAll() {
            //
            // Obtiene todos los registro de la base de datos
            //
            string          sqlQuery;
            List<Pizza>     returnList;

            returnList = new List<Pizza>();
            using (SqlConnection db = BD.GetConnection()) {
                sqlQuery     = "SELECT Id, Nombre, LibreGluten, Importe, Descripcion ";
                sqlQuery    += "FROM Pizzas";
                returnList  = db.Query<Pizza>(sqlQuery).ToList();
            }

            return returnList;
        }

        public static Pizza GetById(int id) {
            //
            // Obtiene un registro de la base de datos segun el Id
            //
            string  sqlQuery;
            Pizza   returnEntity = null;
            
            sqlQuery  = "SELECT Id, Nombre, LibreGluten, Importe, Descripcion ";
            sqlQuery += "FROM Pizzas ";
            sqlQuery += "WHERE Id = @idPizza";
            using (SqlConnection db = BD.GetConnection()) {
                returnEntity  = db.QueryFirstOrDefault<Pizza>(sqlQuery, new { idPizza = id });
            }
            return returnEntity;
        }

        public static int Insert(Pizza pizza) {
            // 
            // Inserta un registro y retorna el nuevo Id autogenerado.
            //
            string  sqlQuery;
            int     intNewId = 0;

            sqlQuery  = "INSERT INTO Pizzas (";
            sqlQuery += "   Nombre  , LibreGluten   , Importe   , Descripcion";
            sqlQuery += ") VALUES (";
            sqlQuery += "   @nombre , @libreGluten  , @importe  , @descripcion";
            sqlQuery += ");";
            sqlQuery = "SELECT CAST(SCOPE_IDENTITY() AS INT)";
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

            sqlQuery  = "UPDATE Pizzas SET ";
            sqlQuery += "    Nombre         = @nombre, ";
            sqlQuery += "    LibreGluten    = @libreGluten, ";
            sqlQuery += "    Importe        = @importe, ";
            sqlQuery += "    Descripcion    = @descripcion ";
            sqlQuery += "WHERE Id = @idPizza";
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
            
            sqlQuery  = "DELETE ";
            sqlQuery += "FROM Pizzas ";
            sqlQuery += "WHERE Id = @idPizza";
            using (SqlConnection db = BD.GetConnection()) {
                intRowsAffected = db.Execute(sqlQuery, new { idPizza = id });
            }
            return intRowsAffected;
        }
    }
}
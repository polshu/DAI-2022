import dotenv from 'dotenv';
dotenv.config();

import 'dotenv/config'
import express 	from "express";	// hacer npm i express
import cors 	from "cors";	// hacer npm i cors
import {StatusCodes} from 'http-status-codes';

import supabase     from './repositories/supabaseClient.js';


const app  = express();
const port = 3000;

// Agrego los Middlewares
app.use(cors());         // Middleware de CORS
app.use(express.json()); // Middleware para parsear y comprender JSON

//
// Aca pongo todos los EndPoints de Alumnos
//
app.get('/api/alumnos/', async (req, res) => {	
    let returnArray = null;
    try {
        const { data, error } = await supabase
            .from('alumnos')
            .select('*');

        /*
        const { data, error } = await supabase
            .from('alumnos')
            .select('id, nombre, fecha_nacimiento')

            // Filters (primero los filtros):
            // Los filtros funcionan a nivel de fila: permiten devolver solo las filas
            //      que coincidan con ciertas condiciones, sin modificar la estructura de las filas.
            // Los filtros se pueden usar en consultas select(), update(), upsert() y delete().
            //
            .eq('name', 'Leia')         //  La columna es igual a un valor  
            .neq('name', 'Leia')        //  La columna es distinta de un valor  
            .gt('id', 2)                //  La columna es mayor que un valor  
            .gte('id', 2)               //  La columna es mayor o igual a un valor  
            .lt('id', 2)                //  La columna es menor que un valor  
            .lte('id', 2)               //  La columna es menor o igual a un valor  
            .like('name', '%Lu%')       //  La columna coincide con un patrón  
            .ilike('name', '%lu%')      //  La columna coincide con un patrón (sin distinguir mayúsculas)  
            .is('name', null)           //  La columna es un valor (por ejemplo, null)
            .containedBy('days', ['monday', 'tuesday', 'wednesday', 'friday'])  //  Contained by value

            // Modifiers (despues de los Filters)
            //  Los modificadores ermiten cambiar el formato de la respuesta 
            //      (por ejemplo, devolver una cadena en formato CSV).
            //  Los modificadores deben especificarse después de los filtros. 
            //
            .order('id', { ascending: true })   //  Ordena los resultados.
            .limit(10)                          //  Limita la cantidad de filas a retornar.
            .range(1, 3)                        //  Limita el resultado de la consulta comenzando desde un desplazamiento (from) y terminando en el desplazamiento (to).
                                                //      Incluirá la segunda, tercera y cuarta fila del resultado de la consulta.
            .single()                           //  Retorna una fila de datos.
            .maybeSingle()                      //  Retrieve ninguna (cero) o una fila de datos.
        */
       
        if (!error) {
            returnArray = data;
            res.status(StatusCodes.OK).json(returnArray);
        } else {
            res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
        }
    } catch (error) {
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
})

app.get('/api/alumnos/:id', async (req, res) => {	
    let id = req.params.id;
    let returnEntity = null;
    try {
        const { data, error } = await supabase
            .from('alumnos')
            .select('*')
            .eq('id', id)       //  La columna es igual a un valor  
            .maybeSingle()      //  Retrieve ninguna (cero) o una fila de datos.
       
        if (!error) {
            returnEntity = data;
            if (returnEntity != null){
                res.status(StatusCodes.OK).json(returnEntity);
            } else {
                res.status(StatusCodes.NOT_FOUND).json(null);
            }
            
        } else {
            res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
        }
    } catch (error) {
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
})

//
// Inicio el Server y lo pongo a escuchar.
//
app.listen(port, () => {	// Inicio el servidor WEB (escuchar)
    console.log("Server Utilizando la biblioteca '@supabase/supabase-js' y 'dotenv'");
    console.log(`Listening on http://localhost:${port}`)
})
  
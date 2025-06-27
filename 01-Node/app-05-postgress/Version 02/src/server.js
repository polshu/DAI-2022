import 'dotenv/config'
import express 	from "express";	// hacer npm i express
import cors 	from "cors";	// hacer npm i cors

import { StatusCodes} from 'http-status-codes';

import config from './configs/db-config.js'
import pkg from 'pg'

const { Client }  = pkg;

const app  = express();
const port = process.env.PORT ?? 3000;

// Agrego los Middlewares
app.use(cors());         // Middleware de CORS
app.use(express.json()); // Middleware para parsear y comprender JSON


//
// Aca pongo todos los EndPoints de Alumnos
//
app.get('/api/alumnos/', async (req, res) => {	
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql         = `SELECT * from alumnos`;
        const resultPg    = await client.query(sql);
        res.status(StatusCodes.OK).json(resultPg.rows);
    } catch (error){    
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})

app.get('/api/alumnos/:id', async (req, res) => {	
    let id = req.params.id;
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql = `SELECT * FROM alumnos WHERE id=$1`;
        const values = [id];
        const resultPg = await client.query(sql, values);
        if (resultPg.rows.length > 0 ){
            res.status(StatusCodes.OK).json(resultPg.rows[0]);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})


app.post('/api/alumnos/', async (req, res) => {	
    let entity = req.body;
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql = ` INSERT INTO alumnos (
                            nombre              , 
                            apellido            , 
                            id_curso            , 
                            fecha_nacimiento    , 
                            hace_deportes
                        ) VALUES (
                            $1, 
                            $2, 
                            $3, 
                            $4, 
                            $5
                        ) RETURNING id`;
        const values =  [   entity?.nombre              ?? '', 
                            entity?.apellido            ?? '', 
                            entity?.id_curso            ?? 0, 
                            entity?.fecha_nacimiento    ?? null, 
                            entity?.hace_deportes       ?? 0
                        ];
        const resultPg = await client.query(sql, values);
        const newId = resultPg.rows[0].id;
        if (newId > 0 ){
            res.status(StatusCodes.CREATED).json(newId);
        } else {
            res.status(StatusCodes.BAD_REQUEST).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})


app.put('/api/alumnos/', async (req, res) => {	
    let entity = req.body;
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try {
        const sql = `UPDATE alumnos SET 
                            nombre              = $2, 
                            apellido            = $3, 
                            id_curso            = $4, 
                            fecha_nacimiento    = $5, 
                            hace_deportes       = $6
                        WHERE id = $1`;
                            
        const values =  [   entity.id,
                            entity?.nombre              ?? '', 
                            entity?.apellido            ?? '', 
                            entity?.id_curso            ?? 0, 
                            entity?.fecha_nacimiento    ?? null, 
                            entity?.hace_deportes       ?? 0
                        ];
       
        const resultPg = await client.query(sql, values);
        const rowsAffected = resultPg.rowCount;
        if (rowsAffected > 0){
            res.status(StatusCodes.OK).json(rowsAffected);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})

app.delete('/api/alumnos/:id', async (req, res) => {	
    let id = req.params.id;
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql = `DELETE FROM alumnos WHERE id=$1`;
        const values = [id];
        const resultPg = await client.query(sql, values);
        if (resultPg.rowCount > 0 ){
            res.status(StatusCodes.OK).json(null);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})

//
// Aca pongo todos los EndPoints de Cursos
//
app.get('/api/cursos/', async (req, res) => {	
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql         = `SELECT * from cursos`;
        const resultPg    = await client.query(sql);
        res.status(StatusCodes.OK).json(resultPg.rows);
    } catch (error){    
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})

app.get('/api/cursos/:id', async (req, res) => {	
    let id = req.params.id;
    const client = new Client(config);

    try {
        await client.connect();
    } catch (connErr) {
        console.error('Error de conexión:', connErr.message);
        return res.status(StatusCodes.INTERNAL_SERVER_ERROR).send('No se pudo conectar a la base de datos');
    }

    try{
        const sql = `SELECT * FROM cursos WHERE id=$1`;
        const values = [id];
        const resultPg = await client.query(sql, values);
        if (resultPg.rows.length > 0 ){
            res.status(StatusCodes.OK).json(resultPg.rows[0]);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } finally {
        if (client) {
            try {
                await client.end();
            } catch (closeErr) {
                console.error('Error cerrando la conexión:', closeErr.message);
            }
        }
    }
})

//
// Inicio el Server y lo pongo a escuchar.
//
app.listen(port, () => {	// Inicio el servidor WEB (escuchar)
    console.log("Server Utilizando la biblioteca 'pg' y 'dotenv', mejorando try/catch");
    console.log(`Listening on http://localhost:${port}`)
})
  
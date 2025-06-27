import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';

import config from './../configs/db-config.js'
import pkg from 'pg'

const { Pool }  = pkg;

const pool = new Pool(config);
const router = Router();

router.get('', async (req, res) => {
    try{
        const sql         = `SELECT * from alumnos`;
        const resultPg    = await pool.query(sql);
        res.status(StatusCodes.OK).json(resultPg.rows);
    } catch (error){    
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    } 
});

router.get('/:id', async (req, res) => {
    let id = req.params.id;

    try{
        const sql = `SELECT * FROM alumnos WHERE id=$1`;
        const values = [id];
        const resultPg = await pool.query(sql, values);
        if (resultPg.rows.length > 0 ){
            res.status(StatusCodes.OK).json(resultPg.rows[0]);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
});


router.post('', async (req, res) => {
    let entity = req.body;

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
        const resultPg = await pool.query(sql, values);
        const newId = resultPg.rows[0].id;
        if (newId > 0 ){
            res.status(StatusCodes.CREATED).json(newId);
        } else {
            res.status(StatusCodes.BAD_REQUEST).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
});


router.put('/', async (req, res) => {
    let entity = req.body;
   
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
       
        const resultPg = await pool.query(sql, values);
        const rowsAffected = resultPg.rowCount;
        if (rowsAffected > 0){
            res.status(StatusCodes.OK).json(rowsAffected);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
});


router.delete('/:id', async (req, res) => {
    let id = req.params.id;

    try{
        const sql = `DELETE FROM alumnos WHERE id=$1`;
        const values = [id];
        const resultPg = await pool.query(sql, values);
        if (resultPg.rowCount > 0 ){
            res.status(StatusCodes.OK).json(null);
        } else {
            res.status(StatusCodes.NOT_FOUND).json(null);
        }
    } catch (error){
        console.log(error);
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error: ` + error.message);
    }
});

export default router;

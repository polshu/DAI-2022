import { Router } from 'express';
import { StatusCodes } from 'http-status-codes';

import config from './../configs/db-config.js'
import pkg from 'pg'

const { Pool }  = pkg;

const pool = new Pool(config);
const router = Router();

router.get('', async (req, res) => {
    try{
        const sql         = `SELECT * from cursos`;
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
        const sql = `SELECT * FROM cursos WHERE id=$1`;
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

export default router;

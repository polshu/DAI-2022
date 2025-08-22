import pkg          from 'pg'
import config       from './../configs/db-config.js';      // Traigo la configuracion de la base de datos.
import LogHelper    from './../helpers/log-helper.js'

const { Pool }  = pkg;

export default class CursosRepository {
    constructor() {
        // Se ejecuta siempre, (al instanciar la clase)
        console.log('CursosRepository.constructor()');
        this.DBPool     = null;
    }

    getDBPool = () => {
        if (this.DBPool == null){
            this.DBPool = new Pool(config);
        }
        return this.DBPool;
    }

    getAllAsync = async () => {
        console.log(`CursosRepository.getAllAsync()`);
        let returnArray = null;
        
        try {
            //const sql = `SELECT * FROM cursos ORDER BY id`;
            const sql = `SELECT 
                            cursos.id,
                            cursos.nombre, 
                            array (
                                SELECT 
                                    json_build_object (
                                        'id'                , alumnos.id, 
                                        'nombre'			, alumnos.nombre, 
                                        'apellido'			, alumnos.apellido, 
                                        'id_curso'			, alumnos.id_curso, 
                                        'fecha_nacimiento'	, alumnos.fecha_nacimiento, 
                                        'hace_deportes'		, alumnos.hace_deportes,
                                        'imagen'			, alumnos.imagen
                                    ) 
                                FROM alumnos 
                                WHERE alumnos.id_curso = cursos.id 
                                ORDER BY alumnos.id
                            ) AS alumnos
                        FROM cursos 
                        ORDER BY cursos.id`;
            const resultPg = await this.getDBPool().query(sql);
            returnArray = resultPg.rows;
        } catch (error) {
            LogHelper.logError(error);
        }
        return returnArray;
    }

    getByIdAsync = async (id) => {
        console.log(`CursosRepository.getByIdAsync(${id})`);
        let returnEntity = null;
        try {
            const sql = `SELECT * FROM cursos WHERE id=$1`;
            const values = [id];
            const resultPg = await this.getDBPool().query(sql, values);
            if (resultPg.rows.length > 0){
                returnEntity = resultPg.rows[0];
            }
        } catch (error) {
            LogHelper.logError(error);
        } 
        return returnEntity;
    }
    
}

import config from './../../dbconfig.js';
import sql from 'mssql';
import logHelper from './../modules/log-helper.js';

class PizzaService {
    getAll = async () => {
        let returnArray = null;
        
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query("SELECT * FROM Pizzas");
            returnArray = result.recordset;
        }
        catch (error) {
            logHelper.logError('PizzaService->getAll', error);
        }
        return returnArray;
    }

    getById = async (id) => {
        let returnEntity = null;

        try {
            let pool   = await sql.connect(config);
            let result = await pool.request()
                                .input('pId', sql.Int, id)
                                .query('SELECT * FROM Pizzas WHERE Id = @pId');
            returnEntity = result.recordset[0];
        } catch (error) {
            logHelper.logError('PizzaService->getById', error);
        }
        return returnEntity;
    }

    insert = async (pizza) => {
        let rowsAffected = 0;

        try {
            let pool = await sql.connect(config);
            let result = await pool.request()
                .input('pNombre'     , sql.NChar , pizza?.Nombre ?? '')
                .input('pLibreGluten', sql.Bit   , pizza?.LibreGluten ?? false)
                .input('pImporte'    , sql.Float , pizza?.Importe ?? 0)
                .input('pDescripcion', sql.NChar , pizza?.Descripcion ?? '')
                .query(`INSERT INTO Pizzas (Nombre, LibreGluten, Importe, Descripcion) VALUES (@pNombre, @pLibreGluten, @pImporte, @pDescripcion)`);
            rowsAffected = result.rowsAffected;
        } catch (error) {
            logHelper.logError('PizzaService->insert', error);
        }
        return rowsAffected;
    }

    update = async (id, pizza) => {
        let rowsAffected = 0;

        try {
            let pool = await sql.connect(config);
            let result = await pool.request()
                .input('pNombre'     , sql.NChar , pizza?.Nombre ?? '')
                .input('pLibreGluten', sql.Bit   , pizza?.LibreGluten ?? false)
                .input('pImporte'    , sql.Float , pizza?.Importe ?? 0)
                .input('pDescripcion', sql.NChar , pizza?.Descripcion ?? '')
                .input('pId'         , sql.Int   , pizza?.Id ?? 0)
                .input('pOriginalId' , sql.Int   , id ?? 0)
                .query(`UPDATE Pizzas SET Nombre=@pNombre, LibreGluten=@pLibreGluten, Importe=@pImporte, Descripcion=@pDescripcion WHERE Id=@pOriginalId`);
            rowsAffected = result.rowsAffected;
        } catch (error) {
            logHelper.logError('PizzaService->update', error);
        }
        return rowsAffected;
    }

    deleteById = async (id) => {
        let rowsAffected = 0;

        try {
            let pool   = await sql.connect(config);
            let result = await pool.request()
                                .input('pId', sql.Int, id)
                                .query('DELETE FROM Pizzas WHERE id = @pId');
            rowsAffected = result.rowsAffected;
        } catch (error) {
            logHelper.logError('PizzaService->deleteById', error);
        }
        return rowsAffected;
    }
}

export default PizzaService;

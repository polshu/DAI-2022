import supabase     from './supabaseClient.js';
import LogHelper    from './../helpers/log-helper.js'

export default class AlumnosRepository {
    constructor() {
        // Se ejecuta siempre, (al instanciar la clase)
        console.log('Estoy en: (SupabaseClient) AlumnosRepository.constructor()');
    }

    getAllAsync = async () => {
        console.log(`(SupabaseClient) AlumnosRepository.getAllAsync()`);
        let returnArray = null;

        try {
            const { data, error } = await supabase.from('alumnos').select('*');
            if (!error) {
                returnArray = data;
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return returnArray;
    }

    getByIdAsync = async (id) => {
        console.log(`(SupabaseClient) AlumnosRepository.getByIdAsync(${id})`);
        let returnEntity = null;
        try {
            const { data, error } = await supabase.from('alumnos').select('*').eq('id', id);
            if (!error) {
                if (data.length > 0){
                    returnEntity = data[0];
                }
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return returnEntity;
    }

    createAsync = async (entity) => {
        console.log(`AlumnosRepository.createAsync(${JSON.stringify(entity)})`);
        let newId = 0;

        try {
            const { data, error } = await supabase
                .from('alumnos')
                .insert([entity])
                .select('id') 
                .single();
            
            if (!error) {
                newId = data.id;
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return newId;
    }

    updateAsync = async (entity) => {
        console.log(`AlumnosRepository.updateAsync(${JSON.stringify(entity)})`);
        let rowsAffected = 0;
        let id = entity.id;

        try {
            const { data, error } = await supabase
                .from('alumnos')
                .update(entity)
                .eq('id', id)
                .select('id'); 
            
            if (!error) {
                rowsAffected = data.length;
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return rowsAffected;
    }
    
    deleteByIdAsync = async (id) => {
        console.log(`AlumnosRepository.deleteByIdAsync(${id})`);
        let rowsAffected = 0;

        try {
            const { data, error } = await supabase
                .from('alumnos')
                .delete()
                .eq('id', id)
                .select('id'); 
            
            if (!error) {
                rowsAffected = data.length;
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return rowsAffected;
    }
}
/*
Este operador (??) retorna el lado derecho de la operación cuando el lado izquierdo es un valor falsy.

falsy es un valor que se considera false (false). 
En Javascript existen sólo 6 valores falsy: undefined, null, NaN, 0, "" (string vacio) y false.

console.log(12 || "not found") // 12
console.log(0  || "not found") // "not found"

console.log("jane" || "not found") // "jane"
console.log(""     || "not found") // "not found"

console.log(true  || "not found") // true
console.log(false || "not found") // "not found"

console.log(undefined || "not found") // "not found"
console.log(null      || "not found") // "not found"
----------------------------------------------------
console.log(12 ?? "not found") // 12
console.log(0  ?? "not found") // 0

console.log("jane" ?? "not found") // "jane"
console.log(""     ?? "not found") // ""

console.log(true  ?? "not found") // true
console.log(false ?? "not found") // false

console.log(undefined ?? "not found") // "not found"
console.log(null      ?? "not found") // "not found"
*/
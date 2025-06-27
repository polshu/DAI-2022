import LogHelper from './../helpers/log-helper.js'
import supabase from './supabaseClient.js';

export default class CursosRepository {
    constructor() {
        // Se ejecuta siempre, (al instanciar la clase)
        console.log('Estoy en: (SupabaseClient) CursosRepository.constructor()');
    }

    getAllAsync = async () => {
        console.log(`(SupabaseClient) CursosRepository.getAllAsync()`);
        let returnArray = null;

        try {
            const { data, error } = await supabase.from('cursos').select('*');
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
        console.log(`(SupabaseClient) CursosRepository.getByIdAsync(${id})`);
        let returnEntity = null;
        try {
            const { data, error } = await supabase.from('cursos').select('*').eq('id', id);
            if (!error) {
                if (data.length > 0){
                    returnEntity = data;
                }
            } else {
                LogHelper.logError(error);
            }
        } catch (error) {
            LogHelper.logError(error);
        }
        return returnEntity;
    }
    
}

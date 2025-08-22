import CursosRepository from '../repositories/cursos-repository.js';

export default class CursosService {
    constructor() {
        console.log('CursosService.constructor()');
        this.CursosRepository = new CursosRepository();
    }

    getAllAsync = async () => {
        console.log(`CursosService.getAllAsync()`);
        const returnArray = await this.CursosRepository.getAllAsync();
        return returnArray;
    }

    getByIdAsync = async (id) => {
        console.log(`CursosService.getByIdAsync(${id})`);
        const returnEntity = await this.CursosRepository.getByIdAsync(id);
        return returnEntity;
    }

    createAsync = async (entity) => {
        console.log(`CursosService.createAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.CursosRepository.createAsync(entity);
        return rowsAffected;
    }

    updateAsync = async (entity) => {
        console.log(`CursosService.updateAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.CursosRepository.updateAsync(entity);
        return rowsAffected;
    }
    
    deleteByIdAsync = async (id) => {
        console.log(`CursosService.deleteByIdAsync(${id})`);
        const rowsAffected = await this.CursosRepository.deleteByIdAsync(id);
        return rowsAffected;
    }

    /*
    getByIdAsync_PPT = async (id) => {
        console.log('Estoy en: CursosService.getByIdAsync_PPT()');
        const returnEntity = await this.CursosRepository.getByIdAsync_PPT(id);
        return returnEntity;
    }
    */
}


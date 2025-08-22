import AlumnosRepository from '../repositories/alumnos-repository.js';

export default class AlumnosService {
    constructor() {
        console.log('AlumnosService.constructor()');
        this.AlumnosRepository = new AlumnosRepository();
    }

    getAllAsync = async () => {
        console.log(`AlumnosService.getAllAsync()`);
        const returnArray = await this.AlumnosRepository.getAllAsync();
        return returnArray;
    }

    getByIdAsync = async (id) => {
        console.log(`AlumnosService.getByIdAsync(${id})`);
        const returnEntity = await this.AlumnosRepository.getByIdAsync(id);
        return returnEntity;
    }

    createAsync = async (entity) => {
        console.log(`AlumnosService.createAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.AlumnosRepository.createAsync(entity);
        return rowsAffected;
    }

    updateAsync = async (entity) => {
        console.log(`AlumnosService.updateAsync(${JSON.stringify(entity)})`);
        const rowsAffected = await this.AlumnosRepository.updateAsync(entity);
        return rowsAffected;
    }
    
    deleteByIdAsync = async (id) => {
        console.log(`AlumnosService.deleteByIdAsync(${id})`);
        const rowsAffected = await this.AlumnosRepository.deleteByIdAsync(id);
        return rowsAffected;
    }

    /*
    getByIdAsync_PPT = async (id) => {
        console.log('Estoy en: AlumnosService.getByIdAsync_PPT()');
        const returnEntity = await this.AlumnosRepository.getByIdAsync_PPT(id);
        return returnEntity;
    }
    */
}


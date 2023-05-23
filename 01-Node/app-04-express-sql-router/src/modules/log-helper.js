import logConfiguration from "./log-helper-config.js";
import fs from 'fs'

class LogHelper {
    getFileName = () => {
        let returnValue;
        returnValue = `${logConfiguration.logFolder}errores.txt`;
        return returnValue;
    }

    logError = async (text, error) => {
        let linea;
        let errorFileName = this.getFileName();
        let fechaHora = new Date().toISOString();

        linea = fechaHora + ' ' + text + " error: " + error.message + '\n';
        
        console.log(errorFileName, linea);

        fs.appendFile(errorFileName, linea, (err) => {
            if (err){
                console.log(err);
            }
        });
    }
}

export default new LogHelper;

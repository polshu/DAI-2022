# 02-typescript-app
https://www.typescriptlang.org/
## Creando una aplicacion con TypeScript
Ejemplo paso a paso para la creacionde una aplicacion en NodeJS, utilizando TypeScript.


### Creacion del proyecto 
Se crea el proyecto de manera standard.
```
npm init
```


### Instalacion de TypeScript 
Se puede instalar desde npm o desde nuget.
```
npm i [-g] typescript
```

### Pizzas.API (v1)
La primer version de la API de Pizzas.


tsc -outDir js app.ts
tsc -outDir js app.ts -watch 
tsc --init    -> Genera tsconfig.json
en el archivo tsconfig.json se pueden configurar las opciones del compilador, asi como los archivo y se desean o no compilar cuando se ejecuta el comando TSC. En vez de pasarlos parametros en l alinea de comandos, el programa TSC los leera de este archivo.
Hay muchas opciones disponibles que se pueden descomentar y ajustar a las necesidades que queremos. Por ejemplo outDir.

Se modifico esto.. "outDir": "./js",   se elimino la carpeta y se ejecuta de la linea de comandos TSC y se genera solo esto.

En otras palabras, si tu archivo tsconfig.json no tiene ninguna propiedad "files" ni "include", el compilador TypeScript considerará todos los archivos .ts en tu proyecto al momento de compilar. Esto incluirá todos los archivos TypeScript en todas las carpetas y subcarpetas del directorio donde se encuentra el archivo de configuración.



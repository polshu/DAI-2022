# API de Pizzas (CRUD)
Ejemplo de API completa (de pizzas) utilizando express que accede a SQL Server, utiliza env y tiene un FrontEnd.
----------------
## Modulos Instalados
- npm i dotenv
- npm i express
- npm i cors
- npm i http-status-codes
- npm i mssql
----------------
## Base de datos
> Ejecutar los scripts de creacion de la base de datos.

- 01 - CreateLoginAndUser
- 02 - CreateTableAndData

## Para iniciar el server
>npm start server

## Rutas
- La API se encuentra en 
    >http://localhost:5000/api/pizzas
- El Front End se encuentra en:
    >http://localhost:5000/front

## Cambios con respecto a la version anterior
- Configuracion del PORT desde el archivo .env
- Se pusieron todos los endPoints en un controller (utilzando Router()) /src/controllers/pizzaController.js
- Se modificaron en las respuestas de los endPoints para que retorne una constantes de status codes utilzando el modulo 'http-status-codes'.
- Se creo un modulo /src/modules/log-helper.js (y su configuracion) que guarda en un archivo de texto los errores que se producen. Se configura desde el archivo .env

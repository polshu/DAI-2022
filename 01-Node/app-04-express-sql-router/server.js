// npm run server
import 'dotenv/config'
import express from "express";
import cors    from "cors";
import PizzaRouter from "./src/controllers/pizzaController.js";

//
// Variables/Constantes del Modulo
//
const app  = express();
const port = process.env.HTTP_PORT; // Puerto en donde levanta express (archivo .env)

//
// Inclusion de los Middlewares
//
app.use(cors());                              // Agrego el middleware de CORS
app.use(express.json());                      // Agrego el middleware para parsear y comprender JSON
app.use('/front', express.static('public'));  // Agrego el middleware de retornar archivos estaticos, montando 
                                              //  en http://localhost:5000/front lo que existe en la carpeta "public"

// 
// Endpoints (todos los Routers)
//
app.use("/api/pizzas", PizzaRouter);

//
// Levanto el servidor WEB (pongo a escuchar)
//
app.listen(port, () => {
  console.log(`"server" escuchando el en el puerto ${port} (http://localhost:${port}/)`);
});

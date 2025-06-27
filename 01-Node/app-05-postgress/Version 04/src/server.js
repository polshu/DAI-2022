import 'dotenv/config'
import express 	from "express";	// hacer npm i express
import cors 	from "cors";	// hacer npm i cors

// Routers
import AlumnosRouter    from "./controllers/alumnos-controller.js"
import CursosRouter     from "./controllers/cursos-controller.js"

const app  = express();
const port = process.env.PORT ?? 3000;

// Agrego los Middlewares
app.use(cors());         // Middleware de CORS
app.use(express.json()); // Middleware para parsear y comprender JSON

// Endpoints (todos los Routers)
app.use("/api/alumnos", AlumnosRouter);
app.use("/api/cursos" , CursosRouter);

//
// Inicio el Server y lo pongo a escuchar.
//
app.listen(port, () => {	// Inicio el servidor WEB (escuchar)
    console.log("Server Utilizando Router");
    console.log(`Listening on http://localhost:${port}`)
})
  
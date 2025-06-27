import 'dotenv/config'
import express 	from "express";	// hacer npm i express
import cors 	from "cors";	// hacer npm i cors

// Routers
import AlumnosController    from "./controllers/alumnos-controller.js"
import CursosController     from "./controllers/cursos-controller.js"

const app  = express();
const port = process.env.PORT ?? 3000;

// Agrego los Middlewares
app.use(cors());         // Middleware de CORS
app.use(express.json()); // Middleware para parsear y comprender JSON

// Endpoints (todos los Routers)
app.use("/api/alumnos", AlumnosController);
app.use("/api/cursos" , CursosController);

//
// Inicio el Server y lo pongo a escuchar.
//
app.listen(port, () => {	// Inicio el servidor WEB (escuchar)
    console.log("server Controllers/Services/Repositories con SupabaseClient");
    console.log(`Listening on http://localhost:${port}`)
})
  
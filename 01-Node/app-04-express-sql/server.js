// npm run server
import express from "express";
import cors    from "cors";
import PizzaService from './src/services/pizzas-services.js'


//
// Variables/Constantes del Modulo
//
const app  = express();
const port = 5000;                  // Puerto en donde levanta express (5000)
const pizzaService = new PizzaService();

//
// Inclusion de los Middlewares
//
app.use(cors());                    // agrego el middleware de CORS
app.use(express.json());            // agrego el middleware para parsear y comprender JSON
app.use(express.static('public'));  // agrego el middleware de retornar archivos estaticos

// 
// Endpoints
//
app.get('/api/pizzas', async (req, res) => {
  let respuesta;
  const pizzas = await pizzaService.getAll();
  if (pizza!=null){
    respuesta = res.status(200).json(pizzas);
  } else {
    respuesta = res.status(500).send(`Error interno.`);
  }

  return respuesta;
});

app.get('/api/pizzas/:id', async (req, res) => {
  let respuesta;
  let id = req.params.id;

  const pizza = await pizzaService.getById(id);

  if (pizza!=null){
    respuesta = res.status(200).json(pizza);
  } else {
    respuesta = res.status(404).send(`No se encontro la Pizza (id:${id}).`);
  }

  return respuesta;
});

app.post('/api/pizzas', async (req, res) => {
  let pizza = req.body;

  const registrosAfectados = await pizzaService.insert(req.body);

  return res.status(201).json(registrosAfectados);
});

app.put('/api/pizzas/:id', async (req, res) => {
  let id    = req.params.id;
  let pizza = req.body;

  const registrosAfectados = await pizzaService.update(id, pizza);

  return res.status(200).json(registrosAfectados);
});

app.delete('/api/pizzas/:id', async (req, res) => {
  let respuesta;
  let id = req.params.id;

  const registrosAfectados = await pizzaService.deleteById(id);
  if (registrosAfectados!=0){
    respuesta = res.status(200).json(respuesta);
  } else {
    respuesta = res.status(404).send(`No se encontro la Pizza (id:${id}).`);
  }
  return respuesta;
});

//
// Levanto el servidor WEB (pongo a escuchar)
//
app.listen(port, () => {
  console.log(`"server" escuchando el en el puerto ${port} (http://localhost:${port}/)`);
});

import { Router} from 'express';
import PizzaService from '../services/pizzas-services.js';
import { ReasonPhrases, StatusCodes} from 'http-status-codes';

const router = Router();
const pizzaService = new PizzaService();

router.get('', async (req, res) => {
  let respuesta;
  const pizzas = await pizzaService.getAll();
  if (pizza!=null){
    respuesta = res.status(StatusCodes.OK).json(pizzas);
  } else {
    respuesta = res.status(StatusCodes.INTERNAL_SERVER_ERROR).send(`Error interno.`);
  }

  return respuesta;
});

router.get('/:id', async (req, res) => {
  let respuesta;
  let id = req.params.id;

  const pizza = await pizzaService.getById(id);

  if (pizza!=null){
    respuesta = res.status(StatusCodes.OK).json(pizza);
  } else {
    respuesta = res.status(StatusCodes.NOT_FOUND).send(`No se encontro la Pizza (id:${id}).`);
  }

  return respuesta;
});

router.post('', async (req, res) => {
  let pizza = req.body;

  const registrosAfectados = await pizzaService.insert(req.body);

  return res.status(StatusCodes.CREATED).json(registrosAfectados);
});

router.put('/:id', async (req, res) => {
  let id    = req.params.id;
  let pizza = req.body;

  const registrosAfectados = await pizzaService.update(id, pizza);

  return res.status(StatusCodes.OK).json(registrosAfectados);
});

router.delete('/:id', async (req, res) => {
  let respuesta;
  let id = req.params.id;

  const registrosAfectados = await pizzaService.deleteById(id);
  if (registrosAfectados!=0){
    respuesta = res.status(StatusCodes.OK).json(respuesta);
  } else {
    respuesta = res.status(StatusCodes.NOT_FOUND).send(`No se encontro la Pizza (id:${id}).`);
  }
  return respuesta;
});

export default router;

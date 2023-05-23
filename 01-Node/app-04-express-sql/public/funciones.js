const BASE_URL_PIZZAS = 'http://localhost:5000/api/pizzas/';

function getAll(){
  let url = BASE_URL_PIZZAS;
  console.log('getAll: ', url);
  axios.get(url)
    .then((response) => {
      console.log(response.data);
      //console.log(response.status);
      //console.log(response.statusText);
      //console.log(response.headers);
      //console.log(response.config);
      displayPizzas(response.data);
    })
    .catch(error => {
      console.log(error);
    });
}

function getAll_Clear(){
    displayPizzas([]);
}

function displayPizzas(pizzas){
  let table = '<table class="table table-striped table-hover">';
  table += `<thead class="table-dark"><tr><th class="col-1 text-center">Id</th><th class="col-3">Nombre</th><th class="col-5">Descripcion</th><th class="col-2 text-center">Importe</th><th class="col-1 text-center">Libre Gluten</th></tr></thead>`;
  pizzas.forEach((unPizza, index) => {
    table += `<tr>`;
    table += `<td scope="col" class="text-center">${unPizza.id}</td>`;
    table += `<td scope="col">${unPizza.nombre}</td>`;
    table += `<td scope="col">${unPizza.descripcion}</td>`;
    table += `<td scope="col" class="text-center">${unPizza.importe}</td>`;
    table += `<td scope="col" class="text-center">${unPizza.libreGluten}</td>`;
    table += `</tr>`;
  });
  table += "</table>";
  document.getElementById("pizzas-list").innerHTML = table;
}


function getById(){
  let id = document.getElementById('txtId').value;
  let url = BASE_URL_PIZZAS + id;
  console.log('getById: ', url);
  axios.get(url)
    .then((response) => {
      //console.log(response.data);
      //console.log(response.status);
      //console.log(response.statusText);
      //console.log(response.headers);
      //console.log(response.config);
      displayUnaPizza(response.data, false);
    })
    .catch(error => {
      displayUnaPizza({}, true);
    });
}

function getById_Clear(){
  displayUnaPizza({});
}

function displayUnaPizza(unaPizza, huboError){
  let estilo = 'table-dark';
  if (huboError){
    estilo = 'table-danger';
  }
  let table = '<table class="table table-striped table-hover">';
  table += `<thead class="${estilo}"><tr><th class="col-1 text-center">Id</th><th class="col-3">Nombre</th><th class="col-5">Descripcion</th><th class="col-2 text-center">Importe</th><th class="col-1 text-center">Libre Gluten</th></tr></thead>`;
    table += `<tr>`;
    table += `<td scope="col" class="text-center">${unaPizza.id}</td>`;
    table += `<td scope="col">${unaPizza.nombre}</td>`;
    table += `<td scope="col">${unaPizza.descripcion}</td>`;
    table += `<td scope="col" class="text-center">${unaPizza.importe}</td>`;
    table += `<td scope="col" class="text-center">${unaPizza.libreGluten}</td>`;
    table += `</tr>`;
  table += "</table>";
  document.getElementById("pizzas-una").innerHTML = table;
}
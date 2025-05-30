# React Native - Consumir la 'API de OMDb'

Esta es una aplicación móvil hecha con **React Native + Expo**, que permite buscar una película por su **IMDb ID**, consultar la API de [OMDb](http://www.omdbapi.com) y mostrar el título y el póster de la película.

Se simula un tiempo de acceso a la api de 3 segundos, asi  se puede ver el **ActivityIndicator**.

---

## Requisitos

* Node.js
* Expo CLI (`npm install -g expo-cli`)
* Conexión a internet
* Una API Key de [OMDb](http://www.omdbapi.com/apikey.aspx)

---

## Pasos para crear y ejecutar la app

1. Crear el proyecto con Expo:

```bash
npx create-expo-app axios-app --template blank
cd axios-app
```

2. Instalar la ultima version de Expo:

```bash
npm i expo@latest
```

3. Instalar Axios:

```bash
npm i axios
```

4. Instalar `ngrok` (opcional para exponer localmente):

```bash
npm i -g @expo/ngrok
```

> Nota: si da error, probar con:
>
> ```bash
> npm i --global @expo/ngrok@^4.1.0
> ```



---

## API de ejemplo

Puedes probar con el siguiente ID de IMDb:

* **IMDb ID**: `tt0317219` (película *Cars*)

URL completa:

```
http://www.omdbapi.com/?i=tt0317219&apikey=[API_KEY]
```

Respuesta de ejemplo:

```json
{
  "Title": "Cars",
  "Year": "2006",
  "Rated": "G",
  "Released": "09 Jun 2006",
  "Runtime": "116 min",
  "Genre": "Animation, Adventure, Comedy",
  "Director": "John Lasseter, Joe Ranft",
  "Writer": "John Lasseter, Joe Ranft, Jorgen Klubien",
  "Actors": "Owen Wilson, Bonnie Hunt, Paul Newman",
  "Plot": "On the way to the biggest race of his life, a hotshot rookie race car gets stranded in a rundown town and learns that winning isn't everything in life.",
  "Language": "English, Italian, Japanese, Yiddish",
  "Country": "United States",
  "Awards": "Nominated for 2 Oscars. 28 wins & 34 nominations total",
  "Poster": "https://m.media-amazon.com/images/M/MV5BMTg5NzY0MzA2MV5BMl5BanBnXkFtZTYwNDc3NTc2._V1_SX300.jpg",
  "Ratings": [
    {
      "Source": "Internet Movie Database",
      "Value": "7.3/10"
    },
    {
      "Source": "Rotten Tomatoes",
      "Value": "74%"
    },
    {
      "Source": "Metacritic",
      "Value": "73/100"
    }
  ],
  "Metascore": "73",
  "imdbRating": "7.3",
  "imdbVotes": "501,895",
  "imdbID": "tt0317219",
  "Type": "movie",
  "DVD": "N/A",
  "BoxOffice": "$244,082,982",
  "Production": "N/A",
  "Website": "N/A",
  "Response": "True"
}
```


---

## Agregarle

1. Que se muestre debajo los "Actors", "Director" y "Genre".
2. Que se muestre el listado de "Ratings", uno debajo del otro.
3. Que se pueda escrolear ya que no se puede ir mas para abajo!


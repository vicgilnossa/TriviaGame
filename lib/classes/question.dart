class Question {
  final int id, answer;
  final String question;
  List<String> options = [];

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List videojuegos = [
  {
    "id": 1,
    "question": "¿Cuál fue el GOTY del 2016?",
    "options": [
      "Fortnite",
      "Overwatch",
      "Battlefield V",
      "Age of Empires Definitive Edition"
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "¿A qué juego pertenece Brimstone?",
    "options": ["League of Legends", "Anvil", "Valorant", "DeathL Loop"],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "¿Security Craft es un mod del juego...?",
    "options": ["Minecraft", "GTA V", "los Sims 4", "Fall Out 4"],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "¿En qué plataformas se puede jugar God of War Ragnarok?",
    "options": [
      "Pc y PS4",
      "PS4 y PS5",
      "Xbox one y series s/X",
      "Multiplataforma"
    ],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "¿Cuánto tardó el desarrollo de Red Dead Redemption 2?",
    "options": ["6 años", "10 años", "8 años", "15 meses"],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "¿Con qué número se identifica al protagonista de Hitman?",
    "options": ["47", "89", "1", "109"],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "¿Cuál de estos personajes no aparece en Multiversus?",
    "options": ["Rick Sánchez", "Tom y Jerry", "Fred", "Gizmo"],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "¿Cuál es el videojuego vendido más caro?",
    "options": [
      "The Legend of Zelda",
      "Mario Bros",
      "Pókemon Yellow",
      "Air Raid"
    ],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question":
        "En 2012, un jóven de 18 años colapsó y murió luego de permanecer jugando...",
    "options": ["Diablo III", "World of Warcraft", "Counter Strike CZ", "Rust"],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question":
        "El cosmonauta ruso Aleksandr Serebrov fue el primero en jugar con una consola de videojuegos en el espacio, ¿cuál?",
    "options": [
      "Hartung Game Master",
      "Neo Geo Pocket Color",
      "Game Boy",
      "Sega Nomad"
    ],
    "answer_index": 2,
  },
];

const List musica = [
  {
    "id": 1,
    "question": "¿Cuántas líneas horizontales tiene un pentragama?",
    "options": ["10", "8", "50", "5"],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "¿Qué caracteriza el pianíssimo?",
    "options": [
      "Baja intensidad",
      "Calidad y material",
      "Caos",
      "Ternura y suavidad"
    ],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "¿Que género interpreta Chick Corea?",
    "options": ["Mambo", "Jazz bebop", "Jazz moderno", "Tango"],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "¿En cual de éstas canciones partició Luny Tunes?",
    "options": [
      "Mírame-Daddy Yankee & Deevani",
      "Caramelo-Ozuna",
      "Taki taki-Dj Snake",
      "Dile- Don Omar"
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "¿Cuál de estos es un subgénero del metal?",
    "options": ["Car", "Doom", "Vomit", "Steel"],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "¿Quién de estos no ha ganado un Polar?",
    "options": ["Eric Ericson", "Sting", "Yo Yo Ma", "Yes"],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "¿En que país nació Ludwig van Beethoven?",
    "options": ["Austria", "Rusia", "Alemania", "Inglaterra"],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "¿Qué es tempo en una pieza musical?",
    "options": ["Intensidad", "Velocidad", "Recursividad", "Armonía"],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "¿Cuál de estos compositores pertenece al romanticismo?",
    "options": [
      "Alban Berg",
      "Joseph Haydn",
      "Wolfgang Amadeus Mozart",
      "Paul Dukas"
    ],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "¿Cuál es el quinto album de estudio de Michael Jackson?",
    "options": ["Off the Wall", "	Bad", "Music and Me", "Got to Be There"],
    "answer_index": 0,
  },
];

const List cine = [
  {
    "id": 1,
    "question":
        "¿¿Cuál fue el ganador a mejor película internacional en Cannes 2021??",
    "options": ["Druk", "Effacer l'historique", "Drive my Car", "Midsommar"],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question": "¿¿Cuál fue la primera película a color?",
    "options": [
      "Becky Sharp",
      "Mago de Oz",
      "Tiempos Modernos",
      "Flowers and Trees"
    ],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "No es tan difícil hacer dinero cuando es solo hacer dinero lo que se pretende'. ¿A qué película corresponde esta frase?",
    "options": [
      "Ciudadano Kane",
      "El Color del Dinero",
      "Lobo de Wallstreet",
      "Tarde de perros"
    ],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "¿Cómo se llama la pareja de grase",
    "options": [
      "Danny y Sandy",
      "Olivia y John",
      "Tom y Stella",
      "Stacy y Mark"
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "¿Quién dirigió Pulp Fiction?",
    "options": ["Burton", "Tarantino", "Scorcese", "Coppola"],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "¿Quién compuso la banda sonora de Tiburón?",
    "options": ["John Williams", "James Horner", "Nino Rota", "Alfred Newman"],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question":
        "¿Cuánto costó hacer el Señor de los Anillos: la Comunidad del Anillo ?",
    "options": ["103 M", "67 M", "90 M", "93 M"],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "¿Cómo se llama el protagonista de Casablanca?",
    "options": [
      "Strasser Luftwaffe",
      "Sam Wilson",
      "Rick Blaine",
      " Louis Renault"
    ],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "¿En qué año se estrenó Bailando con Lobos?",
    "options": ["1992", "1985", "1990", "1976"],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "¿Cuál de estas películas no dirige Frank Darabont?",
    "options": [
      "	The Shawshank Redemption",
      "The Green Mile",
      "The Majestic",
      "Black and White"
    ],
    "answer_index": 3,
  },
];

const List ciencia = [
  {
    "id": 1,
    "question": "¿Cuántas líneas horizontales tiene un pentragama?",
    "options": ["10", "8", "50", "5"],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "¿Qué caracteriza el pianíssimo?",
    "options": [
      "Baja intensidad",
      "Calidad y material",
      "Caos",
      "Ternura y suavidad"
    ],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "¿Que género interpreta Chick Corea?",
    "options": ["Mambo", "Jazz bebop", "Jazz moderno", "Tango"],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "¿En cual de éstas canciones partició Luny Tunes?",
    "options": [
      "Mírame-Daddy Yankee & Deevani",
      "Caramelo-Ozuna",
      "Taki taki-Dj Snake",
      "Dile- Don Omar"
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "¿Cuál de estos es un subgénero del metal?",
    "options": ["Car", "Doom", "Vomit", "Steel"],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "¿Quién de estos no ha ganado un Polar?",
    "options": ["Eric Ericson", "Sting", "Yo Yo Ma", "Yes"],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "¿En que país nació Ludwig van Beethoven?",
    "options": ["Austria", "Rusia", "Alemania", "Inglaterra"],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "¿Qué es tempo en una pieza musical?",
    "options": ["Intensidad", "Velocidad", "Recursividad", "Armonía"],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "¿Cuál de estos compositores pertenece al romanticismo?",
    "options": [
      "Alban Berg",
      "Joseph Haydn",
      "Wolfgang Amadeus Mozart",
      "Paul Dukas"
    ],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "¿Cuál es el quinto album de estudio de Michael Jackson?",
    "options": ["Off the Wall", "	Bad", "Music and Me", "Got to Be There"],
    "answer_index": 0,
  },
];

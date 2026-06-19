Al enviar una petición POST a la dirección http://localhost:3000/registro con el JSON de María, el servidor procesa la información gracias al middleware express.json() y extrae los datos usando req.body.

Como respuesta exitosa, el servidor devuelve un objeto JSON con un estado de confirmación y los mismos datos que le enviamos, viéndose exactamente así:

{
  "estado": "Datos recibidos",
  "nombre": "Maria",
  "mensaje": "Hola comunidad"
}


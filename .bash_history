bash
git commit -m "semana 6 "
git push
pkd update
pkg update
bash
pkg upgrade
bash 
cd semana7
ls
touch preguntas semana7
rm preguntas semana7
touch preguntas-semana7.txt
touch server.js prueba-reportes.txt ejemplos-reportes.txt reflexion-semana7.txt
ls
echo -e "Pregunta 1:\nRespuesta: B. Una estructura que permite almacenar varios datos en una lista\n\nPregunta 2:\nRespuesta: B. GET\n\nPregunta 3:\nRespuesta: B. POST\n\nPregunta 4:\nRespuesta: B. Permitir que diferentes sistemas o aplicaciones intercambien información" > preguntas-semana7.txt
echo -e "Explicación de la consulta GET /reportes:\n\nAl realizar una petición GET a la ruta http://localhost:3000/reportes después de haber enviado los datos por POST, el servidor responde con un arreglo (array) en formato JSON que contiene todos los reportes almacenados temporalmente en la memoria del servidor.\n\nSi ya se registró el primer reporte, la respuesta se ve así:\n[\n  {\n    \"id\": 1,\n    \"tipo\": \"Infraestructura\",\n    \"descripcion\": \"Daño en alumbrado público\"\n  }\n]" > prueba-reportes.txt
echo -e "Ejemplo 1:\n{\n  \"tipo\": \"Infraestructura\",\n  \"descripcion\": \"Daño en alumbrado público\"\n}\n\nEjemplo 2:\n{\n  \"tipo\": \"Ambiente\",\n  \"descripcion\": \"Acumulación de residuos en una zona comunitaria\"\n}" > ejemplos-reportes.txt
echo "La implementación de plataformas tecnológicas para el registro y consulta de reportes comunitarios es fundamental porque democratiza el acceso a la información y agiliza los canales de comunicación entre los ciudadanos y las autoridades locales. Al digitalizar estos procesos, se elimina la burocracia del papeleo tradicional, permitiendo que cualquier incidencia, como un daño de infraestructura o un problema ambiental, sea reportada en tiempo real. Esto genera un historial transparente y visible para toda la comunidad, lo que evita reportes duplicados y fomenta la participación ciudadana activa. Además, la centralización de datos facilita que las entidades responsables organicen y prioricen las soluciones basándose en estadísticas reales. En última instancia, estas herramientas mejoran la calidad de vida en los barrios, haciendo que la gestión gubernamental sea más eficiente, auditable y cercana a las necesidades reales de la población." > reflexion-semana7.txt
cat << 'EOF' > server.js
const express = require('express');
const app = express();

app.use(express.json());

let reportes = [];

app.get('/reportes', (req, res) => {
  res.json(reportes);
});

app.post('/reportes', (req, res) => {
  const reporte = {
    id: reportes.length + 1,
    tipo: req.body.tipo,
    descripcion: req.body.descripcion
  };

  reportes.push(reporte);

  res.json({
    mensaje: "Reporte registrado",
    reporte: reporte
  });
});

app.listen(3000, () => {
  console.log('Servidor ejecutándose en puerto 3000');
});
EOF

cat preguntas-semana7.txt
cd ..
git status
rm -rf semana7
git clone URL_DE_TU_REPOSITORIO
cd NOMBRE_DE_TU_REPOSITORIO
git init
mkdir semana7
cd semana7
echo -e "Pregunta 1:\nRespuesta: B. Una estructura que permite almacenar varios datos en una lista\n\nPregunta 2:\nRespuesta: B. GET\n\nPregunta 3:\nRespuesta: B. POST\n\nPregunta 4:\nRespuesta: B. Permitir que diferentes sistemas o aplicaciones intercambien información" > preguntas-semana7.txt
echo -e "Explicación de la consulta GET /reportes:\n\nAl realizar una petición GET a la ruta http://localhost:3000/reportes después de haber enviado los datos por POST, el servidor responde con un arreglo (array) en formato JSON que contiene todos los reportes almacenados temporalmente en la memoria del servidor.\n\nSi ya se registró el primer reporte, la respuesta se ve así:\n[\n  {\n    \"id\": 1,\n    \"tipo\": \"Infraestructura\",\n    \"descripcion\": \"Daño en alumbrado público\"\n  }\n]" > prueba-reportes.txt
echo -e "Ejemplo 1:\n{\n  \"tipo\": \"Infraestructura\",\n  \"descripcion\": \"Daño en alumbrado público\"\n}\n\nEjemplo 2:\n{\n  \"tipo\": \"Ambiente\",\n  \"descripcion\": \"Acumulación de residuos en una zona comunitaria\"\n}" > ejemplos-reportes.txt
echo "La implementación de plataformas tecnológicas para el registro y consulta de reportes comunitarios es fundamental porque democratiza el acceso a la información y agiliza los canales de comunicación entre los ciudadanos y las autoridades locales. Al digitalizar estos procesos, se elimina la burocracia del papeleo tradicional, permitiendo que cualquier incidencia, como un daño de infraestructura o un problema ambiental, sea reportada en tiempo real. Esto genera un historial transparente y visible para toda la comunidad, lo que evita reportes duplicados y fomenta la participación ciudadana activa. Además, la centralización de datos facilita que las entidades responsables organicen y prioricen las soluciones basándose en estadísticas reales. En última instancia, estas herramientas mejoran la calidad de vida en los barrios, haciendo que la gestión gubernamental sea más eficiente, auditable y cercana a las necesidades reales de la población." > reflexion-semana7.txt
cat << 'EOF' > server.js
const express = require('express');
const app = express();
app.use(express.json());
let reportes = [];
app.get('/reportes', (req, res) => { res.json(reportes); });
app.post('/reportes', (req, res) => {
  const reporte = { id: reportes.length + 1, tipo: req.body.tipo, descripcion: req.body.descripcion };
  reportes.push(reporte);
  res.json({ mensaje: "Reporte registrado", reporte: reporte });
});
app.listen(3000, () => { console.log('Servidor ejecutándose en puerto 3000'); });
EOF

cd ..
git add .
git commit -m "Actividad semana 7"
git remote add origin https://github.com/karolsantibanez345-prog/Programadores-para-la-paz-Karol-.git
git push -u origin main
git push -u origin master
git config --global --unset credential.helper
git push -u origin master

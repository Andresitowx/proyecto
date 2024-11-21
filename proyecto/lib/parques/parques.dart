import 'package:flutter/material.dart';
import 'package:proyecto/parques/parque_meraki/inicio_meraki.dart';

class Parques extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Parques',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 254, 255, 255),
                const Color.fromARGB(141, 192, 192, 192)
              ], // Colores del degradado
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2, // Número de cuadros por fila
              crossAxisSpacing: 10, // Espacio entre columnas
              mainAxisSpacing: 10, // Espacio entre filas
              childAspectRatio:
                  0.8, // Relación ancho/alto para evitar distorsión
              children: [
                buildGridItemWithDescription(
                  context,
                  'Parque Meraki',
                  'El Parque Meraki es un lugar encantador donde puedes relajarte y disfrutar de la naturaleza, restaurante y una atracción. Ideal para compartir tiempo en familia con una caminata tranquila.',
                ),
                buildGridItem(context, 'assets/img/parquem.jpeg',
                    HomePagemeraki()), // Segundo cuadro
                buildGridItem(context, 'assets/img/jardin.jpg',
                    Pagina3()), // Tercer cuadro
                buildGridItemWithDescription(
                  context,
                  'Jardín Botánico',
                  'El jardín botánico es un lugar ideal para conectar con la naturaleza, relajarse y disfrutar de buenos momentos. Perfecto para una visita con amigos o familiares.',
                ),
              ],
            ),
          ),
        ));
  }

  // Cuadro del parque con descripción (sin imagen de fondo)
  Widget buildGridItemWithDescription(
      BuildContext context, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Fondo sólido para cuadros con texto
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey), // Borde opcional
      ),
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                description,
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Cuadro básico que redirige a una página (con imagen de fondo)
  Widget buildGridItem(BuildContext context, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath), // Imagen de fondo
            fit: BoxFit.cover, // Ajuste de la imagen
          ),
        ),
      ),
    );
  }
}

// Páginas de ejemplo
class PaginaJardinBotanico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jardín Botánico')),
      body: Center(child: Text('Contenido del Jardín Botánico')),
    );
  }
}

class Pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 3')),
      body: Center(child: Text('Contenido de la Página 3')),
    );
  }
}

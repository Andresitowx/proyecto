import 'package:flutter/material.dart';

class Miradores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Miradores',
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
              const Color.fromARGB(255, 192, 192, 192)
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
            childAspectRatio: 0.8, // Relación ancho/alto para evitar distorsión
            children: [
              buildGridItemWithDescription(
                context,
                'Mirador Tesorito',
                'Este es el mirador 1. Aquí puedes disfrutar de vistas panorámicas espectaculares. Este mirador cuenta con una grandiosa vista de Ibagué, Tolima. Tenemos más de un sitio instagrameable, al igual contamos con servicio de restaurante. Puedes venir a disfrutar de nuestras grandiosas vistas y compartir en familia.',
              ),
              buildGridItem(
                  context, 'assets/img/img1.jpeg', Pagina2()), // Segundo cuadro
              buildGridItem(
                  context, 'assets/img/img10.jpeg', Pagina3()), // Tercer cuadro
              buildGridItemWithDescription(
                context,
                'Paraíso Escondido',
                'Este mirador se encuentra ubicado en Calambeo. Contamos con diferentes hospedajes estructurados según la necesidad y el número de personas solicitadas. Disfruta de unas maravillosas vistas y desconéctate de la ciudad.',
              ),
              buildGridItemWithDescription(
                context,
                'Atóctonos',
                'Este es el mirador 3. Aquí puedes disfrutar de vistas panorámicas espectaculares. Este mirador cuenta con una grandiosa vista de Ibagué, Tolima.',
              ),
              buildGridItem(
                  context, 'assets/img/img4.jpeg', Pagina1()), // Otro cuadro
            ],
          ),
        ),
      ),
    );
  }

  // Cuadro del mirador con descripción (sin imagen de fondo)
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
class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 1')),
      body: Center(child: Text('Contenido de la Página 1')),
    );
  }
}

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página 2')),
      body: Center(child: Text('Contenido de la Página 2')),
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

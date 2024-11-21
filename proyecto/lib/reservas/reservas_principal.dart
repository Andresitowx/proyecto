import 'package:flutter/material.dart';
import 'package:proyecto/reservas/reservas_autoctonos/reserva_autoctonos.dart';
import 'package:proyecto/reservas/reservas_paraiso_escondido/reservas_paraiso.dart';

class ReservasPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Reservas',
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
              children: [
                buildGridItem(context, 'assets/img/img10.jpeg',
                    'reserva autoctonos', ReservaAutoctonos()),
                buildGridItem(context, 'assets/img/paraiso.jpg',
                    'paraiso escondido', ReservasParaiso()),
              ],
            ),
          ),
        ));
  }

  Widget buildGridItem(
      BuildContext context, String imagePath, String text, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navega a la otra página cuando se hace clic en la imagen
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Bordes redondeados
              image: DecorationImage(
                image: AssetImage(imagePath), // Imagen de fondo
                fit: BoxFit.cover, // Ajuste de la imagen
              ),
            ),
          ),
          // Texto superpuesto
          Positioned(
            bottom: 10, // Posición desde la parte inferior
            left: 10, // Posición desde la parte izquierda
            right: 10, // Extender el texto a ambos lados
            child: Container(
              color: Colors.black.withOpacity(0.5), // Fondo semitransparente
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyecto/carousel.dart';
import 'package:proyecto/menu/drawe.dart';
import 'package:proyecto/menu/menu.dart';
import 'package:proyecto/menu/perfil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Página Principal',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ), // Icono del botón
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Perfil()),
              );
            },
          ),
          SizedBox(width: 26),
          Padding(
            padding: const EdgeInsets.only(), // Ajusta el padding izquierdo
            child: Menu(),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Fondo con el carrusel
          Positioned.fill(
            child: Carousel(), // El widget de tu carrusel
          ),
          // Contenido superpuesto al carrusel
        ],
      ),
      endDrawer: DraweMenu(),
    );
  }
}

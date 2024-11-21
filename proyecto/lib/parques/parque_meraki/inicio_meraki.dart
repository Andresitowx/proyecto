import 'package:flutter/material.dart';
import 'package:proyecto/parques/parque_meraki/Feature_Text.dart';
import 'package:proyecto/parques/parque_meraki/Welcome_Text.dart';
import 'package:proyecto/parques/parque_meraki/image_gallery.dart';
import 'dart:ui';

import 'package:proyecto/parques/parque_meraki/menu_drawer.dart';

class HomePagemeraki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '¡Bienvenido a MERAKI!',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: MenuDrawer(),
      body: Stack(
        children: [
          // Fondo con desenfoque y overlay
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/img2/img3.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          // Contenido principal
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeText(),
                  SizedBox(height: 20),
                  Text(
                    'Con Explora Calambeo, podrás:',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent,
                    ),
                  ),
                  SizedBox(height: 10),
                  FeatureText(
                      text:
                          'Explorar Atracciones Naturales: Descubre el Parque Natural de Calambeo, donde la naturaleza se encuentra en su máxima expresión.'),
                  FeatureText(
                      text:
                          'Vivir la Cultura Local: Conoce la historia y tradiciones de la región.'),
                  FeatureText(
                      text:
                          'Disfrutar de la Gastronomía: Saborea los platillos típicos de la zona.'),
                  FeatureText(
                      text:
                          'Actividades para Todos: Ya seas un aventurero en busca de adrenalina o prefieras la tranquilidad de un paseo. Ofrecemos para su esparcimiento bicicletas aéreas, senderos, mirador, experiencia cafetera, restaurante, agroturismo y además somos pet-friendly.'),
                  SizedBox(height: 20),
                  Text(
                    'Días de Apertura:',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.tealAccent,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sábado: 10 a.m. - 6 p.m.',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Domingo: 9 a.m. - 4:30 p.m.',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Lunes: Cerrado',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Martes: Cerrado',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Miércoles: 10 a.m. - 4:30 p.m.',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Jueves: 10 a.m. - 4 p.m.',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      Text(
                        'Viernes: 9 a.m. - 4 p.m.',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ImageGallery(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

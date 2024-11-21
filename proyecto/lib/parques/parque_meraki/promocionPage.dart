import 'dart:ui';

import 'package:flutter/material.dart';

class PromotionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promociones Especiales',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        iconTheme:
            IconThemeData(color: const Color.fromARGB(255, 192, 191, 191)),
      ),
      body: Stack(
        children: [
          // Fondo con imagen de fondo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/parque_fondo.jpg'), // Cambia por tu imagen
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          // Contenido principal
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                _buildPromotionCard(
                  'Descuento',
                  '¡Proximamente',
                  '...',
                  Icons.money_off_csred_outlined,
                  Colors.orangeAccent,
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget mejorado para construir las tarjetas de promoción
  Widget _buildPromotionCard(String title, String description, String validity,
      IconData icon, Color color) {
    return Card(
      color: Colors.white.withOpacity(0.85),
      shadowColor: Colors.black54,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Icono decorativo en la izquierda
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(icon, color: Colors.white, size: 30),
            ),
            SizedBox(width: 16),
            // Información de la promoción
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Text(
                    validity,
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

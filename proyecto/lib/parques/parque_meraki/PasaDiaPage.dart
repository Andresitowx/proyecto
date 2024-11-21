import 'package:flutter/material.dart';
import 'dart:ui';

class MoreInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Más Información',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        iconTheme:
            IconThemeData(color: Colors.white), // Iconos del menú en blanco
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent.withOpacity(0.8),
                  Colors.blue.withOpacity(0.6),
                  Colors.teal.withOpacity(0.4),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Aplicar el filtro de desenfoque
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.5), // Color semitransparente
              ),
            ),
          ),
          // Contenido de la página
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenido a Parque Meraki',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.7),
                          offset: Offset(2, 2),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'En Parque Meraki, ofrecemos una experiencia única para toda la familia. Ven y disfruta de nuestras atracciones...',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'EL PASADIA INCLUYE:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(1, 1),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // Uso de tarjetas para las características
                  _buildFeatureItem(Icons.local_parking,
                      '- Parqueadero para su vehículo cómodo y seguro'),
                  _buildFeatureItem(Icons.check_circle, '- Ingreso al Parque'),
                  _buildFeatureItem(Icons.nature_people,
                      '- Recorrido por sendero guiado donde conocerá sobre el cultivo de chocolate y el café'),
                  _buildFeatureItem(
                      Icons.view_in_ar, '- Visita a los Miradores panorámicos'),
                  _buildFeatureItem(Icons.local_cafe,
                      '- Una taza de café Meraki como bienvenida'),
                  _buildFeatureItem(Icons.restaurant,
                      '- Almuerzo (Sancochó, Cerdo, Pechuga, Alitas a la BBQ)'),
                  _buildFeatureItem(
                      Icons.directions_bike, '- Bici Paseo Aéreo'),
                  _buildFeatureItem(
                      Icons.breakfast_dining, '- Zona de Hamacas'),
                  _buildFeatureItem(
                      Icons.security, '- Seguro para la actividad de turismo'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Función para construir los textos de la lista con íconos y efecto de tarjeta
  Widget _buildFeatureItem(IconData icon, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 6, // Sombra de la tarjeta
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Esquinas redondeadas
      ),
      color: Colors.white.withOpacity(0.2), // Fondo semitransparente
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 24),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

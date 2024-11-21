import 'package:flutter/material.dart';

class Cuidados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Cuidados al Visitar',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Regresa a la página anterior
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFFFFFFF), // Blanco
              const Color(0xFFC0C0C0), // Gris
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título
              Text(
                'Cuidados al Visitar los Corredores de Calambeo y Ambalá',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Lista de cuidados
              Expanded(
                child: ListView(
                  children: [
                    _buildItem('Respeta la flora y fauna del lugar.'),
                    _buildItem(
                        'No arrojes basura, utiliza los puntos de recolección.'),
                    _buildItem(
                        'Lleva calzado cómodo y adecuado para terrenos irregulares.'),
                    _buildItem(
                        'Mantén el volumen bajo si llevas dispositivos de sonido.'),
                    _buildItem(
                        'Evita encender fogatas o cualquier actividad que pueda causar incendios.'),
                    _buildItem(
                        'Sigue los senderos marcados para proteger el entorno.'),
                    _buildItem(
                        'Hidrátate adecuadamente y lleva tu propia botella de agua.'),
                    _buildItem(
                        'No alimentes a los animales silvestres, puede ser perjudicial para ellos.'),
                    _buildItem(
                        'Lleva protector solar y ropa adecuada para protegerte del clima.'),
                    _buildItem(
                        'Infórmate sobre las normas específicas de los corredores antes de visitarlos.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método auxiliar para construir ítems de la lista
  Widget _buildItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

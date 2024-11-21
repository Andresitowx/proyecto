import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: Text(
        'Aquí podrás encontrar la mejor información sobre turismo, destinos naturales, y mucho más. Explora nuestras secciones para descubrir nuevas experiencias de viaje que te esperan en el Corredor de Calambeo y otras regiones turísticas de Colombia.',
        style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
      ),
    );
  }
}

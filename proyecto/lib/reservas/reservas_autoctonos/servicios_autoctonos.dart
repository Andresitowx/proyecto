// Segunda página: Servicios incluidos
import 'package:flutter/material.dart';
import 'package:proyecto/reservas/reservas_autoctonos/formulario_autoctonos.dart';

class ServiciosAutoctonos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Servicios incluidos'),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Estos son los servicios incluidos con tu reserva:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                buildServiceItem('decoracion incluida', Icons.wifi),
                buildServiceItem(
                    'platillos de su preferencia', Icons.breakfast_dining),
                buildServiceItem(
                    'apartan sus paltillos favoritoa', Icons.breakfast_dining),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormularioAutoctonos()),
                      );
                    },
                    child: Text('Continuar'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  // Función para crear un elemento de servicio con ícono
  Widget buildServiceItem(String serviceName, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 10),
          Text(serviceName, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

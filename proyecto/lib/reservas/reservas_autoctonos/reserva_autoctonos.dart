import 'package:flutter/material.dart';
import 'package:proyecto/reservas/reservas_autoctonos/servicios_autoctonos.dart';

// Página principal de lista de alojamientos
class ReservaAutoctonos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'servicios',
            style: TextStyle(color: Colors.white),
          ),
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
          child: Row(
            children: [
              // Primera columna: Lista de alojamientos
              Expanded(
                flex: 1,
                child: ListView(
                  children: [
                    buildAccommodationCard(
                      context,
                      'reserva a cumpleaños ',
                      'decoracion incluida',
                      '100.000',
                    ),
                    buildAccommodationCard(
                      context,
                      'reserva de mesa',
                      '',
                      '20.000',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  // Función para crear la tarjeta de la lista de alojamientos
  Widget buildAccommodationCard(
      BuildContext context, String name, String distance, String price,
      {String? discount}) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.hotel),
        title: Text('$name'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(distance),
            if (discount != null)
              Text('Ha bajado el precio a última hora: $discount',
                  style: TextStyle(color: Colors.green)),
          ],
        ),
        trailing: Text(price),
        onTap: () {
          // Al hacer click, redirige a la segunda página (Servicios incluidos)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ServiciosAutoctonos()),
          );
        },
      ),
    );
  }
}

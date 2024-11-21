// Segunda página: Servicios incluidos
import 'package:flutter/material.dart';
import 'package:proyecto/reservas/reservas_paraiso_escondido/formulario_paraiso.dart';

class ServiciosParaiso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Servicios incluidos',
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
                buildServiceItem('hospedaje 1 dia', Icons.rule_rounded),
                buildServiceItem('cama queen', Icons.bed),
                buildServiceItem(
                    'cabina', Icons.settings_input_component_sharp),
                buildServiceItem('hamaca', Icons.insert_emoticon_sharp),
                buildServiceItem('juegos de mesa', Icons.games),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormularioParaiso()),
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

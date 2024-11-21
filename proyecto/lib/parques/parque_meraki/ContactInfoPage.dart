import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfoPage extends StatelessWidget {
  // Enlace de la dirección
  final String locationUrl = 'https://maps.app.goo.gl/VZEfusmBWYpZB7mD8';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacto e Información',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          // Fondo de imagen decorativo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img3.jpeg'), // Agrega tu imagen aquí
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildContactCard(Icons.phone, 'Teléfono', '318 7156890'),
                SizedBox(height: 16),
                _buildContactCardWithLink(
                  Icons.location_on,
                  'Dirección',
                  'Vda. Bellavista, Ibagué, Tolima',
                  locationUrl,
                ),
                SizedBox(height: 16),
                _buildReservationCard(), // Agrega la tarjeta de reservas
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget decorativo para cada tarjeta de contacto
  Widget _buildContactCard(IconData icon, String title, String info) {
    return Card(
      color: Colors.white.withOpacity(0.85),
      shadowColor: Colors.black54,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 30),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          info,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }

  // Widget decorativo para tarjeta con enlace a la ubicación
  Widget _buildContactCardWithLink(
      IconData icon, String title, String info, String url) {
    return Card(
      color: Colors.white.withOpacity(0.85),
      shadowColor: Colors.black54,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 30),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: GestureDetector(
          onTap: () => _launchURL(url), // Abrir el enlace
          child: Text(
            info,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue, // Color azul para indicar que es un enlace
              decoration: TextDecoration.underline, // Subrayado para enlace
            ),
          ),
        ),
      ),
    );
  }

  // Widget decorativo para tarjeta de reservas
  Widget _buildReservationCard() {
    return Card(
      color: Colors.white.withOpacity(0.85),
      shadowColor: Colors.black54,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(Icons.calendar_today, color: Colors.teal, size: 30),
        title: Text(
          'Reservas',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          'Haz clic para realizar una reserva.',
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            _launchURL(
                'https://api.whatsapp.com/message/OA2ZL6OCCFCAL1?autoload=1&app_absent=0'); // Reemplaza con el enlace de reservas
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text('Reservar'),
        ),
      ),
    );
  }

  // Método para abrir la URL en el navegador
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace: $url';
    }
  }
}

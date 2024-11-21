import 'package:flutter/material.dart';
import 'package:proyecto/parques/parque_meraki/ContactInfoPage.dart';
import 'package:proyecto/parques/parque_meraki/PasaDiaPage.dart';
import 'package:proyecto/parques/parque_meraki/Product_prices_page.dart';
import 'package:proyecto/parques/parque_meraki/comentario/pag_meraki.dart';
import 'package:proyecto/parques/parque_meraki/promocionPage.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // Header del Drawer con el logo
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: [
                // Logo en forma de círculo
                CircleAvatar(
                  radius: 30, // Tamaño del logo
                  backgroundImage: AssetImage(
                      'assets/img/img2/logo.jpeg'), // Ruta de la imagen
                ),
                SizedBox(width: 10), // Espaciado entre el logo y el texto
                // Título
                Text(
                  'Explora Calambeo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Menú de comidas
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Menú de Comidas'),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductPricesPage()),
              );
            },
          ),
          // Información de Pasa Día
          ListTile(
            leading: Icon(Icons.info),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Info Pasa Día'),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoreInfoPage()),
              );
            },
          ),
          // Promociones
          ListTile(
            leading: Icon(Icons.local_offer),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Promociones'),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PromotionsPage()),
              );
            },
          ),
          // Contacto e Información
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Contacto e Información'),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactInfoPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('reseñas'),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => comentarios()),
              );
            },
          ),
        ],
      ),
    );
  }
}

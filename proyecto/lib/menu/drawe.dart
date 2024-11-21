import 'package:flutter/material.dart';
import 'package:proyecto/contacto.dart';
import 'package:proyecto/miradores/miradores.dart';
import 'package:proyecto/parques/parques.dart';
import 'package:proyecto/reservas/cuidados_sendero.dart';

import 'package:proyecto/reservas/reservas_principal.dart';

class DraweMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: 500, // Ancho del menú
        color: Colors.white, // Color de fondo blanco
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  'Menú ',
                  style: TextStyle(
                      color: Colors.black, fontSize: 24), // Texto en negro
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white, // Color del header blanco
              ),
            ),

            // ExpansionTile para Página 1 y su submenú
            ExpansionTile(
              title: Text('lugares',
                  style: TextStyle(color: Colors.black)), // Texto en negro
              children: <Widget>[
                ListTile(
                  title: Text('Miradores ',
                      style: TextStyle(color: Colors.black)), // Texto en negro
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Miradores()), // Navega a la Página 3
                    );
                  },
                ),
                ListTile(
                  title: Text(' Parques',
                      style: TextStyle(color: Colors.black)), // Texto en negro
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Parques()), // Navega a la Página 4
                    );
                  },
                ),
              ],
            ),

            // ListTile para Página 2
            ListTile(
              title: Text('reservas',
                  style: TextStyle(color: Colors.black)), // Texto en negro
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ReservasPrincipal()), // Navega a la Página 2
                );
              },
            ),

            ListTile(
              title: Text('cuidados ',
                  style: TextStyle(color: Colors.black)), // Texto en negro
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cuidados()), // Navega a la Página 2
                );
              },
            ),

            ListTile(
              title: Text('Contatos de transporte',
                  style: TextStyle(color: Colors.black)), // Texto en negro
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contacto()), // Navega a la Página 2
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

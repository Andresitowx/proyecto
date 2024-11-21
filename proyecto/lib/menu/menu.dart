import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, color: Colors.white), // Icono para abrir el menú
      onPressed: () {
        // Abre el menú lateral
        Scaffold.of(context).openEndDrawer();
      },
    );
  }
}

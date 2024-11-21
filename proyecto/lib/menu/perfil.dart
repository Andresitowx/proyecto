import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen de perfil
              CircleAvatar(
                radius: 60,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(height: 20),

              // Nombre de usuario
              Text(
                'Nombre del Usuario',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Descripción breve
              Text(
                'Descripción breve sobre el usuario. Puedes agregar información relevante aquí.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),

              // Información adicional
              Divider(),
              ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text('Correo Electrónico'),
                subtitle: Text('usuario@ejemplo.com'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.black),
                title: Text('Teléfono'),
                subtitle: Text('+123 456 7890'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Dirección'),
                subtitle: Text('Calle Falsa 123, Ciudad, País'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.black),
                title: Text('Fecha de Nacimiento'),
                subtitle: Text('01/01/2000'),
              ),
              Divider(),

              // Botón de editar perfil
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Acción para editar el perfil
                },
                icon: Icon(Icons.edit),
                label: Text('Editar Perfil'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

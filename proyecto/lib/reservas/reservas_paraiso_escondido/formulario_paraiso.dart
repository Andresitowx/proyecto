import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class FormularioParaiso extends StatefulWidget {
  const FormularioParaiso({super.key});

  @override
  State<FormularioParaiso> createState() => _FormularioParaisoState();
}

class _FormularioParaisoState extends State<FormularioParaiso> {
  final TextEditingController _entradaController = TextEditingController();
  final TextEditingController _salidaController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _habitacionController = TextEditingController();
  final TextEditingController _adultosController = TextEditingController();
  final TextEditingController _ninosController = TextEditingController();

  // Función para mostrar el calendario
  Future<void> _seleccionarFecha(
      BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  // Función para enviar el correo
  Future<void> _enviarCorreo() async {
    final String asunto = "Reserva desde la app";
    final String cuerpo = """
Datos personales:
- Nombre: ${_nombreController.text}
- Apellido: ${_apellidoController.text}
- Teléfono: ${_telefonoController.text}

Reserva realizada:
- Fecha de entrada: ${_entradaController.text}
- Fecha de salida: ${_salidaController.text}
- Habitaciones: ${_habitacionController.text}
- Adultos: ${_adultosController.text}
- Niños: ${_ninosController.text}
""";
    final String url = Uri.encodeFull(
        "mailto:reservas@ejemplo.com?subject=$asunto&body=$cuerpo");

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No se pudo abrir el cliente de correo')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Reservar',
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
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Campos de datos personales
                  TextField(
                    controller: _nombreController,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _apellidoController,
                    decoration: InputDecoration(
                      labelText: 'Apellido',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _telefonoController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Teléfono',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Campos de entrada y salida
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _entradaController,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Entrada',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.calendar_today),
                              onPressed: () => _seleccionarFecha(
                                  context, _entradaController),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _salidaController,
                          readOnly: true,
                          decoration: InputDecoration(
                            labelText: 'Salida',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.calendar_today),
                              onPressed: () =>
                                  _seleccionarFecha(context, _salidaController),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Campos de habitación, adultos y niños
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _habitacionController,
                          decoration: InputDecoration(
                            labelText: 'Habitación',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _adultosController,
                          decoration: InputDecoration(
                            labelText: 'Adultos',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _ninosController,
                          decoration: InputDecoration(
                            labelText: 'Niños',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Botón de búsqueda
                  Center(
                    child: ElevatedButton(
                      onPressed: _enviarCorreo,
                      child: Text('Reservar'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

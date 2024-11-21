import 'package:flutter/material.dart';

class ProductPricesPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/img/img2/img9.jpeg',
    'assets/img/img2/img10.jpeg',
    'assets/img/img2/img11.jpeg',
    'assets/img/img2/img12.jpeg',
    'assets/img/img2/img13.jpeg',
    'assets/img/img2/img14.jpeg',
    'assets/img/img2/img15.jpeg',
    'assets/img/img2/img16.jpeg',
    'assets/img/img2/img17.jpeg',
    'assets/img/img2/img18.jpeg',
    'assets/img/img2/img19.jpeg',
    'assets/img/img2/img20.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menú de Comidas',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent.withOpacity(0.9),
              Colors.orange.withOpacity(0.7),
              Colors.deepOrange.withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de columnas
            crossAxisSpacing: 10, // Espacio horizontal entre imágenes
            mainAxisSpacing: 10, // Espacio vertical entre imágenes
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return _buildGridItem(imagePaths[index]);
          },
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

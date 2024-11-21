import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/img/img2/cielo.jpeg',
    'assets/img/img2/img2.jpeg',
    'assets/img/img2/img4.jpeg',
    'assets/img/img2/img5.jpeg',
    'assets/img/img2/img6.jpeg',
    'assets/img/img2/img21.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 600
            ? 3
            : 2, // Ajusta columnas en pantallas grandes
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return _buildGridItem(imagePaths[index]);
      },
    );
  }

  Widget _buildGridItem(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Overlay sutil
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          // Sombra en la imagen para resaltar el borde
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              elevation: 5,
              shadowColor: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

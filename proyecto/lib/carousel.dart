import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> imgList = [
    'assets/img/img3.jpeg',
    'assets/img/img9.jpeg',
    'assets/img/img11.jpeg',
    'assets/img/img14.jpeg',
    'assets/img/img4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Carrusel como fondo
          Container(
            width: double.infinity,
            height: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                autoPlay: true,
                enlargeCenterPage: false,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
              ),
              items: imgList
                  .map((item) => Container(
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ))
                  .toList(),
            ),
          ),
          // Contenido superpuesto
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¡Bienvenidos!',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Calambeo y Ambalá',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    shadows: [
                      Shadow(
                        blurRadius: 8.0,
                        color: Colors.black45,
                        offset: Offset(0.0, 2.0),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
